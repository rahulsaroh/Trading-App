
enum MarketStatus { PRE_OPEN, OPEN, CLOSED, HOLIDAY }

class MarketHoursUtils {
  static DateTime get istNow => DateTime.now().toUtc().add(const Duration(hours: 5, minutes: 30));

  static bool isMarketOpen() {
    final now = istNow;
    if (now.weekday == DateTime.saturday || now.weekday == DateTime.sunday) return false;

    final startTime = DateTime(now.year, now.month, now.day, 9, 15);
    final endTime = DateTime(now.year, now.month, now.day, 15, 30);

    return now.isAfter(startTime) && now.isBefore(endTime);
  }

  static MarketStatus getStatus() {
    final now = istNow;
    if (now.weekday == DateTime.saturday || now.weekday == DateTime.sunday) return MarketStatus.CLOSED;

    final preOpenStart = DateTime(now.year, now.month, now.day, 9, 0);
    final openStart = DateTime(now.year, now.month, now.day, 9, 15);
    final openEnd = DateTime(now.year, now.month, now.day, 15, 30);

    if (now.isBefore(preOpenStart)) return MarketStatus.CLOSED;
    if (now.isBefore(openStart)) return MarketStatus.PRE_OPEN;
    if (now.isBefore(openEnd)) return MarketStatus.OPEN;
    return MarketStatus.CLOSED;
  }

  static DateTime nextMarketOpen() {
    var next = istNow;
    if (getStatus() == MarketStatus.OPEN) return next;

    if (next.hour > 15 || (next.hour == 15 && next.minute >= 30)) {
      next = next.add(const Duration(days: 1));
    }

    while (next.weekday == DateTime.saturday || next.weekday == DateTime.sunday) {
      next = next.add(const Duration(days: 1));
    }

    return DateTime(next.year, next.month, next.day, 9, 15);
  }
}
