import '/component/admin/admin_user_switch/admin_user_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tteaams_menu_widget.dart' show TteaamsMenuWidget;
import 'package:flutter/material.dart';

class TteaamsMenuModel extends FlutterFlowModel<TteaamsMenuWidget> {
  ///  Local state fields for this component.

  int? navSelected = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
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
