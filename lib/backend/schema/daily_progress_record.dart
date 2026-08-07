import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyProgressRecord extends FirestoreRecord {
  DailyProgressRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "challenges_completed" field.
  int? _challengesCompleted;
  int get challengesCompleted => _challengesCompleted ?? 0;
  bool hasChallengesCompleted() => _challengesCompleted != null;

  // "challenges_total" field.
  int? _challengesTotal;
  int get challengesTotal => _challengesTotal ?? 0;
  bool hasChallengesTotal() => _challengesTotal != null;

  // "xp_earned" field.
  int? _xpEarned;
  int get xpEarned => _xpEarned ?? 0;
  bool hasXpEarned() => _xpEarned != null;

  // "discipline_score" field.
  int? _disciplineScore;
  int get disciplineScore => _disciplineScore ?? 0;
  bool hasDisciplineScore() => _disciplineScore != null;

  // "day_won" field.
  bool? _dayWon;
  bool get dayWon => _dayWon ?? false;
  bool hasDayWon() => _dayWon != null;

  // "screen_time_minutes" field.
  int? _screenTimeMinutes;
  int get screenTimeMinutes => _screenTimeMinutes ?? 0;
  bool hasScreenTimeMinutes() => _screenTimeMinutes != null;

  // "sleep_minutes" field.
  int? _sleepMinutes;
  int get sleepMinutes => _sleepMinutes ?? 0;
  bool hasSleepMinutes() => _sleepMinutes != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _challengesCompleted =
        castToType<int>(snapshotData['challenges_completed']);
    _challengesTotal = castToType<int>(snapshotData['challenges_total']);
    _xpEarned = castToType<int>(snapshotData['xp_earned']);
    _disciplineScore = castToType<int>(snapshotData['discipline_score']);
    _dayWon = snapshotData['day_won'] as bool?;
    _screenTimeMinutes = castToType<int>(snapshotData['screen_time_minutes']);
    _sleepMinutes = castToType<int>(snapshotData['sleep_minutes']);
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_progress');

  static Stream<DailyProgressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyProgressRecord.fromSnapshot(s));

  static Future<DailyProgressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyProgressRecord.fromSnapshot(s));

  static DailyProgressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyProgressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyProgressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyProgressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyProgressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyProgressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyProgressRecordData({
  DocumentReference? userRef,
  DateTime? date,
  int? challengesCompleted,
  int? challengesTotal,
  int? xpEarned,
  int? disciplineScore,
  bool? dayWon,
  int? screenTimeMinutes,
  int? sleepMinutes,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'date': date,
      'challenges_completed': challengesCompleted,
      'challenges_total': challengesTotal,
      'xp_earned': xpEarned,
      'discipline_score': disciplineScore,
      'day_won': dayWon,
      'screen_time_minutes': screenTimeMinutes,
      'sleep_minutes': sleepMinutes,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyProgressRecordDocumentEquality
    implements Equality<DailyProgressRecord> {
  const DailyProgressRecordDocumentEquality();

  @override
  bool equals(DailyProgressRecord? e1, DailyProgressRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.date == e2?.date &&
        e1?.challengesCompleted == e2?.challengesCompleted &&
        e1?.challengesTotal == e2?.challengesTotal &&
        e1?.xpEarned == e2?.xpEarned &&
        e1?.disciplineScore == e2?.disciplineScore &&
        e1?.dayWon == e2?.dayWon &&
        e1?.screenTimeMinutes == e2?.screenTimeMinutes &&
        e1?.sleepMinutes == e2?.sleepMinutes &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(DailyProgressRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.date,
        e?.challengesCompleted,
        e?.challengesTotal,
        e?.xpEarned,
        e?.disciplineScore,
        e?.dayWon,
        e?.screenTimeMinutes,
        e?.sleepMinutes,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is DailyProgressRecord;
}
