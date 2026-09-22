import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressReviewsRecord extends FirestoreRecord {
  ProgressReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "progress_rating" field.
  String? _progressRating;
  String get progressRating => _progressRating ?? '';
  bool hasProgressRating() => _progressRating != null;

  // "whats_working" field.
  String? _whatsWorking;
  String get whatsWorking => _whatsWorking ?? '';
  bool hasWhatsWorking() => _whatsWorking != null;

  // "needs_to_change" field.
  String? _needsToChange;
  String get needsToChange => _needsToChange ?? '';
  bool hasNeedsToChange() => _needsToChange != null;

  // "six_month_vision" field.
  String? _sixMonthVision;
  String get sixMonthVision => _sixMonthVision ?? '';
  bool hasSixMonthVision() => _sixMonthVision != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _progressRating = snapshotData['progress_rating'] as String?;
    _whatsWorking = snapshotData['whats_working'] as String?;
    _needsToChange = snapshotData['needs_to_change'] as String?;
    _sixMonthVision = snapshotData['six_month_vision'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('progressReviews');

  static Stream<ProgressReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressReviewsRecord.fromSnapshot(s));

  static Future<ProgressReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressReviewsRecord.fromSnapshot(s));

  static ProgressReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressReviewsRecordData({
  DocumentReference? userRef,
  String? progressRating,
  String? whatsWorking,
  String? needsToChange,
  String? sixMonthVision,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'progress_rating': progressRating,
      'whats_working': whatsWorking,
      'needs_to_change': needsToChange,
      'six_month_vision': sixMonthVision,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressReviewsRecordDocumentEquality
    implements Equality<ProgressReviewsRecord> {
  const ProgressReviewsRecordDocumentEquality();

  @override
  bool equals(ProgressReviewsRecord? e1, ProgressReviewsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.progressRating == e2?.progressRating &&
        e1?.whatsWorking == e2?.whatsWorking &&
        e1?.needsToChange == e2?.needsToChange &&
        e1?.sixMonthVision == e2?.sixMonthVision &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ProgressReviewsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.progressRating,
        e?.whatsWorking,
        e?.needsToChange,
        e?.sixMonthVision,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ProgressReviewsRecord;
}
