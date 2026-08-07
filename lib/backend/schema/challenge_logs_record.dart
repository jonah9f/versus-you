import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengeLogsRecord extends FirestoreRecord {
  ChallengeLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "challenge_ref" field.
  DocumentReference? _challengeRef;
  DocumentReference? get challengeRef => _challengeRef;
  bool hasChallengeRef() => _challengeRef != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "response" field.
  String? _response;
  String get response => _response ?? '';
  bool hasResponse() => _response != null;

  // "xp_earned" field.
  int? _xpEarned;
  int get xpEarned => _xpEarned ?? 0;
  bool hasXpEarned() => _xpEarned != null;

  // "completed_time" field.
  DateTime? _completedTime;
  DateTime? get completedTime => _completedTime;
  bool hasCompletedTime() => _completedTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "challenge_name" field.
  String? _challengeName;
  String get challengeName => _challengeName ?? '';
  bool hasChallengeName() => _challengeName != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _challengeRef = snapshotData['challenge_ref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _completed = snapshotData['completed'] as bool?;
    _response = snapshotData['response'] as String?;
    _xpEarned = castToType<int>(snapshotData['xp_earned']);
    _completedTime = snapshotData['completed_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _challengeName = snapshotData['challenge_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenge_logs');

  static Stream<ChallengeLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengeLogsRecord.fromSnapshot(s));

  static Future<ChallengeLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChallengeLogsRecord.fromSnapshot(s));

  static ChallengeLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengeLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengeLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengeLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengeLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengeLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengeLogsRecordData({
  DocumentReference? userRef,
  DocumentReference? challengeRef,
  DateTime? date,
  bool? completed,
  String? response,
  int? xpEarned,
  DateTime? completedTime,
  DateTime? createdTime,
  String? challengeName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'challenge_ref': challengeRef,
      'date': date,
      'completed': completed,
      'response': response,
      'xp_earned': xpEarned,
      'completed_time': completedTime,
      'created_time': createdTime,
      'challenge_name': challengeName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengeLogsRecordDocumentEquality
    implements Equality<ChallengeLogsRecord> {
  const ChallengeLogsRecordDocumentEquality();

  @override
  bool equals(ChallengeLogsRecord? e1, ChallengeLogsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.challengeRef == e2?.challengeRef &&
        e1?.date == e2?.date &&
        e1?.completed == e2?.completed &&
        e1?.response == e2?.response &&
        e1?.xpEarned == e2?.xpEarned &&
        e1?.completedTime == e2?.completedTime &&
        e1?.createdTime == e2?.createdTime &&
        e1?.challengeName == e2?.challengeName;
  }

  @override
  int hash(ChallengeLogsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.challengeRef,
        e?.date,
        e?.completed,
        e?.response,
        e?.xpEarned,
        e?.completedTime,
        e?.createdTime,
        e?.challengeName
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengeLogsRecord;
}
