import '/components/admin_user_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tteaams_menu_widget.dart' show TteaamsMenuWidget;
import 'package:flutter/material.dart';

class TteaamsMenuModel extends FlutterFlowModel<TteaamsMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for adminUserSwitch component.
  late AdminUserSwitchModel adminUserSwitchModel;

  @override
  void initState(BuildContext context) {
    adminUserSwitchModel = createModel(context, () => AdminUserSwitchModel());
  }

  @override
  void dispose() {
    adminUserSwitchModel.dispose();
  }
}
