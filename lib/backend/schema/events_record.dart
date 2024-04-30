import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "conductedby" field.
  DocumentReference? _conductedby;
  DocumentReference? get conductedby => _conductedby;
  bool hasConductedby() => _conductedby != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "dattime" field.
  DateTime? _dattime;
  DateTime? get dattime => _dattime;
  bool hasDattime() => _dattime != null;

  // "refundPolicy" field.
  String? _refundPolicy;
  String get refundPolicy => _refundPolicy ?? '';
  bool hasRefundPolicy() => _refundPolicy != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "ticketsAvailable" field.
  int? _ticketsAvailable;
  int get ticketsAvailable => _ticketsAvailable ?? 0;
  bool hasTicketsAvailable() => _ticketsAvailable != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "hashtags" field.
  List<String>? _hashtags;
  List<String> get hashtags => _hashtags ?? const [];
  bool hasHashtags() => _hashtags != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _conductedby = snapshotData['conductedby'] as DocumentReference?;
    _location = snapshotData['location'] as String?;
    _dattime = snapshotData['dattime'] as DateTime?;
    _refundPolicy = snapshotData['refundPolicy'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _ticketsAvailable = castToType<int>(snapshotData['ticketsAvailable']);
    _about = snapshotData['about'] as String?;
    _hashtags = getDataList(snapshotData['hashtags']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? name,
  DocumentReference? conductedby,
  String? location,
  DateTime? dattime,
  String? refundPolicy,
  int? price,
  int? ticketsAvailable,
  String? about,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'conductedby': conductedby,
      'location': location,
      'dattime': dattime,
      'refundPolicy': refundPolicy,
      'price': price,
      'ticketsAvailable': ticketsAvailable,
      'about': about,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.conductedby == e2?.conductedby &&
        e1?.location == e2?.location &&
        e1?.dattime == e2?.dattime &&
        e1?.refundPolicy == e2?.refundPolicy &&
        e1?.price == e2?.price &&
        e1?.ticketsAvailable == e2?.ticketsAvailable &&
        e1?.about == e2?.about &&
        listEquality.equals(e1?.hashtags, e2?.hashtags) &&
        e1?.image == e2?.image;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.conductedby,
        e?.location,
        e?.dattime,
        e?.refundPolicy,
        e?.price,
        e?.ticketsAvailable,
        e?.about,
        e?.hashtags,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
