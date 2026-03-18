import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_cliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  bool hasNombreCliente() => _nombreCliente != null;

  // "telefono_cliente" field.
  String? _telefonoCliente;
  String get telefonoCliente => _telefonoCliente ?? '';
  bool hasTelefonoCliente() => _telefonoCliente != null;

  // "correo_cliente" field.
  String? _correoCliente;
  String get correoCliente => _correoCliente ?? '';
  bool hasCorreoCliente() => _correoCliente != null;

  // "direccion_envio" field.
  String? _direccionEnvio;
  String get direccionEnvio => _direccionEnvio ?? '';
  bool hasDireccionEnvio() => _direccionEnvio != null;

  // "fecha_pedido" field.
  DateTime? _fechaPedido;
  DateTime? get fechaPedido => _fechaPedido;
  bool hasFechaPedido() => _fechaPedido != null;

  // "productos" field.
  String? _productos;
  String get productos => _productos ?? '';
  bool hasProductos() => _productos != null;

  void _initializeFields() {
    _nombreCliente = snapshotData['nombre_cliente'] as String?;
    _telefonoCliente = snapshotData['telefono_cliente'] as String?;
    _correoCliente = snapshotData['correo_cliente'] as String?;
    _direccionEnvio = snapshotData['direccion_envio'] as String?;
    _fechaPedido = snapshotData['fecha_pedido'] as DateTime?;
    _productos = snapshotData['productos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  String? nombreCliente,
  String? telefonoCliente,
  String? correoCliente,
  String? direccionEnvio,
  DateTime? fechaPedido,
  String? productos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_cliente': nombreCliente,
      'telefono_cliente': telefonoCliente,
      'correo_cliente': correoCliente,
      'direccion_envio': direccionEnvio,
      'fecha_pedido': fechaPedido,
      'productos': productos,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    return e1?.nombreCliente == e2?.nombreCliente &&
        e1?.telefonoCliente == e2?.telefonoCliente &&
        e1?.correoCliente == e2?.correoCliente &&
        e1?.direccionEnvio == e2?.direccionEnvio &&
        e1?.fechaPedido == e2?.fechaPedido &&
        e1?.productos == e2?.productos;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.nombreCliente,
        e?.telefonoCliente,
        e?.correoCliente,
        e?.direccionEnvio,
        e?.fechaPedido,
        e?.productos
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
