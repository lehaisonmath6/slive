String viewCount(int totalView) {
  if (totalView < 1000) {
    return totalView.toString() + " lượt xem";
  }
  if (totalView < 1000000) {
    return (totalView / 1000).toStringAsFixed(1) + " N lượt xem";
  }

  if (totalView < 100000000) {
    return (totalView / 1000000).toStringAsFixed(1) + " Tr lượt xem";
  }
  return (totalView / 100000000).toStringAsFixed(1) + " T lượt xem";
}

String likeCount(int totalLike) {
  if (totalLike < 1000) {
    return totalLike.toString();
  }
  if (totalLike < 1000000) {
    return (totalLike / 1000).toStringAsFixed(1) + " N";
  }

  if (totalLike < 100000000) {
    return (totalLike / 1000000).toStringAsFixed(1) + " Tr";
  }
  return (totalLike / 100000000).toStringAsFixed(1) + " T";
}

String timeSince(int timeEpoch) {
  var now = DateTime.now().millisecondsSinceEpoch;
  var diff = now - timeEpoch;

  if (diff < 1000) return 'Vừa xong';

  var seconds = diff ~/ 1000;
  if (seconds < 60) return '$seconds giây trước';

  var minutes = seconds ~/ 60;
  if (minutes < 60) return '$minutes phút trước';

  var hours = minutes ~/ 60;
  if (hours < 24) return '$hours giờ trước';

  var days = hours ~/ 24;
  if (days < 30) return '$days ngày trước';

  var months = days ~/ 30;
  if (months < 12) return '$months tháng trước';

  var years = months ~/ 12;
  return '$years năm trước';
}

String limitString(String text, int maxLenght) {
  if (text.length < maxLenght) {
    return text;
  }
  return text.substring(0, maxLenght) + "...";
}
