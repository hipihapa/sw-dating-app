import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sw_dating_app/resources/resources.dart';
import 'package:sw_dating_app/screens/match_screen.dart';
import 'package:sw_dating_app/widgets/nav_bar_item.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          Image.asset(Images.bg2, fit: BoxFit.cover),
          SafeArea(
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 80.0,
                      right: 80.0,
                    ),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[300],
                      indicatorColor: Colors.white,
                      dividerColor: Colors.transparent,
                      labelStyle: const TextStyle(fontSize: 18),
                      tabs: const [
                        Tab(text: 'Matches'),
                        Tab(text: 'For You'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        MatchScreen(),
                        Center(
                          child: Text(
                            'For You',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                    onTap: () => Navigator.pushReplacementNamed(context, '/favorites'),
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
