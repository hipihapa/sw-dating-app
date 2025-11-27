class Profile {
  final String name;
  final int age;
  final String occupation;
  final String imageAsset;
  final bool isOnline;

  const Profile({
    required this.name,
    required this.age,
    required this.occupation,
    required this.imageAsset,
    this.isOnline = false,
  });

  String get displayName => '$name, $age';
}
