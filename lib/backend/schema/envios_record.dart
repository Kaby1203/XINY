import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnviosRecord extends FirestoreRecord {
  EnviosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "pedido_id" field.
  String? _pedidoId;
  String get pedidoId => _pedidoId ?? '';
  bool hasPedidoId() => _pedidoId != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "codigo_seguimiento" field.
  String? _codigoSeguimiento;
  String get codigoSeguimiento => _codigoSeguimiento ?? '';
  bool hasCodigoSeguimiento() => _codigoSeguimiento != null;

  void _initializeFields() {
    _pedidoId = snapshotData['pedido_id'] as String?;
    _estado = snapshotData['estado'] as String?;
    _codigoSeguimiento = snapshotData['codigo_seguimiento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('envios');

  static Stream<EnviosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnviosRecord.fromSnapshot(s));

  static Future<EnviosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnviosRecord.fromSnapshot(s));

  static EnviosRecord fromSnapshot(DocumentSnapshot snapshot) => EnviosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnviosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnviosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnviosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnviosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnviosRecordData({
  String? pedidoId,
  String? estado,
  String? codigoSeguimiento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pedido_id': pedidoId,
      'estado': estado,
      'codigo_seguimiento': codigoSeguimiento,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnviosRecordDocumentEquality implements Equality<EnviosRecord> {
  const EnviosRecordDocumentEquality();

  @override
  bool equals(EnviosRecord? e1, EnviosRecord? e2) {
    return e1?.pedidoId == e2?.pedidoId &&
        e1?.estado == e2?.estado &&
        e1?.codigoSeguimiento == e2?.codigoSeguimiento;
  }

  @override
  int hash(EnviosRecord? e) =>
      const ListEquality().hash([e?.pedidoId, e?.estado, e?.codigoSeguimiento]);

  @override
  bool isValidKey(Object? o) => o is EnviosRecord;
}
