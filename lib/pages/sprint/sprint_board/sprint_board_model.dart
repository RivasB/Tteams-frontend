import '/component/tteaams_menu/tteaams_menu_widget.dart';
import '/component/tteams_top_bar/tteams_top_bar_widget.dart';
import '/component/user/sprint_options/sprint_options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sprint_board_widget.dart' show SprintBoardWidget;
import 'package:flutter/material.dart';

class SprintBoardModel extends FlutterFlowModel<SprintBoardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tteaamsMenu component.
  late TteaamsMenuModel tteaamsMenuModel;
  // Model for tteamsTopBar component.
  late TteamsTopBarModel tteamsTopBarModel;
  // Model for sprintOptions component.
  late SprintOptionsModel sprintOptionsModel;

  @override
  void initState(BuildContext context) {
    tteaamsMenuModel = createModel(context, () => TteaamsMenuModel());
    tteamsTopBarModel = createModel(context, () => TteamsTopBarModel());
    sprintOptionsModel = createModel(context, () => SprintOptionsModel());
  }

  @override
  void dispose() {
    tteaamsMenuModel.dispose();
    tteamsTopBarModel.dispose();
    sprintOptionsModel.dispose();
  }
}
