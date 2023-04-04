class User {
  final int id;
  final String displayName;
  final String avatar;
  const User(
      {required this.id, required this.displayName, required this.avatar});
}

class UserFeed extends User {
  final bool isFollow;
  const UserFeed(
      {required super.id,
      required super.avatar,
      required super.displayName,
      required this.isFollow});
}
