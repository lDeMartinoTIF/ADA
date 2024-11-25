import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "cognome" field.
  String? _cognome;
  String get cognome => _cognome ?? '';
  bool hasCognome() => _cognome != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "data_nascita" field.
  DateTime? _dataNascita;
  DateTime? get dataNascita => _dataNascita;
  bool hasDataNascita() => _dataNascita != null;

  // "sesso" field.
  String? _sesso;
  String get sesso => _sesso ?? '';
  bool hasSesso() => _sesso != null;

  // "luogo_nascita" field.
  String? _luogoNascita;
  String get luogoNascita => _luogoNascita ?? '';
  bool hasLuogoNascita() => _luogoNascita != null;

  // "num_cel" field.
  String? _numCel;
  String get numCel => _numCel ?? '';
  bool hasNumCel() => _numCel != null;

  // "num_cel_wa" field.
  String? _numCelWa;
  String get numCelWa => _numCelWa ?? '';
  bool hasNumCelWa() => _numCelWa != null;

  // "nome_azienda" field.
  String? _nomeAzienda;
  String get nomeAzienda => _nomeAzienda ?? '';
  bool hasNomeAzienda() => _nomeAzienda != null;

  // "via_azienda" field.
  String? _viaAzienda;
  String get viaAzienda => _viaAzienda ?? '';
  bool hasViaAzienda() => _viaAzienda != null;

  // "citta_azienda" field.
  String? _cittaAzienda;
  String get cittaAzienda => _cittaAzienda ?? '';
  bool hasCittaAzienda() => _cittaAzienda != null;

  // "provincia_azienda" field.
  String? _provinciaAzienda;
  String get provinciaAzienda => _provinciaAzienda ?? '';
  bool hasProvinciaAzienda() => _provinciaAzienda != null;

  // "codice_fiscale" field.
  String? _codiceFiscale;
  String get codiceFiscale => _codiceFiscale ?? '';
  bool hasCodiceFiscale() => _codiceFiscale != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _bio = snapshotData['bio'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _nome = snapshotData['nome'] as String?;
    _cognome = snapshotData['cognome'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dataNascita = snapshotData['data_nascita'] as DateTime?;
    _sesso = snapshotData['sesso'] as String?;
    _luogoNascita = snapshotData['luogo_nascita'] as String?;
    _numCel = snapshotData['num_cel'] as String?;
    _numCelWa = snapshotData['num_cel_wa'] as String?;
    _nomeAzienda = snapshotData['nome_azienda'] as String?;
    _viaAzienda = snapshotData['via_azienda'] as String?;
    _cittaAzienda = snapshotData['citta_azienda'] as String?;
    _provinciaAzienda = snapshotData['provincia_azienda'] as String?;
    _codiceFiscale = snapshotData['codice_fiscale'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  DateTime? lastActive,
  String? status,
  String? bio,
  DateTime? createdAt,
  String? role,
  String? nome,
  String? cognome,
  String? phoneNumber,
  DateTime? dataNascita,
  String? sesso,
  String? luogoNascita,
  String? numCel,
  String? numCelWa,
  String? nomeAzienda,
  String? viaAzienda,
  String? cittaAzienda,
  String? provinciaAzienda,
  String? codiceFiscale,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'lastActive': lastActive,
      'status': status,
      'bio': bio,
      'createdAt': createdAt,
      'role': role,
      'nome': nome,
      'cognome': cognome,
      'phone_number': phoneNumber,
      'data_nascita': dataNascita,
      'sesso': sesso,
      'luogo_nascita': luogoNascita,
      'num_cel': numCel,
      'num_cel_wa': numCelWa,
      'nome_azienda': nomeAzienda,
      'via_azienda': viaAzienda,
      'citta_azienda': cittaAzienda,
      'provincia_azienda': provinciaAzienda,
      'codice_fiscale': codiceFiscale,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.lastActive == e2?.lastActive &&
        e1?.status == e2?.status &&
        e1?.bio == e2?.bio &&
        e1?.createdAt == e2?.createdAt &&
        e1?.role == e2?.role &&
        e1?.nome == e2?.nome &&
        e1?.cognome == e2?.cognome &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dataNascita == e2?.dataNascita &&
        e1?.sesso == e2?.sesso &&
        e1?.luogoNascita == e2?.luogoNascita &&
        e1?.numCel == e2?.numCel &&
        e1?.numCelWa == e2?.numCelWa &&
        e1?.nomeAzienda == e2?.nomeAzienda &&
        e1?.viaAzienda == e2?.viaAzienda &&
        e1?.cittaAzienda == e2?.cittaAzienda &&
        e1?.provinciaAzienda == e2?.provinciaAzienda &&
        e1?.codiceFiscale == e2?.codiceFiscale;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.lastActive,
        e?.status,
        e?.bio,
        e?.createdAt,
        e?.role,
        e?.nome,
        e?.cognome,
        e?.phoneNumber,
        e?.dataNascita,
        e?.sesso,
        e?.luogoNascita,
        e?.numCel,
        e?.numCelWa,
        e?.nomeAzienda,
        e?.viaAzienda,
        e?.cittaAzienda,
        e?.provinciaAzienda,
        e?.codiceFiscale
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
