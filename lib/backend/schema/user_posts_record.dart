import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserPostsRecord extends FirestoreRecord {
  UserPostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postPhoto" field.
  String? _postPhoto;
  String get postPhoto => _postPhoto ?? '';
  bool hasPostPhoto() => _postPhoto != null;

  // "postTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "postDescription" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "postUser" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "timePosted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "numComments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "dogProfile" field.
  DocumentReference? _dogProfile;
  DocumentReference? get dogProfile => _dogProfile;
  bool hasDogProfile() => _dogProfile != null;

  // "postOwner" field.
  bool? _postOwner;
  bool get postOwner => _postOwner ?? false;
  bool hasPostOwner() => _postOwner != null;

  // "sponsored" field.
  bool? _sponsored;
  bool get sponsored => _sponsored ?? false;
  bool hasSponsored() => _sponsored != null;

  // "breed" field.
  String? _breed;
  String get breed => _breed ?? '';
  bool hasBreed() => _breed != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "post_video" field.
  String? _postVideo;
  String get postVideo => _postVideo ?? '';
  bool hasPostVideo() => _postVideo != null;

  // "dogProfiles" field.
  List<DocumentReference>? _dogProfiles;
  List<DocumentReference> get dogProfiles => _dogProfiles ?? const [];
  bool hasDogProfiles() => _dogProfiles != null;

  // "locationName" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  bool hasCurrency() => _currency != null;

  // "months_years" field.
  String? _monthsYears;
  String get monthsYears => _monthsYears ?? '';
  bool hasMonthsYears() => _monthsYears != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "ageMin" field.
  double? _ageMin;
  double get ageMin => _ageMin ?? 0.0;
  bool hasAgeMin() => _ageMin != null;

  // "ageMax" field.
  double? _ageMax;
  double get ageMax => _ageMax ?? 0.0;
  bool hasAgeMax() => _ageMax != null;

  // "priceMin" field.
  double? _priceMin;
  double get priceMin => _priceMin ?? 0.0;
  bool hasPriceMin() => _priceMin != null;

  // "priceMax" field.
  double? _priceMax;
  double get priceMax => _priceMax ?? 0.0;
  bool hasPriceMax() => _priceMax != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "videoThumbnail" field.
  String? _videoThumbnail;
  String get videoThumbnail => _videoThumbnail ?? '';
  bool hasVideoThumbnail() => _videoThumbnail != null;

  // "boostedUntil" field.
  DateTime? _boostedUntil;
  DateTime? get boostedUntil => _boostedUntil;
  bool hasBoostedUntil() => _boostedUntil != null;

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

  // "rejectionReason" field.
  String? _rejectionReason;
  String get rejectionReason => _rejectionReason ?? '';
  bool hasRejectionReason() => _rejectionReason != null;

  void _initializeFields() {
    _postPhoto = snapshotData['postPhoto'] as String?;
    _postTitle = snapshotData['postTitle'] as String?;
    _postDescription = snapshotData['postDescription'] as String?;
    _postUser = snapshotData['postUser'] as DocumentReference?;
    _timePosted = snapshotData['timePosted'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
    _numComments = castToType<int>(snapshotData['numComments']);
    _dogProfile = snapshotData['dogProfile'] as DocumentReference?;
    _postOwner = snapshotData['postOwner'] as bool?;
    _sponsored = snapshotData['sponsored'] as bool?;
    _breed = snapshotData['breed'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _postVideo = snapshotData['post_video'] as String?;
    _dogProfiles = getDataList(snapshotData['dogProfiles']);
    _locationName = snapshotData['locationName'] as String?;
    _currency = snapshotData['currency'] as String?;
    _monthsYears = snapshotData['months_years'] as String?;
    _sex = snapshotData['sex'] as String?;
    _ageMin = castToType<double>(snapshotData['ageMin']);
    _ageMax = castToType<double>(snapshotData['ageMax']);
    _priceMin = castToType<double>(snapshotData['priceMin']);
    _priceMax = castToType<double>(snapshotData['priceMax']);
    _age = castToType<int>(snapshotData['age']);
    _price = castToType<int>(snapshotData['price']);
    _videoThumbnail = snapshotData['videoThumbnail'] as String?;
    _boostedUntil = snapshotData['boostedUntil'] as DateTime?;
    _pending = snapshotData['pending'] as bool?;
    _verified = snapshotData['verified'] as bool?;
    _rejected = snapshotData['rejected'] as bool?;
    _rejectionReason = snapshotData['rejectionReason'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userPosts');

  static Stream<UserPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPostsRecord.fromSnapshot(s));

  static Future<UserPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPostsRecord.fromSnapshot(s));

  static UserPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPostsRecord._(reference, mapFromFirestore(data));

  static UserPostsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UserPostsRecord.getDocumentFromData(
        {
          'postPhoto': snapshot.data['postPhoto'],
          'postTitle': snapshot.data['postTitle'],
          'postDescription': snapshot.data['postDescription'],
          'postUser': convertAlgoliaParam(
            snapshot.data['postUser'],
            ParamType.DocumentReference,
            false,
          ),
          'timePosted': convertAlgoliaParam(
            snapshot.data['timePosted'],
            ParamType.DateTime,
            false,
          ),
          'likes': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['likes'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'numComments': convertAlgoliaParam(
            snapshot.data['numComments'],
            ParamType.int,
            false,
          ),
          'dogProfile': convertAlgoliaParam(
            snapshot.data['dogProfile'],
            ParamType.DocumentReference,
            false,
          ),
          'postOwner': snapshot.data['postOwner'],
          'sponsored': snapshot.data['sponsored'],
          'breed': snapshot.data['breed'],
          'location': convertAlgoliaParam(
            snapshot.data,
            ParamType.LatLng,
            false,
          ),
          'post_video': snapshot.data['post_video'],
          'dogProfiles': safeGet(
            () => convertAlgoliaParam<DocumentReference>(
              snapshot.data['dogProfiles'],
              ParamType.DocumentReference,
              true,
            ).toList(),
          ),
          'locationName': snapshot.data['locationName'],
          'currency': snapshot.data['currency'],
          'months_years': snapshot.data['months_years'],
          'sex': snapshot.data['sex'],
          'ageMin': convertAlgoliaParam(
            snapshot.data['ageMin'],
            ParamType.double,
            false,
          ),
          'ageMax': convertAlgoliaParam(
            snapshot.data['ageMax'],
            ParamType.double,
            false,
          ),
          'priceMin': convertAlgoliaParam(
            snapshot.data['priceMin'],
            ParamType.double,
            false,
          ),
          'priceMax': convertAlgoliaParam(
            snapshot.data['priceMax'],
            ParamType.double,
            false,
          ),
          'age': convertAlgoliaParam(
            snapshot.data['age'],
            ParamType.int,
            false,
          ),
          'price': convertAlgoliaParam(
            snapshot.data['price'],
            ParamType.int,
            false,
          ),
          'videoThumbnail': snapshot.data['videoThumbnail'],
          'boostedUntil': convertAlgoliaParam(
            snapshot.data['boostedUntil'],
            ParamType.DateTime,
            false,
          ),
          'pending': snapshot.data['pending'],
          'verified': snapshot.data['verified'],
          'rejected': snapshot.data['rejected'],
          'rejectionReason': snapshot.data['rejectionReason'],
        },
        UserPostsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UserPostsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'userPosts',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UserPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPostsRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  DocumentReference? dogProfile,
  bool? postOwner,
  bool? sponsored,
  String? breed,
  LatLng? location,
  String? postVideo,
  String? locationName,
  String? currency,
  String? monthsYears,
  String? sex,
  double? ageMin,
  double? ageMax,
  double? priceMin,
  double? priceMax,
  int? age,
  int? price,
  String? videoThumbnail,
  DateTime? boostedUntil,
  bool? pending,
  bool? verified,
  bool? rejected,
  String? rejectionReason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postPhoto': postPhoto,
      'postTitle': postTitle,
      'postDescription': postDescription,
      'postUser': postUser,
      'timePosted': timePosted,
      'numComments': numComments,
      'dogProfile': dogProfile,
      'postOwner': postOwner,
      'sponsored': sponsored,
      'breed': breed,
      'location': location,
      'post_video': postVideo,
      'locationName': locationName,
      'currency': currency,
      'months_years': monthsYears,
      'sex': sex,
      'ageMin': ageMin,
      'ageMax': ageMax,
      'priceMin': priceMin,
      'priceMax': priceMax,
      'age': age,
      'price': price,
      'videoThumbnail': videoThumbnail,
      'boostedUntil': boostedUntil,
      'pending': pending,
      'verified': verified,
      'rejected': rejected,
      'rejectionReason': rejectionReason,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPostsRecordDocumentEquality implements Equality<UserPostsRecord> {
  const UserPostsRecordDocumentEquality();

  @override
  bool equals(UserPostsRecord? e1, UserPostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postPhoto == e2?.postPhoto &&
        e1?.postTitle == e2?.postTitle &&
        e1?.postDescription == e2?.postDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.numComments == e2?.numComments &&
        e1?.dogProfile == e2?.dogProfile &&
        e1?.postOwner == e2?.postOwner &&
        e1?.sponsored == e2?.sponsored &&
        e1?.breed == e2?.breed &&
        e1?.location == e2?.location &&
        e1?.postVideo == e2?.postVideo &&
        listEquality.equals(e1?.dogProfiles, e2?.dogProfiles) &&
        e1?.locationName == e2?.locationName &&
        e1?.currency == e2?.currency &&
        e1?.monthsYears == e2?.monthsYears &&
        e1?.sex == e2?.sex &&
        e1?.ageMin == e2?.ageMin &&
        e1?.ageMax == e2?.ageMax &&
        e1?.priceMin == e2?.priceMin &&
        e1?.priceMax == e2?.priceMax &&
        e1?.age == e2?.age &&
        e1?.price == e2?.price &&
        e1?.videoThumbnail == e2?.videoThumbnail &&
        e1?.boostedUntil == e2?.boostedUntil &&
        e1?.pending == e2?.pending &&
        e1?.verified == e2?.verified &&
        e1?.rejected == e2?.rejected &&
        e1?.rejectionReason == e2?.rejectionReason;
  }

  @override
  int hash(UserPostsRecord? e) => const ListEquality().hash([
        e?.postPhoto,
        e?.postTitle,
        e?.postDescription,
        e?.postUser,
        e?.timePosted,
        e?.likes,
        e?.numComments,
        e?.dogProfile,
        e?.postOwner,
        e?.sponsored,
        e?.breed,
        e?.location,
        e?.postVideo,
        e?.dogProfiles,
        e?.locationName,
        e?.currency,
        e?.monthsYears,
        e?.sex,
        e?.ageMin,
        e?.ageMax,
        e?.priceMin,
        e?.priceMax,
        e?.age,
        e?.price,
        e?.videoThumbnail,
        e?.boostedUntil,
        e?.pending,
        e?.verified,
        e?.rejected,
        e?.rejectionReason
      ]);

  @override
  bool isValidKey(Object? o) => o is UserPostsRecord;
}
