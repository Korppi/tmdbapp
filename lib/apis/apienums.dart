enum TimeWindow { day, week }

extension TimeWindowExtension on TimeWindow {
  String get lowerCaseString {
    switch (this) {
      case TimeWindow.day:
        return 'day';
      case TimeWindow.week:
        return 'week';
      default:
        return 'week';
    }
  }
}

enum ShowType { movie, tv }

extension ShowTypeExtension on ShowType {
  String get lowerCaseString {
    switch (this) {
      case ShowType.movie:
        return 'movie';
      case ShowType.tv:
        return 'tv';
      default:
        return 'movie';
    }
  }
}
