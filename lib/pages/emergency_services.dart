import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmergencyServicesScreen(),
    );
  }
}

class EmergencyServicesScreen extends StatelessWidget {
  const EmergencyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 8),
                Text(
                  'CareConnect',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Emergency Services',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),

              // 1st container
              Container(
                height: 120,
                width: 400,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF72cccc),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ambulance :-   112',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '+911234567890',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Text(
                      '+0125 789456',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12), // Space between containers

              // 2nd container
              Container(
                height: 120,
                width: 400,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFa1dddd),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emergency ward',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Onduty Doctor - Dr. IJK',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Text(
                      ' Dr. MNO',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // 3rd container
              Container(
                height: 120,
                width: 400,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFd0eeee),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Onduty Doctor -',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Head of Nurses:- Mr. XYD',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Text(
                      'Head of Ward Boys:- Mr. WER',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              Text(
                'Track your Ambulance',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: 360,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  // Optional: Add a border or color
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FlutterMap(
                    options: const MapOptions(
                      initialCenter: LatLng(23.0785024, 76.8606208),
                      initialZoom: 14.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: const ['a', 'b', 'c'],
                      ),
                    ],
                  ),
                ),
              )
,
            ],
          ),
        ),
      ),
    );
  }
}
