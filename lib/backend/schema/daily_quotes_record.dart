import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyQuotesRecord extends FirestoreRecord {
  DailyQuotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "quote" field.
  String? _quote;
  String get quote => _quote ?? '';
  bool hasQuote() => _quote != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "quote_number" field.
  int? _quoteNumber;
  int get quoteNumber => _quoteNumber ?? 0;
  bool hasQuoteNumber() => _quoteNumber != null;

  void _initializeFields() {
    _quote = snapshotData['quote'] as String?;
    _author = snapshotData['author'] as String?;
    _quoteNumber = castToType<int>(snapshotData['quote_number']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_quotes');

  static Stream<DailyQuotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyQuotesRecord.fromSnapshot(s));

  static Future<DailyQuotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyQuotesRecord.fromSnapshot(s));

  static DailyQuotesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyQuotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyQuotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyQuotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyQuotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyQuotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyQuotesRecordData({
  String? quote,
  String? author,
  int? quoteNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quote': quote,
      'author': author,
      'quote_number': quoteNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyQuotesRecordDocumentEquality implements Equality<DailyQuotesRecord> {
  const DailyQuotesRecordDocumentEquality();

  @override
  bool equals(DailyQuotesRecord? e1, DailyQuotesRecord? e2) {
    return e1?.quote == e2?.quote &&
        e1?.author == e2?.author &&
        e1?.quoteNumber == e2?.quoteNumber;
  }

  @override
  int hash(DailyQuotesRecord? e) =>
      const ListEquality().hash([e?.quote, e?.author, e?.quoteNumber]);

  @override
  bool isValidKey(Object? o) => o is DailyQuotesRecord;
}
