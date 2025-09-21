class FacebookUser {
  int _friendsCount = 0;

  set fbFriendsCount(int value) {
    if (value >= 0) {
      _friendsCount = value;
    }
  }
}
