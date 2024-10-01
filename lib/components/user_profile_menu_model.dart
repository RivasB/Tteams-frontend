import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_profile_menu_widget.dart' show UserProfileMenuWidget;
import 'package:flutter/material.dart';

class UserProfileMenuModel extends FlutterFlowModel<UserProfileMenuWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateUser)] action in Button widget.
  ApiCallResponse? apiResultql6;
  // State field(s) for passwordActual widget.
  FocusNode? passwordActualFocusNode;
  TextEditingController? passwordActualTextController;
  late bool passwordActualVisibility;
  String? Function(BuildContext, String?)?
      passwordActualTextControllerValidator;
  // State field(s) for passwordNew widget.
  FocusNode? passwordNewFocusNode;
  TextEditingController? passwordNewTextController;
  late bool passwordNewVisibility;
  String? Function(BuildContext, String?)? passwordNewTextControllerValidator;
  // Stores action output result for [Backend Call - API (changePassword)] action in Button widget.
  ApiCallResponse? apiResult73d;

  @override
  void initState(BuildContext context) {
    passwordActualVisibility = false;
    passwordNewVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordActualFocusNode?.dispose();
    passwordActualTextController?.dispose();

    passwordNewFocusNode?.dispose();
    passwordNewTextController?.dispose();
  }
}
