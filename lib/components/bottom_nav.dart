import 'package:careconnect/pages/book_appointment_screen.dart';
import 'package:careconnect/pages/emergency_services.dart';
import 'package:careconnect/pages/medicine_sales_screen.dart';
import 'package:careconnect/pages/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;

  PageController pageController = PageController();

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: const [
              BookAppointmentScreen(),
              EmergencyServicesScreen(),
              MedicineSalesScreen(),
              ProfileScreen(),
            ],
          ),
          Positioned(
            left: 80,
            right: 80,
            bottom: 0.1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.home,
                            size: 35,
                          ),
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.emergency,
                            size: 35,
                          ),
                        ),
                        label: 'Emergency'),
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.medical_information,
                            size: 35,
                          ),
                        ),
                        label: 'Medicines'),
                    BottomNavigationBarItem(
                        icon: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(
                            Icons.person,
                            size: 35,
                          ),
                        ),
                        label: 'Profile'),
                  ],
                  currentIndex: selectedIndex,
                  selectedItemColor: const Color(0xFF43bbbb),
                  unselectedItemColor: Colors.black,
                  onTap: onItemTapped,
                  backgroundColor:
                      Colors.white, // Change color to your desired color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
