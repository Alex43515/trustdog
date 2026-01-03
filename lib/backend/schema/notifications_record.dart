import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "postID" field.
  DocumentReference? _postID;
  DocumentReference? get postID => _postID;
  bool hasPostID() => _postID != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "notificationType" field.
  String? _notificationType;
  String get notificationType => _notificationType ?? '';
  bool hasNotificationType() => _notificationType != null;

  // "postIDDogs" field.
  DocumentReference? _postIDDogs;
  DocumentReference? get postIDDogs => _postIDDogs;
  bool hasPostIDDogs() => _postIDDogs != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _postID = snapshotData['postID'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _notificationType = snapshotData['notificationType'] as String?;
    _postIDDogs = snapshotData['postIDDogs'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  DocumentReference? userID,
  DocumentReference? postID,
  DateTime? time,
  String? notificationType,
  DocumentReference? postIDDogs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'postID': postID,
      'time': time,
      'notificationType': notificationType,
      'postIDDogs': postIDDogs,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.postID == e2?.postID &&
        e1?.time == e2?.time &&
        e1?.notificationType == e2?.notificationType &&
        e1?.postIDDogs == e2?.postIDDogs;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash(
      [e?.userID, e?.postID, e?.time, e?.notificationType, e?.postIDDogs]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
