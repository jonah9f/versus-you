import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "xp" field.
  int? _xp;
  int get xp => _xp ?? 0;
  bool hasXp() => _xp != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "discipline_score" field.
  int? _disciplineScore;
  int get disciplineScore => _disciplineScore ?? 0;
  bool hasDisciplineScore() => _disciplineScore != null;

  // "current_streak" field.
  int? _currentStreak;
  int get currentStreak => _currentStreak ?? 0;
  bool hasCurrentStreak() => _currentStreak != null;

  // "total_xp" field.
  int? _totalXp;
  int get totalXp => _totalXp ?? 0;
  bool hasTotalXp() => _totalXp != null;

  // "best_streak" field.
  int? _bestStreak;
  int get bestStreak => _bestStreak ?? 0;
  bool hasBestStreak() => _bestStreak != null;

  // "challenges_completed" field.
  int? _challengesCompleted;
  int get challengesCompleted => _challengesCompleted ?? 0;
  bool hasChallengesCompleted() => _challengesCompleted != null;

  // "challenges_attempted" field.
  int? _challengesAttempted;
  int get challengesAttempted => _challengesAttempted ?? 0;
  bool hasChallengesAttempted() => _challengesAttempted != null;

  // "today_screen_time" field.
  int? _todayScreenTime;
  int get todayScreenTime => _todayScreenTime ?? 0;
  bool hasTodayScreenTime() => _todayScreenTime != null;

  // "lifetime_completion" field.
  double? _lifetimeCompletion;
  double get lifetimeCompletion => _lifetimeCompletion ?? 0.0;
  bool hasLifetimeCompletion() => _lifetimeCompletion != null;

  // "premium" field.
  bool? _premium;
  bool get premium => _premium ?? false;
  bool hasPremium() => _premium != null;

  // "weekly_goal" field.
  int? _weeklyGoal;
  int get weeklyGoal => _weeklyGoal ?? 0;
  bool hasWeeklyGoal() => _weeklyGoal != null;

  // "weekly_completed" field.
  int? _weeklyCompleted;
  int get weeklyCompleted => _weeklyCompleted ?? 0;
  bool hasWeeklyCompleted() => _weeklyCompleted != null;

  // "monday_completed" field.
  int? _mondayCompleted;
  int get mondayCompleted => _mondayCompleted ?? 0;
  bool hasMondayCompleted() => _mondayCompleted != null;

  // "tuesday_completed" field.
  int? _tuesdayCompleted;
  int get tuesdayCompleted => _tuesdayCompleted ?? 0;
  bool hasTuesdayCompleted() => _tuesdayCompleted != null;

  // "wednesday_completed" field.
  int? _wednesdayCompleted;
  int get wednesdayCompleted => _wednesdayCompleted ?? 0;
  bool hasWednesdayCompleted() => _wednesdayCompleted != null;

  // "thursday_completed" field.
  int? _thursdayCompleted;
  int get thursdayCompleted => _thursdayCompleted ?? 0;
  bool hasThursdayCompleted() => _thursdayCompleted != null;

  // "friday_completed" field.
  int? _fridayCompleted;
  int get fridayCompleted => _fridayCompleted ?? 0;
  bool hasFridayCompleted() => _fridayCompleted != null;

  // "saturday_completed" field.
  int? _saturdayCompleted;
  int get saturdayCompleted => _saturdayCompleted ?? 0;
  bool hasSaturdayCompleted() => _saturdayCompleted != null;

  // "sunday_completed" field.
  int? _sundayCompleted;
  int get sundayCompleted => _sundayCompleted ?? 0;
  bool hasSundayCompleted() => _sundayCompleted != null;

  // "today_completed" field.
  int? _todayCompleted;
  int get todayCompleted => _todayCompleted ?? 0;
  bool hasTodayCompleted() => _todayCompleted != null;

  // "yesterday_completed" field.
  int? _yesterdayCompleted;
  int get yesterdayCompleted => _yesterdayCompleted ?? 0;
  bool hasYesterdayCompleted() => _yesterdayCompleted != null;

  // "last_completion_date" field.
  DateTime? _lastCompletionDate;
  DateTime? get lastCompletionDate => _lastCompletionDate;
  bool hasLastCompletionDate() => _lastCompletionDate != null;

  // "weekly_score_change" field.
  int? _weeklyScoreChange;
  int get weeklyScoreChange => _weeklyScoreChange ?? 0;
  bool hasWeeklyScoreChange() => _weeklyScoreChange != null;

  // "monday_performance" field.
  double? _mondayPerformance;
  double get mondayPerformance => _mondayPerformance ?? 0.0;
  bool hasMondayPerformance() => _mondayPerformance != null;

  // "tuesday_performace" field.
  double? _tuesdayPerformace;
  double get tuesdayPerformace => _tuesdayPerformace ?? 0.0;
  bool hasTuesdayPerformace() => _tuesdayPerformace != null;

  // "wednesday_performace" field.
  double? _wednesdayPerformace;
  double get wednesdayPerformace => _wednesdayPerformace ?? 0.0;
  bool hasWednesdayPerformace() => _wednesdayPerformace != null;

  // "thursday_performance" field.
  double? _thursdayPerformance;
  double get thursdayPerformance => _thursdayPerformance ?? 0.0;
  bool hasThursdayPerformance() => _thursdayPerformance != null;

  // "friday_performace" field.
  double? _fridayPerformace;
  double get fridayPerformace => _fridayPerformace ?? 0.0;
  bool hasFridayPerformace() => _fridayPerformace != null;

  // "saturday_performance" field.
  double? _saturdayPerformance;
  double get saturdayPerformance => _saturdayPerformance ?? 0.0;
  bool hasSaturdayPerformance() => _saturdayPerformance != null;

  // "sunday_performance" field.
  double? _sundayPerformance;
  double get sundayPerformance => _sundayPerformance ?? 0.0;
  bool hasSundayPerformance() => _sundayPerformance != null;

  // "xp_goal" field.
  int? _xpGoal;
  int get xpGoal => _xpGoal ?? 0;
  bool hasXpGoal() => _xpGoal != null;

  // "monthly_challenges_completed" field.
  int? _monthlyChallengesCompleted;
  int get monthlyChallengesCompleted => _monthlyChallengesCompleted ?? 0;
  bool hasMonthlyChallengesCompleted() => _monthlyChallengesCompleted != null;

  // "monthly_hours_focused" field.
  double? _monthlyHoursFocused;
  double get monthlyHoursFocused => _monthlyHoursFocused ?? 0.0;
  bool hasMonthlyHoursFocused() => _monthlyHoursFocused != null;

  // "monthly_average_sleep" field.
  double? _monthlyAverageSleep;
  double get monthlyAverageSleep => _monthlyAverageSleep ?? 0.0;
  bool hasMonthlyAverageSleep() => _monthlyAverageSleep != null;

  // "today_social_media_minutes" field.
  int? _todaySocialMediaMinutes;
  int get todaySocialMediaMinutes => _todaySocialMediaMinutes ?? 0;
  bool hasTodaySocialMediaMinutes() => _todaySocialMediaMinutes != null;

  // "monthly_stats_month" field.
  DateTime? _monthlyStatsMonth;
  DateTime? get monthlyStatsMonth => _monthlyStatsMonth;
  bool hasMonthlyStatsMonth() => _monthlyStatsMonth != null;

  // "last_daily_reset" field.
  DateTime? _lastDailyReset;
  DateTime? get lastDailyReset => _lastDailyReset;
  bool hasLastDailyReset() => _lastDailyReset != null;

  // "today_attempted" field.
  int? _todayAttempted;
  int get todayAttempted => _todayAttempted ?? 0;
  bool hasTodayAttempted() => _todayAttempted != null;

  // "today_start" field.
  DateTime? _todayStart;
  DateTime? get todayStart => _todayStart;
  bool hasTodayStart() => _todayStart != null;

  // "today_xp" field.
  int? _todayXp;
  int get todayXp => _todayXp ?? 0;
  bool hasTodayXp() => _todayXp != null;

  // "discipline_score_change" field.
  int? _disciplineScoreChange;
  int get disciplineScoreChange => _disciplineScoreChange ?? 0;
  bool hasDisciplineScoreChange() => _disciplineScoreChange != null;

  // "last_score_update" field.
  DateTime? _lastScoreUpdate;
  DateTime? get lastScoreUpdate => _lastScoreUpdate;
  bool hasLastScoreUpdate() => _lastScoreUpdate != null;

  // "days_won" field.
  int? _daysWon;
  int get daysWon => _daysWon ?? 0;
  bool hasDaysWon() => _daysWon != null;

  // "days_lost" field.
  int? _daysLost;
  int get daysLost => _daysLost ?? 0;
  bool hasDaysLost() => _daysLost != null;

  // "yesterday_completion_percentage" field.
  int? _yesterdayCompletionPercentage;
  int get yesterdayCompletionPercentage => _yesterdayCompletionPercentage ?? 0;
  bool hasYesterdayCompletionPercentage() =>
      _yesterdayCompletionPercentage != null;

  // "notifications_enabled" field.
  bool? _notificationsEnabled;
  bool get notificationsEnabled => _notificationsEnabled ?? false;
  bool hasNotificationsEnabled() => _notificationsEnabled != null;

  // "screen_time_goal_minutes" field.
  int? _screenTimeGoalMinutes;
  int get screenTimeGoalMinutes => _screenTimeGoalMinutes ?? 0;
  bool hasScreenTimeGoalMinutes() => _screenTimeGoalMinutes != null;

  // "appearance_mode" field.
  String? _appearanceMode;
  String get appearanceMode => _appearanceMode ?? '';
  bool hasAppearanceMode() => _appearanceMode != null;

  // "weekly_performance_start" field.
  DateTime? _weeklyPerformanceStart;
  DateTime? get weeklyPerformanceStart => _weeklyPerformanceStart;
  bool hasWeeklyPerformanceStart() => _weeklyPerformanceStart != null;

  // "focus_minutes_today" field.
  int? _focusMinutesToday;
  int get focusMinutesToday => _focusMinutesToday ?? 0;
  bool hasFocusMinutesToday() => _focusMinutesToday != null;

  // "sleep_minutes_today" field.
  int? _sleepMinutesToday;
  int get sleepMinutesToday => _sleepMinutesToday ?? 0;
  bool hasSleepMinutesToday() => _sleepMinutesToday != null;

  // "sleep_total_minutes" field.
  int? _sleepTotalMinutes;
  int get sleepTotalMinutes => _sleepTotalMinutes ?? 0;
  bool hasSleepTotalMinutes() => _sleepTotalMinutes != null;

  // "sleep_days_logged" field.
  int? _sleepDaysLogged;
  int get sleepDaysLogged => _sleepDaysLogged ?? 0;
  bool hasSleepDaysLogged() => _sleepDaysLogged != null;

  // "sleep_last_logged_date" field.
  DateTime? _sleepLastLoggedDate;
  DateTime? get sleepLastLoggedDate => _sleepLastLoggedDate;
  bool hasSleepLastLoggedDate() => _sleepLastLoggedDate != null;

  // "monthly_focus_minutes" field.
  int? _monthlyFocusMinutes;
  int get monthlyFocusMinutes => _monthlyFocusMinutes ?? 0;
  bool hasMonthlyFocusMinutes() => _monthlyFocusMinutes != null;

  // "monthly_screen_time_minutes" field.
  int? _monthlyScreenTimeMinutes;
  int get monthlyScreenTimeMinutes => _monthlyScreenTimeMinutes ?? 0;
  bool hasMonthlyScreenTimeMinutes() => _monthlyScreenTimeMinutes != null;

  // "screen_time_last_logged_date" field.
  DateTime? _screenTimeLastLoggedDate;
  DateTime? get screenTimeLastLoggedDate => _screenTimeLastLoggedDate;
  bool hasScreenTimeLastLoggedDate() => _screenTimeLastLoggedDate != null;

  // "monthly_screen_time_log_count" field.
  int? _monthlyScreenTimeLogCount;
  int get monthlyScreenTimeLogCount => _monthlyScreenTimeLogCount ?? 0;
  bool hasMonthlyScreenTimeLogCount() => _monthlyScreenTimeLogCount != null;

  // "last_weekly_reset" field.
  DateTime? _lastWeeklyReset;
  DateTime? get lastWeeklyReset => _lastWeeklyReset;
  bool hasLastWeeklyReset() => _lastWeeklyReset != null;

  // "consecutiveMissedDays" field.
  int? _consecutiveMissedDays;
  int get consecutiveMissedDays => _consecutiveMissedDays ?? 0;
  bool hasConsecutiveMissedDays() => _consecutiveMissedDays != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _username = snapshotData['username'] as String?;
    _xp = castToType<int>(snapshotData['xp']);
    _level = castToType<int>(snapshotData['level']);
    _disciplineScore = castToType<int>(snapshotData['discipline_score']);
    _currentStreak = castToType<int>(snapshotData['current_streak']);
    _totalXp = castToType<int>(snapshotData['total_xp']);
    _bestStreak = castToType<int>(snapshotData['best_streak']);
    _challengesCompleted =
        castToType<int>(snapshotData['challenges_completed']);
    _challengesAttempted =
        castToType<int>(snapshotData['challenges_attempted']);
    _todayScreenTime = castToType<int>(snapshotData['today_screen_time']);
    _lifetimeCompletion =
        castToType<double>(snapshotData['lifetime_completion']);
    _premium = snapshotData['premium'] as bool?;
    _weeklyGoal = castToType<int>(snapshotData['weekly_goal']);
    _weeklyCompleted = castToType<int>(snapshotData['weekly_completed']);
    _mondayCompleted = castToType<int>(snapshotData['monday_completed']);
    _tuesdayCompleted = castToType<int>(snapshotData['tuesday_completed']);
    _wednesdayCompleted = castToType<int>(snapshotData['wednesday_completed']);
    _thursdayCompleted = castToType<int>(snapshotData['thursday_completed']);
    _fridayCompleted = castToType<int>(snapshotData['friday_completed']);
    _saturdayCompleted = castToType<int>(snapshotData['saturday_completed']);
    _sundayCompleted = castToType<int>(snapshotData['sunday_completed']);
    _todayCompleted = castToType<int>(snapshotData['today_completed']);
    _yesterdayCompleted = castToType<int>(snapshotData['yesterday_completed']);
    _lastCompletionDate = snapshotData['last_completion_date'] as DateTime?;
    _weeklyScoreChange = castToType<int>(snapshotData['weekly_score_change']);
    _mondayPerformance = castToType<double>(snapshotData['monday_performance']);
    _tuesdayPerformace = castToType<double>(snapshotData['tuesday_performace']);
    _wednesdayPerformace =
        castToType<double>(snapshotData['wednesday_performace']);
    _thursdayPerformance =
        castToType<double>(snapshotData['thursday_performance']);
    _fridayPerformace = castToType<double>(snapshotData['friday_performace']);
    _saturdayPerformance =
        castToType<double>(snapshotData['saturday_performance']);
    _sundayPerformance = castToType<double>(snapshotData['sunday_performance']);
    _xpGoal = castToType<int>(snapshotData['xp_goal']);
    _monthlyChallengesCompleted =
        castToType<int>(snapshotData['monthly_challenges_completed']);
    _monthlyHoursFocused =
        castToType<double>(snapshotData['monthly_hours_focused']);
    _monthlyAverageSleep =
        castToType<double>(snapshotData['monthly_average_sleep']);
    _todaySocialMediaMinutes =
        castToType<int>(snapshotData['today_social_media_minutes']);
    _monthlyStatsMonth = snapshotData['monthly_stats_month'] as DateTime?;
    _lastDailyReset = snapshotData['last_daily_reset'] as DateTime?;
    _todayAttempted = castToType<int>(snapshotData['today_attempted']);
    _todayStart = snapshotData['today_start'] as DateTime?;
    _todayXp = castToType<int>(snapshotData['today_xp']);
    _disciplineScoreChange =
        castToType<int>(snapshotData['discipline_score_change']);
    _lastScoreUpdate = snapshotData['last_score_update'] as DateTime?;
    _daysWon = castToType<int>(snapshotData['days_won']);
    _daysLost = castToType<int>(snapshotData['days_lost']);
    _yesterdayCompletionPercentage =
        castToType<int>(snapshotData['yesterday_completion_percentage']);
    _notificationsEnabled = snapshotData['notifications_enabled'] as bool?;
    _screenTimeGoalMinutes =
        castToType<int>(snapshotData['screen_time_goal_minutes']);
    _appearanceMode = snapshotData['appearance_mode'] as String?;
    _weeklyPerformanceStart =
        snapshotData['weekly_performance_start'] as DateTime?;
    _focusMinutesToday = castToType<int>(snapshotData['focus_minutes_today']);
    _sleepMinutesToday = castToType<int>(snapshotData['sleep_minutes_today']);
    _sleepTotalMinutes = castToType<int>(snapshotData['sleep_total_minutes']);
    _sleepDaysLogged = castToType<int>(snapshotData['sleep_days_logged']);
    _sleepLastLoggedDate = snapshotData['sleep_last_logged_date'] as DateTime?;
    _monthlyFocusMinutes =
        castToType<int>(snapshotData['monthly_focus_minutes']);
    _monthlyScreenTimeMinutes =
        castToType<int>(snapshotData['monthly_screen_time_minutes']);
    _screenTimeLastLoggedDate =
        snapshotData['screen_time_last_logged_date'] as DateTime?;
    _monthlyScreenTimeLogCount =
        castToType<int>(snapshotData['monthly_screen_time_log_count']);
    _lastWeeklyReset = snapshotData['last_weekly_reset'] as DateTime?;
    _consecutiveMissedDays =
        castToType<int>(snapshotData['consecutiveMissedDays']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? username,
  int? xp,
  int? level,
  int? disciplineScore,
  int? currentStreak,
  int? totalXp,
  int? bestStreak,
  int? challengesCompleted,
  int? challengesAttempted,
  int? todayScreenTime,
  double? lifetimeCompletion,
  bool? premium,
  int? weeklyGoal,
  int? weeklyCompleted,
  int? mondayCompleted,
  int? tuesdayCompleted,
  int? wednesdayCompleted,
  int? thursdayCompleted,
  int? fridayCompleted,
  int? saturdayCompleted,
  int? sundayCompleted,
  int? todayCompleted,
  int? yesterdayCompleted,
  DateTime? lastCompletionDate,
  int? weeklyScoreChange,
  double? mondayPerformance,
  double? tuesdayPerformace,
  double? wednesdayPerformace,
  double? thursdayPerformance,
  double? fridayPerformace,
  double? saturdayPerformance,
  double? sundayPerformance,
  int? xpGoal,
  int? monthlyChallengesCompleted,
  double? monthlyHoursFocused,
  double? monthlyAverageSleep,
  int? todaySocialMediaMinutes,
  DateTime? monthlyStatsMonth,
  DateTime? lastDailyReset,
  int? todayAttempted,
  DateTime? todayStart,
  int? todayXp,
  int? disciplineScoreChange,
  DateTime? lastScoreUpdate,
  int? daysWon,
  int? daysLost,
  int? yesterdayCompletionPercentage,
  bool? notificationsEnabled,
  int? screenTimeGoalMinutes,
  String? appearanceMode,
  DateTime? weeklyPerformanceStart,
  int? focusMinutesToday,
  int? sleepMinutesToday,
  int? sleepTotalMinutes,
  int? sleepDaysLogged,
  DateTime? sleepLastLoggedDate,
  int? monthlyFocusMinutes,
  int? monthlyScreenTimeMinutes,
  DateTime? screenTimeLastLoggedDate,
  int? monthlyScreenTimeLogCount,
  DateTime? lastWeeklyReset,
  int? consecutiveMissedDays,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'username': username,
      'xp': xp,
      'level': level,
      'discipline_score': disciplineScore,
      'current_streak': currentStreak,
      'total_xp': totalXp,
      'best_streak': bestStreak,
      'challenges_completed': challengesCompleted,
      'challenges_attempted': challengesAttempted,
      'today_screen_time': todayScreenTime,
      'lifetime_completion': lifetimeCompletion,
      'premium': premium,
      'weekly_goal': weeklyGoal,
      'weekly_completed': weeklyCompleted,
      'monday_completed': mondayCompleted,
      'tuesday_completed': tuesdayCompleted,
      'wednesday_completed': wednesdayCompleted,
      'thursday_completed': thursdayCompleted,
      'friday_completed': fridayCompleted,
      'saturday_completed': saturdayCompleted,
      'sunday_completed': sundayCompleted,
      'today_completed': todayCompleted,
      'yesterday_completed': yesterdayCompleted,
      'last_completion_date': lastCompletionDate,
      'weekly_score_change': weeklyScoreChange,
      'monday_performance': mondayPerformance,
      'tuesday_performace': tuesdayPerformace,
      'wednesday_performace': wednesdayPerformace,
      'thursday_performance': thursdayPerformance,
      'friday_performace': fridayPerformace,
      'saturday_performance': saturdayPerformance,
      'sunday_performance': sundayPerformance,
      'xp_goal': xpGoal,
      'monthly_challenges_completed': monthlyChallengesCompleted,
      'monthly_hours_focused': monthlyHoursFocused,
      'monthly_average_sleep': monthlyAverageSleep,
      'today_social_media_minutes': todaySocialMediaMinutes,
      'monthly_stats_month': monthlyStatsMonth,
      'last_daily_reset': lastDailyReset,
      'today_attempted': todayAttempted,
      'today_start': todayStart,
      'today_xp': todayXp,
      'discipline_score_change': disciplineScoreChange,
      'last_score_update': lastScoreUpdate,
      'days_won': daysWon,
      'days_lost': daysLost,
      'yesterday_completion_percentage': yesterdayCompletionPercentage,
      'notifications_enabled': notificationsEnabled,
      'screen_time_goal_minutes': screenTimeGoalMinutes,
      'appearance_mode': appearanceMode,
      'weekly_performance_start': weeklyPerformanceStart,
      'focus_minutes_today': focusMinutesToday,
      'sleep_minutes_today': sleepMinutesToday,
      'sleep_total_minutes': sleepTotalMinutes,
      'sleep_days_logged': sleepDaysLogged,
      'sleep_last_logged_date': sleepLastLoggedDate,
      'monthly_focus_minutes': monthlyFocusMinutes,
      'monthly_screen_time_minutes': monthlyScreenTimeMinutes,
      'screen_time_last_logged_date': screenTimeLastLoggedDate,
      'monthly_screen_time_log_count': monthlyScreenTimeLogCount,
      'last_weekly_reset': lastWeeklyReset,
      'consecutiveMissedDays': consecutiveMissedDays,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.username == e2?.username &&
        e1?.xp == e2?.xp &&
        e1?.level == e2?.level &&
        e1?.disciplineScore == e2?.disciplineScore &&
        e1?.currentStreak == e2?.currentStreak &&
        e1?.totalXp == e2?.totalXp &&
        e1?.bestStreak == e2?.bestStreak &&
        e1?.challengesCompleted == e2?.challengesCompleted &&
        e1?.challengesAttempted == e2?.challengesAttempted &&
        e1?.todayScreenTime == e2?.todayScreenTime &&
        e1?.lifetimeCompletion == e2?.lifetimeCompletion &&
        e1?.premium == e2?.premium &&
        e1?.weeklyGoal == e2?.weeklyGoal &&
        e1?.weeklyCompleted == e2?.weeklyCompleted &&
        e1?.mondayCompleted == e2?.mondayCompleted &&
        e1?.tuesdayCompleted == e2?.tuesdayCompleted &&
        e1?.wednesdayCompleted == e2?.wednesdayCompleted &&
        e1?.thursdayCompleted == e2?.thursdayCompleted &&
        e1?.fridayCompleted == e2?.fridayCompleted &&
        e1?.saturdayCompleted == e2?.saturdayCompleted &&
        e1?.sundayCompleted == e2?.sundayCompleted &&
        e1?.todayCompleted == e2?.todayCompleted &&
        e1?.yesterdayCompleted == e2?.yesterdayCompleted &&
        e1?.lastCompletionDate == e2?.lastCompletionDate &&
        e1?.weeklyScoreChange == e2?.weeklyScoreChange &&
        e1?.mondayPerformance == e2?.mondayPerformance &&
        e1?.tuesdayPerformace == e2?.tuesdayPerformace &&
        e1?.wednesdayPerformace == e2?.wednesdayPerformace &&
        e1?.thursdayPerformance == e2?.thursdayPerformance &&
        e1?.fridayPerformace == e2?.fridayPerformace &&
        e1?.saturdayPerformance == e2?.saturdayPerformance &&
        e1?.sundayPerformance == e2?.sundayPerformance &&
        e1?.xpGoal == e2?.xpGoal &&
        e1?.monthlyChallengesCompleted == e2?.monthlyChallengesCompleted &&
        e1?.monthlyHoursFocused == e2?.monthlyHoursFocused &&
        e1?.monthlyAverageSleep == e2?.monthlyAverageSleep &&
        e1?.todaySocialMediaMinutes == e2?.todaySocialMediaMinutes &&
        e1?.monthlyStatsMonth == e2?.monthlyStatsMonth &&
        e1?.lastDailyReset == e2?.lastDailyReset &&
        e1?.todayAttempted == e2?.todayAttempted &&
        e1?.todayStart == e2?.todayStart &&
        e1?.todayXp == e2?.todayXp &&
        e1?.disciplineScoreChange == e2?.disciplineScoreChange &&
        e1?.lastScoreUpdate == e2?.lastScoreUpdate &&
        e1?.daysWon == e2?.daysWon &&
        e1?.daysLost == e2?.daysLost &&
        e1?.yesterdayCompletionPercentage ==
            e2?.yesterdayCompletionPercentage &&
        e1?.notificationsEnabled == e2?.notificationsEnabled &&
        e1?.screenTimeGoalMinutes == e2?.screenTimeGoalMinutes &&
        e1?.appearanceMode == e2?.appearanceMode &&
        e1?.weeklyPerformanceStart == e2?.weeklyPerformanceStart &&
        e1?.focusMinutesToday == e2?.focusMinutesToday &&
        e1?.sleepMinutesToday == e2?.sleepMinutesToday &&
        e1?.sleepTotalMinutes == e2?.sleepTotalMinutes &&
        e1?.sleepDaysLogged == e2?.sleepDaysLogged &&
        e1?.sleepLastLoggedDate == e2?.sleepLastLoggedDate &&
        e1?.monthlyFocusMinutes == e2?.monthlyFocusMinutes &&
        e1?.monthlyScreenTimeMinutes == e2?.monthlyScreenTimeMinutes &&
        e1?.screenTimeLastLoggedDate == e2?.screenTimeLastLoggedDate &&
        e1?.monthlyScreenTimeLogCount == e2?.monthlyScreenTimeLogCount &&
        e1?.lastWeeklyReset == e2?.lastWeeklyReset &&
        e1?.consecutiveMissedDays == e2?.consecutiveMissedDays;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.username,
        e?.xp,
        e?.level,
        e?.disciplineScore,
        e?.currentStreak,
        e?.totalXp,
        e?.bestStreak,
        e?.challengesCompleted,
        e?.challengesAttempted,
        e?.todayScreenTime,
        e?.lifetimeCompletion,
        e?.premium,
        e?.weeklyGoal,
        e?.weeklyCompleted,
        e?.mondayCompleted,
        e?.tuesdayCompleted,
        e?.wednesdayCompleted,
        e?.thursdayCompleted,
        e?.fridayCompleted,
        e?.saturdayCompleted,
        e?.sundayCompleted,
        e?.todayCompleted,
        e?.yesterdayCompleted,
        e?.lastCompletionDate,
        e?.weeklyScoreChange,
        e?.mondayPerformance,
        e?.tuesdayPerformace,
        e?.wednesdayPerformace,
        e?.thursdayPerformance,
        e?.fridayPerformace,
        e?.saturdayPerformance,
        e?.sundayPerformance,
        e?.xpGoal,
        e?.monthlyChallengesCompleted,
        e?.monthlyHoursFocused,
        e?.monthlyAverageSleep,
        e?.todaySocialMediaMinutes,
        e?.monthlyStatsMonth,
        e?.lastDailyReset,
        e?.todayAttempted,
        e?.todayStart,
        e?.todayXp,
        e?.disciplineScoreChange,
        e?.lastScoreUpdate,
        e?.daysWon,
        e?.daysLost,
        e?.yesterdayCompletionPercentage,
        e?.notificationsEnabled,
        e?.screenTimeGoalMinutes,
        e?.appearanceMode,
        e?.weeklyPerformanceStart,
        e?.focusMinutesToday,
        e?.sleepMinutesToday,
        e?.sleepTotalMinutes,
        e?.sleepDaysLogged,
        e?.sleepLastLoggedDate,
        e?.monthlyFocusMinutes,
        e?.monthlyScreenTimeMinutes,
        e?.screenTimeLastLoggedDate,
        e?.monthlyScreenTimeLogCount,
        e?.lastWeeklyReset,
        e?.consecutiveMissedDays
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
