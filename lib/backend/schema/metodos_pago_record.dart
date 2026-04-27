import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetodosPagoRecord extends FirestoreRecord {
  MetodosPagoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "detalles" field.
  String? _detalles;
  String get detalles => _detalles ?? '';
  bool hasDetalles() => _detalles != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _detalles = snapshotData['detalles'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metodos_pago');

  static Stream<MetodosPagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetodosPagoRecord.fromSnapshot(s));

  static Future<MetodosPagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetodosPagoRecord.fromSnapshot(s));

  static MetodosPagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetodosPagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetodosPagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetodosPagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetodosPagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetodosPagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetodosPagoRecordData({
  String? tipo,
  String? detalles,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'detalles': detalles,
    }.withoutNulls,
  );

  return firestoreData;
}

class MetodosPagoRecordDocumentEquality implements Equality<MetodosPagoRecord> {
  const MetodosPagoRecordDocumentEquality();

  @override
  bool equals(MetodosPagoRecord? e1, MetodosPagoRecord? e2) {
    return e1?.tipo == e2?.tipo && e1?.detalles == e2?.detalles;
  }

  @override
  int hash(MetodosPagoRecord? e) =>
      const ListEquality().hash([e?.tipo, e?.detalles]);

  @override
  bool isValidKey(Object? o) => o is MetodosPagoRecord;
}
