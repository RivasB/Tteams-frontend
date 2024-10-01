import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_update_widget.dart' show UserUpdateWidget;
import 'package:flutter/material.dart';

class UserUpdateModel extends FlutterFlowModel<UserUpdateWidget> {
  ///  Local state fields for this component.

  List<String> organizationsIds = [];
  void addToOrganizationsIds(String item) => organizationsIds.add(item);
  void removeFromOrganizationsIds(String item) => organizationsIds.remove(item);
  void removeAtIndexFromOrganizationsIds(int index) =>
      organizationsIds.removeAt(index);
  void insertAtIndexInOrganizationsIds(int index, String item) =>
      organizationsIds.insert(index, item);
  void updateOrganizationsIdsAtIndex(int index, Function(String) updateFn) =>
      organizationsIds[index] = updateFn(organizationsIds[index]);

  List<String> organizationsNames = [];
  void addToOrganizationsNames(String item) => organizationsNames.add(item);
  void removeFromOrganizationsNames(String item) =>
      organizationsNames.remove(item);
  void removeAtIndexFromOrganizationsNames(int index) =>
      organizationsNames.removeAt(index);
  void insertAtIndexInOrganizationsNames(int index, String item) =>
      organizationsNames.insert(index, item);
  void updateOrganizationsNamesAtIndex(int index, Function(String) updateFn) =>
      organizationsNames[index] = updateFn(organizationsNames[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getAllOrganizations)] action in userUpdate widget.
  ApiCallResponse? apiResult90x;
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
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
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

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
