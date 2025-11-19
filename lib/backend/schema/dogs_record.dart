import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DogsRecord extends FirestoreRecord {
  DogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userAssociation" field.
  DocumentReference? _userAssociation;
  DocumentReference? get userAssociation => _userAssociation;
  bool hasUserAssociation() => _userAssociation != null;

  // "dogPhoto" field.
  String? _dogPhoto;
  String get dogPhoto => _dogPhoto ?? '';
  bool hasDogPhoto() => _dogPhoto != null;

  // "dogName" field.
  String? _dogName;
  String get dogName => _dogName ?? '';
  bool hasDogName() => _dogName != null;

  // "dogType" field.
  String? _dogType;
  String get dogType => _dogType ?? '';
  bool hasDogType() => _dogType != null;

  // "dogAge" field.
  String? _dogAge;
  String get dogAge => _dogAge ?? '';
  bool hasDogAge() => _dogAge != null;

  // "dogBio" field.
  String? _dogBio;
  String get dogBio => _dogBio ?? '';
  bool hasDogBio() => _dogBio != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "dogPrice" field.
  int? _dogPrice;
  int get dogPrice => _dogPrice ?? 0;
  bool hasDogPrice() => _dogPrice != null;

  // "isHighlighted" field.
  bool? _isHighlighted;
  bool get isHighlighted => _isHighlighted ?? false;
  bool hasIsHighlighted() => _isHighlighted != null;

  // "post_Videos" field.
  List<String>? _postVideos;
  List<String> get postVideos => _postVideos ?? const [];
  bool hasPostVideos() => _postVideos != null;

  // "post_Images" field.
  List<String>? _postImages;
  List<String> get postImages => _postImages ?? const [];
  bool hasPostImages() => _postImages != null;

  // "dog_location" field.
  LatLng? _dogLocation;
  LatLng? get dogLocation => _dogLocation;
  bool hasDogLocation() => _dogLocation != null;

  // "post_video1" field.
  String? _postVideo1;
  String get postVideo1 => _postVideo1 ?? '';
  bool hasPostVideo1() => _postVideo1 != null;

  // "post_video2" field.
  String? _postVideo2;
  String get postVideo2 => _postVideo2 ?? '';
  bool hasPostVideo2() => _postVideo2 != null;

  // "post_video3" field.
  String? _postVideo3;
  String get postVideo3 => _postVideo3 ?? '';
  bool hasPostVideo3() => _postVideo3 != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "years_months" field.
  String? _yearsMonths;
  String get yearsMonths => _yearsMonths ?? '';
  bool hasYearsMonths() => _yearsMonths != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "pending" field.
  bool? _pending;
  bool get pending => _pending ?? false;
  bool hasPending() => _pending != null;

  // "verified" field.
  bool? _verified;
  bool get verified => _verified ?? false;
  bool hasVerified() => _verified != null;

  // "rejected" field.
  bool? _rejected;
  bool get rejected => _rejected ?? false;
  bool hasRejected() => _rejected != null;

  // "dateSubmit" field.
  DateTime? _dateSubmit;
  DateTime? get dateSubmit => _dateSubmit;
  bool hasDateSubmit() => _dateSubmit != null;

  // "passport" field.
  List<String>? _passport;
  List<String> get passport => _passport ?? const [];
  bool hasPassport() => _passport != null;

  // "microChip" field.
  List<String>? _microChip;
  List<String> get microChip => _microChip ?? const [];
  bool hasMicroChip() => _microChip != null;

  // "pedigree" field.
  List<String>? _pedigree;
  List<String> get pedigree => _pedigree ?? const [];
  bool hasPedigree() => _pedigree != null;

  // "ownerImages" field.
  List<String>? _ownerImages;
  List<String> get ownerImages => _ownerImages ?? const [];
  bool hasOwnerImages() => _ownerImages != null;

  // "rejectReason" field.
  String? _rejectReason;
  String get rejectReason => _rejectReason ?? '';
  bool hasRejectReason() => _rejectReason != null;

  void _initializeFields() {
    _userAssociation = snapshotData['userAssociation'] as DocumentReference?;
    _dogPhoto = snapshotData['dogPhoto'] as String?;
    _dogName = snapshotData['dogName'] as String?;
    _dogType = snapshotData['dogType'] as String?;
    _dogAge = snapshotData['dogAge'] as String?;
    _dogBio = snapshotData['dogBio'] as String?;
    _isVerified = snapshotData['isVerified'] as bool?;
    _dogPrice = castToType<int>(snapshotData['dogPrice']);
    _isHighlighted = snapshotData['isHighlighted'] as bool?;
    _postVideos = getDataList(snapshotData['post_Videos']);
    _postImages = getDataList(snapshotData['post_Images']);
    _dogLocation = snapshotData['dog_location'] as LatLng?;
    _postVideo1 = snapshotData['post_video1'] as String?;
    _postVideo2 = snapshotData['post_video2'] as String?;
    _postVideo3 = snapshotData['post_video3'] as String?;
    _currency = snapshotData['currency'] as String?;
    _yearsMonths = snapshotData['years_months'] as String?;
    _sex = snapshotData['sex'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _pending = snapshotData['pending'] as bool?;
    _verified = snapshotData['verified'] as bool?;
    _rejected = snapshotData['rejected'] as bool?;
    _dateSubmit = snapshotData['dateSubmit'] as DateTime?;
    _passport = getDataList(snapshotData['passport']);
    _microChip = getDataList(snapshotData['microChip']);
    _pedigree = getDataList(snapshotData['pedigree']);
    _ownerImages = getDataList(snapshotData['ownerImages']);
    _rejectReason = snapshotData['rejectReason'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dogs');

  static Stream<DogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DogsRecord.fromSnapshot(s));

  static Future<DogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DogsRecord.fromSnapshot(s));

  static DogsRecord fromSnapshot(DocumentSnapshot snapshot) => DogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDogsRecordData({
  DocumentReference? userAssociation,
  String? dogPhoto,
  String? dogName,
  String? dogType,
  String? dogAge,
  String? dogBio,
  bool? isVerified,
  int? dogPrice,
  bool? isHighlighted,
  LatLng? dogLocation,
  String? postVideo1,
  String? postVideo2,
  String? postVideo3,
  String? currency,
  String? yearsMonths,
  String? sex,
  DateTime? date,
  bool? pending,
  bool? verified,
  bool? rejected,
  DateTime? dateSubmit,
  String? rejectReason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userAssociation': userAssociation,
      'dogPhoto': dogPhoto,
      'dogName': dogName,
      'dogType': dogType,
      'dogAge': dogAge,
      'dogBio': dogBio,
      'isVerified': isVerified,
      'dogPrice': dogPrice,
      'isHighlighted': isHighlighted,
      'dog_location': dogLocation,
      'post_video1': postVideo1,
      'post_video2': postVideo2,
      'post_video3': postVideo3,
      'currency': currency,
      'years_months': yearsMonths,
      'sex': sex,
      'date': date,
      'pending': pending,
      'verified': verified,
      'rejected': rejected,
      'dateSubmit': dateSubmit,
      'rejectReason': rejectReason,
    }.withoutNulls,
  );

  return firestoreData;
}

class DogsRecordDocumentEquality implements Equality<DogsRecord> {
  const DogsRecordDocumentEquality();

  @override
  bool equals(DogsRecord? e1, DogsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userAssociation == e2?.userAssociation &&
        e1?.dogPhoto == e2?.dogPhoto &&
        e1?.dogName == e2?.dogName &&
        e1?.dogType == e2?.dogType &&
        e1?.dogAge == e2?.dogAge &&
        e1?.dogBio == e2?.dogBio &&
        e1?.isVerified == e2?.isVerified &&
        e1?.dogPrice == e2?.dogPrice &&
        e1?.isHighlighted == e2?.isHighlighted &&
        listEquality.equals(e1?.postVideos, e2?.postVideos) &&
        listEquality.equals(e1?.postImages, e2?.postImages) &&
        e1?.dogLocation == e2?.dogLocation &&
        e1?.postVideo1 == e2?.postVideo1 &&
        e1?.postVideo2 == e2?.postVideo2 &&
        e1?.postVideo3 == e2?.postVideo3 &&
        e1?.currency == e2?.currency &&
        e1?.yearsMonths == e2?.yearsMonths &&
        e1?.sex == e2?.sex &&
        e1?.date == e2?.date &&
        e1?.pending == e2?.pending &&
        e1?.verified == e2?.verified &&
        e1?.rejected == e2?.rejected &&
        e1?.dateSubmit == e2?.dateSubmit &&
        listEquality.equals(e1?.passport, e2?.passport) &&
        listEquality.equals(e1?.microChip, e2?.microChip) &&
        listEquality.equals(e1?.pedigree, e2?.pedigree) &&
        listEquality.equals(e1?.ownerImages, e2?.ownerImages) &&
        e1?.rejectReason == e2?.rejectReason;
  }

  @override
  int hash(DogsRecord? e) => const ListEquality().hash([
        e?.userAssociation,
        e?.dogPhoto,
        e?.dogName,
        e?.dogType,
        e?.dogAge,
        e?.dogBio,
        e?.isVerified,
        e?.dogPrice,
        e?.isHighlighted,
        e?.postVideos,
        e?.postImages,
        e?.dogLocation,
        e?.postVideo1,
        e?.postVideo2,
        e?.postVideo3,
        e?.currency,
        e?.yearsMonths,
        e?.sex,
        e?.date,
        e?.pending,
        e?.verified,
        e?.rejected,
        e?.dateSubmit,
        e?.passport,
        e?.microChip,
        e?.pedigree,
        e?.ownerImages,
        e?.rejectReason
      ]);

  @override
  bool isValidKey(Object? o) => o is DogsRecord;
}
