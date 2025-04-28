import '../../core/utils/date_time_utils.dart';

extension DateTimeExtensions on DateTime {
  String toFormattedString() {
    return DateTimeUtils.formatDate(this);
  }

  bool isToday() {
    return DateTimeUtils.isToday(this);
  }

  bool isSameDate(DateTime other) {
    return DateTimeUtils.isSameDate(this, other);
  }

  DateTime addDay(int days) {
    return DateTimeUtils.addDays(this, days);
  }

  DateTime addHour(int hours) {
    return DateTimeUtils.addHours(this, hours);
  }
}
