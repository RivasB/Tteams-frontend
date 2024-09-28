import '/component/admin/tteaams_menu_admin/tteaams_menu_admin_widget.dart';
import '/component/tteams_top_bar/tteams_top_bar_widget.dart';
import '/components/user_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_management_widget.dart' show UserManagementWidget;
import 'package:flutter/material.dart';

class UserManagementModel extends FlutterFlowModel<UserManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tteaamsMenuAdmin component.
  late TteaamsMenuAdminModel tteaamsMenuAdminModel;
  // Model for tteamsTopBar component.
  late TteamsTopBarModel tteamsTopBarModel;
  // Model for userListComponent component.
  late UserListComponentModel userListComponentModel;

  @override
  void initState(BuildContext context) {
    tteaamsMenuAdminModel = createModel(context, () => TteaamsMenuAdminModel());
    tteamsTopBarModel = createModel(context, () => TteamsTopBarModel());
    userListComponentModel =
        createModel(context, () => UserListComponentModel());
  }

  @override
  void dispose() {
    tteaamsMenuAdminModel.dispose();
    tteamsTopBarModel.dispose();
    userListComponentModel.dispose();
  }
}
