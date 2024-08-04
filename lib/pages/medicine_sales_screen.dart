import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicineSalesScreen extends StatelessWidget {
  const MedicineSalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> medicineSalesData = [
      {
        'image': 'assets/images/dolo.png',
        'name': 'DOLO - 650',
        'company': 'By MICRO LABS',
        'price': '₹25',
      },
      {
        'image': 'assets/images/cetirizine-tablet-ip.png',
        'name': 'CETRAZINE',
        'company': 'By GSK',
        'price': '₹14.70',
      },
      {
        'image': 'assets/images/telma h.png',
        'name': 'TELMA H 40',
        'company': 'By GLENMARK',
        'price': '₹18',
      },
      {
        'image': 'assets/images/iv 12.png',
        'name': 'iv 12',
        'company': 'By ALENMARK',
        'price': '₹349',
      },
      // Add more entries here
    ];

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
                'Medicine Sales',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true, // Allows ListView to occupy only as much space as needed
                physics: const NeverScrollableScrollPhysics(), // Disables scrolling for the ListView
                itemCount: medicineSalesData.length,
                itemBuilder: (context, index) {
                  final data = medicineSalesData[index];

                  // main container
                  return Container(
                    height: 170,
                    width: 400,
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFd0eeee),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black), // Black border
                    ),

                    // Medicine details
                    child: Row(
                      children: [
                        Image.asset(
                          data['image']!,
                          width: 150,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 30),

                        // medicine details column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data['name']!,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                data['company']!,
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                data['price']!,
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {
                                  // Add to cart functionality
                                },
                                child: Text(
                                  'Add to Cart',
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
