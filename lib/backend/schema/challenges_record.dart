import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengesRecord extends FirestoreRecord {
  ChallengesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "xp_reward" field.
  int? _xpReward;
  int get xpReward => _xpReward ?? 0;
  bool hasXpReward() => _xpReward != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "reminder_time" field.
  DateTime? _reminderTime;
  DateTime? get reminderTime => _reminderTime;
  bool hasReminderTime() => _reminderTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "repeat_days" field.
  List<String>? _repeatDays;
  List<String> get repeatDays => _repeatDays ?? const [];
  bool hasRepeatDays() => _repeatDays != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "scheduled_date" field.
  DateTime? _scheduledDate;
  DateTime? get scheduledDate => _scheduledDate;
  bool hasScheduledDate() => _scheduledDate != null;

  // "scheduled_day" field.
  String? _scheduledDay;
  String get scheduledDay => _scheduledDay ?? '';
  bool hasScheduledDay() => _scheduledDay != null;

  // "challenge_type" field.
  String? _challengeType;
  String get challengeType => _challengeType ?? '';
  bool hasChallengeType() => _challengeType != null;

  // "last_completed_date" field.
  DateTime? _lastCompletedDate;
  DateTime? get lastCompletedDate => _lastCompletedDate;
  bool hasLastCompletedDate() => _lastCompletedDate != null;

  // "completed_today" field.
  bool? _completedToday;
  bool get completedToday => _completedToday ?? false;
  bool hasCompletedToday() => _completedToday != null;

  // "reminder_enabled" field.
  bool? _reminderEnabled;
  bool get reminderEnabled => _reminderEnabled ?? false;
  bool hasReminderEnabled() => _reminderEnabled != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _xpReward = castToType<int>(snapshotData['xp_reward']);
    _isActive = snapshotData['is_active'] as bool?;
    _reminderTime = snapshotData['reminder_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _repeatDays = getDataList(snapshotData['repeat_days']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _scheduledDate = snapshotData['scheduled_date'] as DateTime?;
    _scheduledDay = snapshotData['scheduled_day'] as String?;
    _challengeType = snapshotData['challenge_type'] as String?;
    _lastCompletedDate = snapshotData['last_completed_date'] as DateTime?;
    _completedToday = snapshotData['completed_today'] as bool?;
    _reminderEnabled = snapshotData['reminder_enabled'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenges');

  static Stream<ChallengesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengesRecord.fromSnapshot(s));

  static Future<ChallengesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengesRecord.fromSnapshot(s));

  static ChallengesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengesRecordData({
  DocumentReference? userRef,
  String? name,
  int? xpReward,
  bool? isActive,
  DateTime? reminderTime,
  DateTime? createdTime,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
  DateTime? scheduledDate,
  String? scheduledDay,
  String? challengeType,
  DateTime? lastCompletedDate,
  bool? completedToday,
  bool? reminderEnabled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'name': name,
      'xp_reward': xpReward,
      'is_active': isActive,
      'reminder_time': reminderTime,
      'created_time': createdTime,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'phone_number': phoneNumber,
      'scheduled_date': scheduledDate,
      'scheduled_day': scheduledDay,
      'challenge_type': challengeType,
      'last_completed_date': lastCompletedDate,
      'completed_today': completedToday,
      'reminder_enabled': reminderEnabled,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengesRecordDocumentEquality implements Equality<ChallengesRecord> {
  const ChallengesRecordDocumentEquality();

  @override
  bool equals(ChallengesRecord? e1, ChallengesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.name == e2?.name &&
        e1?.xpReward == e2?.xpReward &&
        e1?.isActive == e2?.isActive &&
        e1?.reminderTime == e2?.reminderTime &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.repeatDays, e2?.repeatDays) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.scheduledDate == e2?.scheduledDate &&
        e1?.scheduledDay == e2?.scheduledDay &&
        e1?.challengeType == e2?.challengeType &&
        e1?.lastCompletedDate == e2?.lastCompletedDate &&
        e1?.completedToday == e2?.completedToday &&
        e1?.reminderEnabled == e2?.reminderEnabled;
  }

  @override
  int hash(ChallengesRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.name,
        e?.xpReward,
        e?.isActive,
        e?.reminderTime,
        e?.createdTime,
        e?.repeatDays,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.phoneNumber,
        e?.scheduledDate,
        e?.scheduledDay,
        e?.challengeType,
        e?.lastCompletedDate,
        e?.completedToday,
        e?.reminderEnabled
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengesRecord;
}
