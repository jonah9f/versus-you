import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MilestonesRecord extends FirestoreRecord {
  MilestonesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "completed_time" field.
  DateTime? _completedTime;
  DateTime? get completedTime => _completedTime;
  bool hasCompletedTime() => _completedTime != null;

  // "goal_period" field.
  String? _goalPeriod;
  String get goalPeriod => _goalPeriod ?? '';
  bool hasGoalPeriod() => _goalPeriod != null;

  // "is_completed" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _completedTime = snapshotData['completed_time'] as DateTime?;
    _goalPeriod = snapshotData['goal_period'] as String?;
    _isCompleted = snapshotData['is_completed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('milestones');

  static Stream<MilestonesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MilestonesRecord.fromSnapshot(s));

  static Future<MilestonesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MilestonesRecord.fromSnapshot(s));

  static MilestonesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MilestonesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MilestonesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MilestonesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MilestonesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MilestonesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMilestonesRecordData({
  DocumentReference? userRef,
  String? title,
  DateTime? createdTime,
  DateTime? completedTime,
  String? goalPeriod,
  bool? isCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'title': title,
      'created_time': createdTime,
      'completed_time': completedTime,
      'goal_period': goalPeriod,
      'is_completed': isCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class MilestonesRecordDocumentEquality implements Equality<MilestonesRecord> {
  const MilestonesRecordDocumentEquality();

  @override
  bool equals(MilestonesRecord? e1, MilestonesRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.title == e2?.title &&
        e1?.createdTime == e2?.createdTime &&
        e1?.completedTime == e2?.completedTime &&
        e1?.goalPeriod == e2?.goalPeriod &&
        e1?.isCompleted == e2?.isCompleted;
  }

  @override
  int hash(MilestonesRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.title,
        e?.createdTime,
        e?.completedTime,
        e?.goalPeriod,
        e?.isCompleted
      ]);

  @override
  bool isValidKey(Object? o) => o is MilestonesRecord;
}
