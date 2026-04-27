import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturasRecord extends FirestoreRecord {
  FacturasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pedido_id" field.
  String? _pedidoId;
  String get pedidoId => _pedidoId ?? '';
  bool hasPedidoId() => _pedidoId != null;

  // "total" field.
  String? _total;
  String get total => _total ?? '';
  bool hasTotal() => _total != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "url_factura_pdf" field.
  String? _urlFacturaPdf;
  String get urlFacturaPdf => _urlFacturaPdf ?? '';
  bool hasUrlFacturaPdf() => _urlFacturaPdf != null;

  void _initializeFields() {
    _pedidoId = snapshotData['pedido_id'] as String?;
    _total = snapshotData['total'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _urlFacturaPdf = snapshotData['url_factura_pdf'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facturas');

  static Stream<FacturasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturasRecord.fromSnapshot(s));

  static Future<FacturasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturasRecord.fromSnapshot(s));

  static FacturasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturasRecordData({
  String? pedidoId,
  String? total,
  String? fecha,
  String? urlFacturaPdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pedido_id': pedidoId,
      'total': total,
      'fecha': fecha,
      'url_factura_pdf': urlFacturaPdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturasRecordDocumentEquality implements Equality<FacturasRecord> {
  const FacturasRecordDocumentEquality();

  @override
  bool equals(FacturasRecord? e1, FacturasRecord? e2) {
    return e1?.pedidoId == e2?.pedidoId &&
        e1?.total == e2?.total &&
        e1?.fecha == e2?.fecha &&
        e1?.urlFacturaPdf == e2?.urlFacturaPdf;
  }

  @override
  int hash(FacturasRecord? e) => const ListEquality()
      .hash([e?.pedidoId, e?.total, e?.fecha, e?.urlFacturaPdf]);

  @override
  bool isValidKey(Object? o) => o is FacturasRecord;
}
