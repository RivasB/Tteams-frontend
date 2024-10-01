import '/component/admin/admin_user_switch_off/admin_user_switch_off_widget.dart';
import '/components/user_profile_menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tteaams_menu_admin_model.dart';
export 'tteaams_menu_admin_model.dart';

class TteaamsMenuAdminWidget extends StatefulWidget {
  const TteaamsMenuAdminWidget({
    super.key,
    int? menuIndex,
  }) : menuIndex = menuIndex ?? 1;

  final int menuIndex;

  @override
  State<TteaamsMenuAdminWidget> createState() => _TteaamsMenuAdminWidgetState();
}

class _TteaamsMenuAdminWidgetState extends State<TteaamsMenuAdminWidget> {
  late TteaamsMenuAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TteaamsMenuAdminModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x4D9489F5),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Icon(
                          Icons.add_task_rounded,
                          color: Colors.white,
                          size: 32.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'tteams admin',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Outfit'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: const UserProfileMenuWidget(),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: const Color(0x4D9489F5),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: const Color(0xFF6F61EF),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 500),
                                  fadeOutDuration: const Duration(milliseconds: 500),
                                  imageUrl:
                                      'https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw4fHx1c2VyfGVufDB8fHx8MTcyNzY5MTE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: 44.0,
                                  height: 44.0,
                                  fit: BoxFit.cover,
                                  errorWidget: (context, error, stackTrace) =>
                                      Image.asset(
                                    'assets/images/error_image.jpeg',
                                    width: 44.0,
                                    height: 44.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFAppState().UserMe.data.firstName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Plus Jakarta Sans'),
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      FFAppState().UserMe.data.email,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: const Color(0x9AFFFFFF),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    'Plus Jakarta Sans'),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            Icons.location_history,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegion1Hovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegion1Hovered = false);
            }),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'teamList',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: () {
                      if (_model.mouseRegion1Hovered) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else if (widget.menuIndex == 1) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else {
                        return FlutterFlowTheme.of(context).tertiary;
                      }
                    }(),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 12.0),
                          child: Container(
                            width: 4.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegion1Hovered) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.menuIndex == 1) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else {
                                  return FlutterFlowTheme.of(context).tertiary;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.groups,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Usuarios',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Plus Jakarta Sans'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegion2Hovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegion2Hovered = false);
            }),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'organizationManagement',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: () {
                      if (_model.mouseRegion2Hovered) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else if (widget.menuIndex == 2) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else {
                        return FlutterFlowTheme.of(context).tertiary;
                      }
                    }(),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 12.0),
                          child: Container(
                            width: 4.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegion2Hovered) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.menuIndex == 2) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else {
                                  return FlutterFlowTheme.of(context).tertiary;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.business,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Organizaciones',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Plus Jakarta Sans'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegion3Hovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegion3Hovered = false);
            }),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'profileManagement',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: () {
                      if (_model.mouseRegion3Hovered) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else if (widget.menuIndex == 3) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else {
                        return FlutterFlowTheme.of(context).tertiary;
                      }
                    }(),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 12.0),
                          child: Container(
                            width: 4.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegion3Hovered) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.menuIndex == 3) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else {
                                  return FlutterFlowTheme.of(context).tertiary;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.location_history,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Perfiles',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Plus Jakarta Sans'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegion4Hovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegion4Hovered = false);
            }),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'authManagement',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: () {
                      if (_model.mouseRegion4Hovered) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else if (widget.menuIndex == 4) {
                        return FlutterFlowTheme.of(context).accent3;
                      } else {
                        return FlutterFlowTheme.of(context).tertiary;
                      }
                    }(),
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 12.0, 12.0),
                          child: Container(
                            width: 4.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegion4Hovered) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.menuIndex == 4) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else {
                                  return FlutterFlowTheme.of(context).tertiary;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.admin_panel_settings,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Autorizaciones',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey('Plus Jakarta Sans'),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    height: 12.0,
                    thickness: 2.0,
                    color: Color(0x4DEE8B60),
                  ),
                  wrapWithModel(
                    model: _model.adminUserSwitchOffModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const AdminUserSwitchOffWidget(),
                  ),
                ].divide(const SizedBox(height: 12.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
