import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScreenTimeLogsRecord extends FirestoreRecord {
  ScreenTimeLogsRecord._(
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

  // "actual_minutes" field.
  int? _actualMinutes;
  int get actualMinutes => _actualMinutes ?? 0;
  bool hasActualMinutes() => _actualMinutes != null;

  // "recommended_minutes" field.
  int? _recommendedMinutes;
  int get recommendedMinutes => _recommendedMinutes ?? 0;
  bool hasRecommendedMinutes() => _recommendedMinutes != null;

  // "difference_minutes" field.
  int? _differenceMinutes;
  int get differenceMinutes => _differenceMinutes ?? 0;
  bool hasDifferenceMinutes() => _differenceMinutes != null;

  // "is_under_goal" field.
  bool? _isUnderGoal;
  bool get isUnderGoal => _isUnderGoal ?? false;
  bool hasIsUnderGoal() => _isUnderGoal != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _actualMinutes = castToType<int>(snapshotData['actual_minutes']);
    _recommendedMinutes = castToType<int>(snapshotData['recommended_minutes']);
    _differenceMinutes = castToType<int>(snapshotData['difference_minutes']);
    _isUnderGoal = snapshotData['is_under_goal'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('screen_time_logs');

  static Stream<ScreenTimeLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScreenTimeLogsRecord.fromSnapshot(s));

  static Future<ScreenTimeLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScreenTimeLogsRecord.fromSnapshot(s));

  static ScreenTimeLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScreenTimeLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScreenTimeLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScreenTimeLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScreenTimeLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScreenTimeLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScreenTimeLogsRecordData({
  DocumentReference? userRef,
  DateTime? date,
  int? actualMinutes,
  int? recommendedMinutes,
  int? differenceMinutes,
  bool? isUnderGoal,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'date': date,
      'actual_minutes': actualMinutes,
      'recommended_minutes': recommendedMinutes,
      'difference_minutes': differenceMinutes,
      'is_under_goal': isUnderGoal,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScreenTimeLogsRecordDocumentEquality
    implements Equality<ScreenTimeLogsRecord> {
  const ScreenTimeLogsRecordDocumentEquality();

  @override
  bool equals(ScreenTimeLogsRecord? e1, ScreenTimeLogsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.date == e2?.date &&
        e1?.actualMinutes == e2?.actualMinutes &&
        e1?.recommendedMinutes == e2?.recommendedMinutes &&
        e1?.differenceMinutes == e2?.differenceMinutes &&
        e1?.isUnderGoal == e2?.isUnderGoal &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ScreenTimeLogsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.date,
        e?.actualMinutes,
        e?.recommendedMinutes,
        e?.differenceMinutes,
        e?.isUnderGoal,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ScreenTimeLogsRecord;
}
