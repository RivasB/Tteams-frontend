import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'admin_user_switch_model.dart';
export 'admin_user_switch_model.dart';

class AdminUserSwitchWidget extends StatefulWidget {
  const AdminUserSwitchWidget({super.key});

  @override
  State<AdminUserSwitchWidget> createState() => _AdminUserSwitchWidgetState();
}

class _AdminUserSwitchWidgetState extends State<AdminUserSwitchWidget>
    with TickerProviderStateMixin {
  late AdminUserSwitchModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUserSwitchModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-40.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (animationsMap['containerOnActionTriggerAnimation'] != null) {
            await animationsMap['containerOnActionTriggerAnimation']!
                .controller
                .forward(from: 0.0);
          }

          context.pushNamed('userManagement');
        },
        child: Container(
          width: 80.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: const Color(0x4D9489F5),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: const Color(0x4D9489F5),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                const Align(
                  alignment: AlignmentDirectional(-0.9, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      Icons.admin_panel_settings,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 6.0, 0.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x430B0D0F),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(30.0),
                      shape: BoxShape.rectangle,
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation']!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
