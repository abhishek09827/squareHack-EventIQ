import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BusinessRecord extends FirestoreRecord {
  BusinessRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "caption" field.
  String? _caption;
  String get caption => _caption ?? '';
  bool hasCaption() => _caption != null;

  // "eventsConducted" field.
  List<DocumentReference>? _eventsConducted;
  List<DocumentReference> get eventsConducted => _eventsConducted ?? const [];
  bool hasEventsConducted() => _eventsConducted != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isUser" field.
  bool? _isUser;
  bool get isUser => _isUser ?? false;
  bool hasIsUser() => _isUser != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _phone = snapshotData['phone'] as String?;
    _address = snapshotData['address'] as String?;
    _caption = snapshotData['caption'] as String?;
    _eventsConducted = getDataList(snapshotData['eventsConducted']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isUser = snapshotData['isUser'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('business');

  static Stream<BusinessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessRecord.fromSnapshot(s));

  static Future<BusinessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessRecord.fromSnapshot(s));

  static BusinessRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessRecordData({
  String? name,
  String? email,
  String? phone,
  String? address,
  String? caption,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'caption': caption,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isUser': isUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusinessRecordDocumentEquality implements Equality<BusinessRecord> {
  const BusinessRecordDocumentEquality();

  @override
  bool equals(BusinessRecord? e1, BusinessRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.phone == e2?.phone &&
        e1?.address == e2?.address &&
        e1?.caption == e2?.caption &&
        listEquality.equals(e1?.eventsConducted, e2?.eventsConducted) &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isUser == e2?.isUser;
  }

  @override
  int hash(BusinessRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.phone,
        e?.address,
        e?.caption,
        e?.eventsConducted,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isUser
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessRecord;
}
