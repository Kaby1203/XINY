import '/flutter_flow/flutter_flow_util.dart';
import 'envio_widget.dart' show EnvioWidget;
import 'package:flutter/material.dart';

class EnvioModel extends FlutterFlowModel<EnvioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtDireccion widget.
  FocusNode? txtDireccionFocusNode;
  TextEditingController? txtDireccionTextController;
  String? Function(BuildContext, String?)? txtDireccionTextControllerValidator;
  // State field(s) for txtCiudad widget.
  FocusNode? txtCiudadFocusNode;
  TextEditingController? txtCiudadTextController;
  String? Function(BuildContext, String?)? txtCiudadTextControllerValidator;
  // State field(s) for txtCodigoPostal widget.
  FocusNode? txtCodigoPostalFocusNode;
  TextEditingController? txtCodigoPostalTextController;
  String? Function(BuildContext, String?)?
      txtCodigoPostalTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtDireccionFocusNode?.dispose();
    txtDireccionTextController?.dispose();

    txtCiudadFocusNode?.dispose();
    txtCiudadTextController?.dispose();

    txtCodigoPostalFocusNode?.dispose();
    txtCodigoPostalTextController?.dispose();
  }
}
