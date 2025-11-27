import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sw_dating_app/constants/profile_constants.dart';
import 'package:sw_dating_app/resources/resources.dart';
import 'package:sw_dating_app/widgets/profile_card.dart';
import 'package:sw_dating_app/widgets/nav_bar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Images.bg2, fit: BoxFit.cover),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage(Images.p2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Dating App",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 60,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withValues(alpha: 0.3),
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    weight: 1,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Swipe cards
        Positioned(
          top: 160,
          left: 20,
          right: 20,
          bottom: 260,
          child: CardSwiper(
            cardsCount: ProfileConstants.sampleProfiles.length,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) {
                  return ProfileCard(
                    profile: ProfileConstants.sampleProfiles[index],
                  );
                },
            numberOfCardsDisplayed: 3,
            backCardOffset: const Offset(0, 40),
            padding: const EdgeInsets.all(0),
            duration: const Duration(milliseconds: 300),
            maxAngle: 30,
            threshold: 50,
            scale: 0.9,
            isLoop: true,
          ),
        ),

        // swipe buttons
        Positioned(
          bottom: 140,
          left: 80,
          right: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.topRight,
                    colors: [Colors.blue.shade400, Colors.blue.shade800],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 20),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.topRight,
                    colors: [Colors.purple.shade400, Colors.purple.shade800],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.bolt, color: Colors.white, size: 30),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.topRight,
                    colors: [
                      const Color.fromARGB(255, 135, 92, 208),
                      const Color.fromARGB(255, 152, 111, 223),
                    ],
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ),

        // bottom navbar
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
                  onTap: () => Navigator.pushReplacementNamed(context, '/home'),
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
                  onTap: () => Navigator.pushReplacementNamed(context, '/chat'),
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
    );
  }
}
