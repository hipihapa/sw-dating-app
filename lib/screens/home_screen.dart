import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sw_dating_app/constants/profile_constants.dart';
import 'package:sw_dating_app/resources/resources.dart';
import 'package:sw_dating_app/widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          bottom: 180,
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
          bottom: 50,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.close, color: Colors.grey, size: 30),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.bolt, color: Colors.purple, size: 30),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Icon(Icons.favorite, color: Colors.red, size: 30),
              ),
            ],
          ),
        ),

        // bottom navbar
        
      ],
    );
  }
}
