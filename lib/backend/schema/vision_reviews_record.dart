import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VisionReviewsRecord extends FirestoreRecord {
  VisionReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "vision_type" field.
  String? _visionType;
  String get visionType => _visionType ?? '';
  bool hasVisionType() => _visionType != null;

  // "vision" field.
  String? _vision;
  String get vision => _vision ?? '';
  bool hasVision() => _vision != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  bool hasResult() => _result != null;

  // "proud_of" field.
  String? _proudOf;
  String get proudOf => _proudOf ?? '';
  bool hasProudOf() => _proudOf != null;

  // "held_back_by" field.
  String? _heldBackBy;
  String get heldBackBy => _heldBackBy ?? '';
  bool hasHeldBackBy() => _heldBackBy != null;

  // "new_vision" field.
  String? _newVision;
  String get newVision => _newVision ?? '';
  bool hasNewVision() => _newVision != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _visionType = snapshotData['vision_type'] as String?;
    _vision = snapshotData['vision'] as String?;
    _result = snapshotData['result'] as String?;
    _proudOf = snapshotData['proud_of'] as String?;
    _heldBackBy = snapshotData['held_back_by'] as String?;
    _newVision = snapshotData['new_vision'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('visionReviews');

  static Stream<VisionReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VisionReviewsRecord.fromSnapshot(s));

  static Future<VisionReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VisionReviewsRecord.fromSnapshot(s));

  static VisionReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VisionReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VisionReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VisionReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VisionReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VisionReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVisionReviewsRecordData({
  DocumentReference? userRef,
  String? visionType,
  String? vision,
  String? result,
  String? proudOf,
  String? heldBackBy,
  String? newVision,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'vision_type': visionType,
      'vision': vision,
      'result': result,
      'proud_of': proudOf,
      'held_back_by': heldBackBy,
      'new_vision': newVision,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class VisionReviewsRecordDocumentEquality
    implements Equality<VisionReviewsRecord> {
  const VisionReviewsRecordDocumentEquality();

  @override
  bool equals(VisionReviewsRecord? e1, VisionReviewsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.visionType == e2?.visionType &&
        e1?.vision == e2?.vision &&
        e1?.result == e2?.result &&
        e1?.proudOf == e2?.proudOf &&
        e1?.heldBackBy == e2?.heldBackBy &&
        e1?.newVision == e2?.newVision &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(VisionReviewsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.visionType,
        e?.vision,
        e?.result,
        e?.proudOf,
        e?.heldBackBy,
        e?.newVision,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is VisionReviewsRecord;
}
