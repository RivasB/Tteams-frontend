import '/components/admin_user_switch_off_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tteaams_menu_admin_widget.dart' show TteaamsMenuAdminWidget;
import 'package:flutter/material.dart';

class TteaamsMenuAdminModel extends FlutterFlowModel<TteaamsMenuAdminWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for adminUserSwitchOff component.
  late AdminUserSwitchOffModel adminUserSwitchOffModel;

  @override
  void initState(BuildContext context) {
    adminUserSwitchOffModel =
        createModel(context, () => AdminUserSwitchOffModel());
  }

  @override
  void dispose() {
    adminUserSwitchOffModel.dispose();
  }
}
