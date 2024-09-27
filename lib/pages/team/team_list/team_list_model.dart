import '/component/team/teams_options/teams_options_widget.dart';
import '/component/team/tteams_team_card_alpha/tteams_team_card_alpha_widget.dart';
import '/component/team/tteams_team_card_betha/tteams_team_card_betha_widget.dart';
import '/component/tteaams_menu/tteaams_menu_widget.dart';
import '/component/tteams_top_bar/tteams_top_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'team_list_widget.dart' show TeamListWidget;
import 'package:flutter/material.dart';

class TeamListModel extends FlutterFlowModel<TeamListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for tteaamsMenu component.
  late TteaamsMenuModel tteaamsMenuModel;
  // Model for tteamsTopBar component.
  late TteamsTopBarModel tteamsTopBarModel;
  // Model for teamsOptions component.
  late TeamsOptionsModel teamsOptionsModel;
  // Model for tteamsTeamCardBetha component.
  late TteamsTeamCardBethaModel tteamsTeamCardBethaModel;
  // Model for tteamsTeamCardAlpha component.
  late TteamsTeamCardAlphaModel tteamsTeamCardAlphaModel;

  @override
  void initState(BuildContext context) {
    tteaamsMenuModel = createModel(context, () => TteaamsMenuModel());
    tteamsTopBarModel = createModel(context, () => TteamsTopBarModel());
    teamsOptionsModel = createModel(context, () => TeamsOptionsModel());
    tteamsTeamCardBethaModel =
        createModel(context, () => TteamsTeamCardBethaModel());
    tteamsTeamCardAlphaModel =
        createModel(context, () => TteamsTeamCardAlphaModel());
  }

  @override
  void dispose() {
    tteaamsMenuModel.dispose();
    tteamsTopBarModel.dispose();
    teamsOptionsModel.dispose();
    tteamsTeamCardBethaModel.dispose();
    tteamsTeamCardAlphaModel.dispose();
  }
}
