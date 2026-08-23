import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SleepLogsRecord extends FirestoreRecord {
  SleepLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "sleep_date" field.
  DateTime? _sleepDate;
  DateTime? get sleepDate => _sleepDate;
  bool hasSleepDate() => _sleepDate != null;

  // "sleep_minutes" field.
  int? _sleepMinutes;
  int get sleepMinutes => _sleepMinutes ?? 0;
  bool hasSleepMinutes() => _sleepMinutes != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _sleepDate = snapshotData['sleep_date'] as DateTime?;
    _sleepMinutes = castToType<int>(snapshotData['sleep_minutes']);
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sleep_logs');

  static Stream<SleepLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SleepLogsRecord.fromSnapshot(s));

  static Future<SleepLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SleepLogsRecord.fromSnapshot(s));

  static SleepLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SleepLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SleepLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SleepLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SleepLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SleepLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSleepLogsRecordData({
  DocumentReference? userRef,
  DateTime? sleepDate,
  int? sleepMinutes,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'sleep_date': sleepDate,
      'sleep_minutes': sleepMinutes,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class SleepLogsRecordDocumentEquality implements Equality<SleepLogsRecord> {
  const SleepLogsRecordDocumentEquality();

  @override
  bool equals(SleepLogsRecord? e1, SleepLogsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.sleepDate == e2?.sleepDate &&
        e1?.sleepMinutes == e2?.sleepMinutes &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(SleepLogsRecord? e) => const ListEquality()
      .hash([e?.userRef, e?.sleepDate, e?.sleepMinutes, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is SleepLogsRecord;
}
