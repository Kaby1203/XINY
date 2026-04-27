import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_registro_widget.dart' show LoginRegistroWidget;
import 'package:flutter/material.dart';

class LoginRegistroModel extends FlutterFlowModel<LoginRegistroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for crear_correo widget.
  FocusNode? crearCorreoFocusNode;
  TextEditingController? crearCorreoTextController;
  String? Function(BuildContext, String?)? crearCorreoTextControllerValidator;
  // State field(s) for crear_contra widget.
  FocusNode? crearContraFocusNode;
  TextEditingController? crearContraTextController;
  late bool crearContraVisibility;
  String? Function(BuildContext, String?)? crearContraTextControllerValidator;
  // State field(s) for Correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  // State field(s) for Contra widget.
  FocusNode? contraFocusNode;
  TextEditingController? contraTextController;
  late bool contraVisibility;
  String? Function(BuildContext, String?)? contraTextControllerValidator;

  @override
  void initState(BuildContext context) {
    crearContraVisibility = false;
    contraVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    crearCorreoFocusNode?.dispose();
    crearCorreoTextController?.dispose();

    crearContraFocusNode?.dispose();
    crearContraTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();

    contraFocusNode?.dispose();
    contraTextController?.dispose();
  }
}
