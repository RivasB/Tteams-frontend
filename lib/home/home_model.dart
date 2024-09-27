import '/component/tteaams_menu/tteaams_menu_widget.dart';
import '/component/tteams_activity/tteams_activity_widget.dart';
import '/component/tteams_top_bar/tteams_top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tteaamsMenu component.
  late TteaamsMenuModel tteaamsMenuModel;
  // Model for tteamsTopBar component.
  late TteamsTopBarModel tteamsTopBarModel;
  // Model for tteamsActivity component.
  late TteamsActivityModel tteamsActivityModel;

  @override
  void initState(BuildContext context) {
    tteaamsMenuModel = createModel(context, () => TteaamsMenuModel());
    tteamsTopBarModel = createModel(context, () => TteamsTopBarModel());
    tteamsActivityModel = createModel(context, () => TteamsActivityModel());
  }

  @override
  void dispose() {
    tteaamsMenuModel.dispose();
    tteamsTopBarModel.dispose();
    tteamsActivityModel.dispose();
  }
}
