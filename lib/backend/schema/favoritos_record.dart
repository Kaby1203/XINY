import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoritosRecord extends FirestoreRecord {
  FavoritosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario_id" field.
  String? _usuarioId;
  String get usuarioId => _usuarioId ?? '';
  bool hasUsuarioId() => _usuarioId != null;

  // "producto_id" field.
  String? _productoId;
  String get productoId => _productoId ?? '';
  bool hasProductoId() => _productoId != null;

  void _initializeFields() {
    _usuarioId = snapshotData['usuario_id'] as String?;
    _productoId = snapshotData['producto_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favoritos');

  static Stream<FavoritosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FavoritosRecord.fromSnapshot(s));

  static Future<FavoritosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FavoritosRecord.fromSnapshot(s));

  static FavoritosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FavoritosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FavoritosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FavoritosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FavoritosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FavoritosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFavoritosRecordData({
  String? usuarioId,
  String? productoId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario_id': usuarioId,
      'producto_id': productoId,
    }.withoutNulls,
  );

  return firestoreData;
}

class FavoritosRecordDocumentEquality implements Equality<FavoritosRecord> {
  const FavoritosRecordDocumentEquality();

  @override
  bool equals(FavoritosRecord? e1, FavoritosRecord? e2) {
    return e1?.usuarioId == e2?.usuarioId && e1?.productoId == e2?.productoId;
  }

  @override
  int hash(FavoritosRecord? e) =>
      const ListEquality().hash([e?.usuarioId, e?.productoId]);

  @override
  bool isValidKey(Object? o) => o is FavoritosRecord;
}
