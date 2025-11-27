import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sw_dating_app/resources/resources.dart';
import 'package:sw_dating_app/widgets/nav_bar_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final int _selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.bg2,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Center(
              child: Text(
                'Profile Screen',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.3),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBarItem(
                    index: 0,
                    selectedIndex: _selectedIndex,
                    imagePath: Images.slideShow,
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/home'),
                  ),
                  SizedBox(width: 10),
                  NavBarItem(
                    index: 1,
                    selectedIndex: _selectedIndex,
                    imagePath: Images.heart,
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/favorites'),
                  ),
                  SizedBox(width: 10),
                  NavBarItem(
                    index: 2,
                    selectedIndex: _selectedIndex,
                    imagePath: Images.chat,
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/chat'),
                  ),
                  SizedBox(width: 10),
                  NavBarItem(
                    index: 3,
                    selectedIndex: _selectedIndex,
                    imagePath: Images.user,
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/profile'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
