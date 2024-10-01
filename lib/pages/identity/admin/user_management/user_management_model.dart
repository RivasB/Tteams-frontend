import '/backend/api_requests/api_calls.dart';
import '/component/admin/tteaams_menu_admin/tteaams_menu_admin_widget.dart';
import '/component/tteams_top_bar/tteams_top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_management_widget.dart' show UserManagementWidget;
import 'package:flutter/material.dart';

class UserManagementModel extends FlutterFlowModel<UserManagementWidget> {
  ///  Local state fields for this page.

  int pageElements = 20;

  int pageNumbrer = 1;

  int totalElements = 0;

  ///  State fields for stateful widgets in this page.

  // Model for tteaamsMenuAdmin component.
  late TteaamsMenuAdminModel tteaamsMenuAdminModel;
  // Model for tteamsTopBar component.
  late TteamsTopBarModel tteamsTopBarModel;
  // Stores action output result for [Backend Call - API (deleteUserBackoffice)] action in IconButton widget.
  ApiCallResponse? deleteResponse;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // State field(s) for DropDown widget.
  int? dropDownValue2;
  FormFieldController<int>? dropDownValueController2;

  @override
  void initState(BuildContext context) {
    tteaamsMenuAdminModel = createModel(context, () => TteaamsMenuAdminModel());
    tteamsTopBarModel = createModel(context, () => TteamsTopBarModel());
  }

  @override
  void dispose() {
    tteaamsMenuAdminModel.dispose();
    tteamsTopBarModel.dispose();
  }
}
