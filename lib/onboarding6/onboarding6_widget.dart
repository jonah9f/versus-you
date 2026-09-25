import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding6_model.dart';
export 'onboarding6_model.dart';

class Onboarding6Widget extends StatefulWidget {
  const Onboarding6Widget({
    super.key,
    this.primaryGoal,
    this.selectedSecondaryGoals,
    bool? disciplineSelected,
    required this.fitnessSelected,
    required this.careerSelected,
    required this.confidenceSelected,
    required this.sleepSelected,
    required this.mentalPerformanceSelected,
  }) : this.disciplineSelected = disciplineSelected ?? false;

  final String? primaryGoal;
  final List<String>? selectedSecondaryGoals;
  final bool disciplineSelected;
  final bool? fitnessSelected;
  final bool? careerSelected;
  final bool? confidenceSelected;
  final bool? sleepSelected;
  final bool? mentalPerformanceSelected;

  static String routeName = 'Onboarding6';
  static String routePath = '/onboarding6';

  @override
  State<Onboarding6Widget> createState() => _Onboarding6WidgetState();
}

class _Onboarding6WidgetState extends State<Onboarding6Widget> {
  late Onboarding6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding6Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/C2E2C0DF-707F-4902-BC44-D49E6E511634.png',
                    width: 270.0,
                    height: 92.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                  child: Text(
                    'What’s Holding You Back Right Now?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Choose the biggest obstacles standing between you and your goals.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xFFB0B0B0),
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 180.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF1C1C1C),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.procrastinationSelected =
                                    !_model.procrastinationSelected;
                                safeSetState(() {});
                                if (_model.procrastinationSelected == true) {
                                  _model.addToSelectedObstacles(
                                      'procrastination');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedObstacles(
                                      'procrastination');
                                  safeSetState(() {});
                                }
                              },
                              text: '⏳ Procrastination',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.procrastinationSelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.consistencySelected =
                                    !_model.consistencySelected;
                                safeSetState(() {});
                                if (_model.consistencySelected == true) {
                                  _model.addToSelectedObstacles('consistency');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedObstacles(
                                      'consistency');
                                  safeSetState(() {});
                                }
                              },
                              text: '🔁 Lack of Consistency',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.consistencySelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.distractionsSelected =
                                    !_model.distractionsSelected;
                                safeSetState(() {});
                                if (_model.distractionsSelected == true) {
                                  _model.addToSelectedObstacles('distractions');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedObstacles(
                                      'distractions');
                                  safeSetState(() {});
                                }
                              },
                              text: '📱 Distractions',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.distractionsSelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                _model.motivationSelected =
                                    !_model.motivationSelected;
                                safeSetState(() {});
                                if (_model.motivationSelected == true) {
                                  _model.addToSelectedObstacles('motivation');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedObstacles(
                                      'motivation');
                                  safeSetState(() {});
                                }
                              },
                              text: '🔋 Low Motivation',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.motivationSelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.routineSelected =
                                    !_model.routineSelected;
                                safeSetState(() {});
                                if (_model.routineSelected == true) {
                                  _model.addToSelectedObstacles('routine');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedObstacles('routine');
                                  safeSetState(() {});
                                }
                              },
                              text: '🗓️ Poor Routine',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.routineSelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.directionSelected =
                                    !_model.directionSelected;
                                safeSetState(() {});
                                if (_model.directionSelected == true) {
                                  _model.addToSelectedObstacles('direction');
                                  safeSetState(() {});
                                } else {
                                  _model
                                      .removeFromSelectedObstacles('direction');
                                  safeSetState(() {});
                                }
                              },
                              text: '🧭 Not Knowing Where to Start',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.directionSelected == true
                                    ? Color(0xFF78E84C)
                                    : Color(0xFFB0B0B0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                  bottomLeft: Radius.circular(12.0),
                                  bottomRight: Radius.circular(12.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.selectedObstacles.isNotEmpty) {
                        context.pushNamed(
                          Onboarding7Widget.routeName,
                          queryParameters: {
                            'primaryGoal': serializeParam(
                              widget.primaryGoal,
                              ParamType.String,
                            ),
                            'selectedSecondaryGoals': serializeParam(
                              widget.selectedSecondaryGoals,
                              ParamType.String,
                              isList: true,
                            ),
                            'selectedObstacles': serializeParam(
                              _model.selectedObstacles,
                              ParamType.String,
                              isList: true,
                            ),
                            'disciplineSelected': serializeParam(
                              widget.disciplineSelected,
                              ParamType.bool,
                            ),
                            'fitnessSelected': serializeParam(
                              widget.fitnessSelected,
                              ParamType.bool,
                            ),
                            'careerSelected': serializeParam(
                              widget.careerSelected,
                              ParamType.bool,
                            ),
                            'confidenceSelected': serializeParam(
                              widget.confidenceSelected,
                              ParamType.bool,
                            ),
                            'sleepSelected': serializeParam(
                              widget.sleepSelected,
                              ParamType.bool,
                            ),
                            'mentalPerformanceSelected': serializeParam(
                              widget.mentalPerformanceSelected,
                              ParamType.bool,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Select at least one obstacle to continue',
                              style: GoogleFonts.manrope(
                                color: Colors.white,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor: Color(0xFF78E84C),
                          ),
                        );
                      }
                    },
                    text: 'Continue',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF78E84C),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.manrope(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: Color(0xFF111111),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
