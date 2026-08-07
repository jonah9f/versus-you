import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AchievementsRecord extends FirestoreRecord {
  AchievementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "achievement_key" field.
  String? _achievementKey;
  String get achievementKey => _achievementKey ?? '';
  bool hasAchievementKey() => _achievementKey != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "unlocked" field.
  bool? _unlocked;
  bool get unlocked => _unlocked ?? false;
  bool hasUnlocked() => _unlocked != null;

  // "unlocked_time" field.
  DateTime? _unlockedTime;
  DateTime? get unlockedTime => _unlockedTime;
  bool hasUnlockedTime() => _unlockedTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _achievementKey = snapshotData['achievement_key'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _unlocked = snapshotData['unlocked'] as bool?;
    _unlockedTime = snapshotData['unlocked_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('achievements');

  static Stream<AchievementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AchievementsRecord.fromSnapshot(s));

  static Future<AchievementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AchievementsRecord.fromSnapshot(s));

  static AchievementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AchievementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AchievementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AchievementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AchievementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AchievementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAchievementsRecordData({
  DocumentReference? userRef,
  String? achievementKey,
  String? title,
  String? description,
  bool? unlocked,
  DateTime? unlockedTime,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'achievement_key': achievementKey,
      'title': title,
      'description': description,
      'unlocked': unlocked,
      'unlocked_time': unlockedTime,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AchievementsRecordDocumentEquality
    implements Equality<AchievementsRecord> {
  const AchievementsRecordDocumentEquality();

  @override
  bool equals(AchievementsRecord? e1, AchievementsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.achievementKey == e2?.achievementKey &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.unlocked == e2?.unlocked &&
        e1?.unlockedTime == e2?.unlockedTime &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(AchievementsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.achievementKey,
        e?.title,
        e?.description,
        e?.unlocked,
        e?.unlockedTime,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AchievementsRecord;
}
