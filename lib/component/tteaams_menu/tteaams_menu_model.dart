import '/component/admin/admin_user_switch/admin_user_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tteaams_menu_widget.dart' show TteaamsMenuWidget;
import 'package:flutter/material.dart';

class TteaamsMenuModel extends FlutterFlowModel<TteaamsMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion1 widget.
  bool mouseRegion1Hovered = false;
  // State field(s) for MouseRegion2 widget.
  bool mouseRegion2Hovered = false;
  // State field(s) for MouseRegion3 widget.
  bool mouseRegion3Hovered = false;
  // State field(s) for MouseRegion4 widget.
  bool mouseRegion4Hovered = false;
  // State field(s) for MouseRegion5 widget.
  bool mouseRegion5Hovered = false;
  // State field(s) for MouseRegion6 widget.
  bool mouseRegion6Hovered = false;
  // State field(s) for MouseRegion7 widget.
  bool mouseRegion7Hovered = false;
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
