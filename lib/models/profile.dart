class Profile {
  final String name;
  final int age;
  final String occupation;
  final String imageAsset;
  final bool isOnline;
  final String match;

  const Profile({
    required this.name,
    required this.age,
    required this.occupation,
    required this.imageAsset,
    this.isOnline = false,
    this.match = "",
  });

  String get displayName => '$name, $age';
}
