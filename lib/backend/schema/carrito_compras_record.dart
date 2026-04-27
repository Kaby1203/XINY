import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoComprasRecord extends FirestoreRecord {
  CarritoComprasRecord._(
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

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _usuarioId = snapshotData['usuario_id'] as String?;
    _productoId = snapshotData['producto_id'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito_compras');

  static Stream<CarritoComprasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoComprasRecord.fromSnapshot(s));

  static Future<CarritoComprasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoComprasRecord.fromSnapshot(s));

  static CarritoComprasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoComprasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoComprasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoComprasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoComprasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoComprasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoComprasRecordData({
  String? usuarioId,
  String? productoId,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario_id': usuarioId,
      'producto_id': productoId,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoComprasRecordDocumentEquality
    implements Equality<CarritoComprasRecord> {
  const CarritoComprasRecordDocumentEquality();

  @override
  bool equals(CarritoComprasRecord? e1, CarritoComprasRecord? e2) {
    return e1?.usuarioId == e2?.usuarioId &&
        e1?.productoId == e2?.productoId &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(CarritoComprasRecord? e) =>
      const ListEquality().hash([e?.usuarioId, e?.productoId, e?.cantidad]);

  @override
  bool isValidKey(Object? o) => o is CarritoComprasRecord;
}
