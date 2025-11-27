import 'package:sw_dating_app/models/profile.dart';
import 'package:sw_dating_app/resources/resources.dart';

class ProfileConstants {
  ProfileConstants._();

  static const List<Profile> sampleProfiles = [
    Profile(
      name: 'Natalie Morris',
      age: 25,
      occupation: 'Fashion Designer',
      imageAsset: Images.h1,
      isOnline: true,
    ),
    Profile(
      name: 'Emma Johnson',
      age: 28,
      occupation: 'Marketing Manager',
      imageAsset: Images.h2,
      isOnline: true,
    ),
    Profile(
      name: 'Sophia Williams',
      age: 24,
      occupation: 'Graphic Designer',
      imageAsset: Images.h3,
      isOnline: false,
    ),
    Profile(
      name: 'Olivia Brown',
      age: 27,
      occupation: 'Software Engineer',
      imageAsset: Images.h4,
      isOnline: true,
    ),
    Profile(
      name: 'Isabella Davis',
      age: 26,
      occupation: 'Interior Designer',
      imageAsset: Images.h5,
      isOnline: false,
    ),
    Profile(
      name: 'Mia Martinez',
      age: 23,
      occupation: 'Photographer',
      imageAsset: Images.h6,
      isOnline: true,
    ),
    Profile(
      name: 'Charlotte Garcia',
      age: 29,
      occupation: 'Architect',
      imageAsset: Images.h7,
      isOnline: false,
    ),
    Profile(
      name: 'Amelia Rodriguez',
      age: 25,
      occupation: 'Content Creator',
      imageAsset: Images.h8,
      isOnline: true,
    ),
  ];
}
