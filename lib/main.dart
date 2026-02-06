import 'package:flutter/material.dart';
import 'package:subject/welcome.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'forth.dart';

void main() {
  runApp(const GPAApp());
}

class GPAApp extends StatelessWidget {
  const GPAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, fontFamily: 'Poppins'),
      home: const WelcomeScreen(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F8),
      body: Column(
        children: [
          // 1. Top Decorative Header with Custom Shape
          Stack(
            children: [
              ClipPath(
                clipper: HeaderClipper(),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF0D47A1), Color(0xFF1976D2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.school_rounded,
                        color: Colors.white,
                        size: 45,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Welcome back,",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                      const Text(
                        "ICT Student",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Header "Quick Stat" card
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Target GPA: 3.70+",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // 2. Selection Title
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: Text(
              "Select Academic Year",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Color(0xFF263238),
              ),
            ),
          ),

          // 3. Grid of Year Buttons
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _buildYearCard(
                    context,
                    "1st Year",
                    Icons.looks_one,
                    const Color(0xFF5C6BC0),
                    const FirstApp(),
                  ),
                  _buildYearCard(
                    context,
                    "2nd Year",
                    Icons.looks_two,
                    const Color(0xFF42A5F5),
                    const SecondApp(),
                  ),
                  _buildYearCard(
                    context,
                    "3rd Year",
                    Icons.looks_3,
                    const Color(0xFF26A69A),
                    const ThirdApp(),
                  ),
                  _buildYearCard(
                    context,
                    "4th Year",
                    Icons.looks_4,
                    const Color(0xFF66BB6A),
                    const ForthApp(),
                  ),
                ],
              ),
            ),
          ),

          // 4. Footer
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "v1.0.0 • Developed for SEUSL ICT",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYearCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    Widget page,
  ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
        borderRadius: BorderRadius.circular(25),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 35),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF37474F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
