import '/component/admin/admin_user_switch_off/admin_user_switch_off_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tteaams_menu_admin_widget.dart' show TteaamsMenuAdminWidget;
import 'package:flutter/material.dart';

class TteaamsMenuAdminModel extends FlutterFlowModel<TteaamsMenuAdminWidget> {
  ///  Local state fields for this component.

  int menuIndex = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion1 widget.
  bool mouseRegion1Hovered = false;
  // State field(s) for MouseRegion2 widget.
  bool mouseRegion2Hovered = false;
  // State field(s) for MouseRegion3 widget.
  bool mouseRegion3Hovered = false;
  // State field(s) for MouseRegion4 widget.
  bool mouseRegion4Hovered = false;
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
