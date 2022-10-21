import 'package:emergency/fire.dart';
import 'package:emergency/hospital.dart';
import 'package:emergency/police.dart';
import 'package:emergency/soldier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMERGENCY CALL',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hi Saiku',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 135,
                    child: Icon(
                      Icons.bar_chart_rounded,
                      size: 28,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(height: 32),
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        scale: 2.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        'EMERGENCY CALL',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 48),
                    const Text(
                      'SERVICE',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardMenu(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PolicePage(),
                                ),
                              );
                            },
                            title: 'POLICE',
                            icon: 'assets/police.png'),
                        CardMenu(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HospitalPage(),
                                ),
                              );
                            },
                            title: 'DOCTOR',
                            icon: 'assets/doctor.png'),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardMenu(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FirePage(),
                                ),
                              );
                            },
                            title: 'FIREFIGHTER',
                            icon: 'assets/fire.png'),
                        CardMenu(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SoldierPage(),
                                ),
                              );
                            },
                            title: 'SOLDIER',
                            icon: 'assets/solder.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CardMenu({
    required String title,
    required String icon,
    VoidCallback? onTap,
    Color color = Colors.white,
    Color frontcolor = Colors.grey,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40),
        width: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
        child: Column(
          children: [
            Image.asset(icon),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: frontcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
