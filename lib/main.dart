import 'package:flutter/material.dart';
import 'package:sw_dating_app/screens/home_screen.dart';
import 'package:sw_dating_app/screens/favorites_screen.dart';
import 'package:sw_dating_app/screens/chat_screen.dart';
import 'package:sw_dating_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: (settings) {
        Widget page;
        
        switch (settings.name) {
          case '/home':
            page = const HomeScreen();
            break;
          case '/favorites':
            page = const FavoritesScreen();
            break;
          case '/chat':
            page = const ChatScreen();
            break;
          case '/profile':
            page = const ProfileScreen();
            break;
          default:
            page = const HomeScreen();
        }

        // Return route with no transition animation
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: settings,
        );
      },
    );
  }
}
