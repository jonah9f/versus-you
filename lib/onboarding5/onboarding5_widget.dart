import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding5_model.dart';
export 'onboarding5_model.dart';

class Onboarding5Widget extends StatefulWidget {
  const Onboarding5Widget({
    super.key,
    this.primaryGoal,
  });

  final String? primaryGoal;

  static String routeName = 'Onboarding5';
  static String routePath = '/onboarding5';

  @override
  State<Onboarding5Widget> createState() => _Onboarding5WidgetState();
}

class _Onboarding5WidgetState extends State<Onboarding5Widget> {
  late Onboarding5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding5Model());
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
                    'What Else Do You Want to Improve?',
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
                    'Choose any other areas you want your plan to focus on.',
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
                                _model.disciplineSelected =
                                    !_model.disciplineSelected;
                                safeSetState(() {});
                                if (_model.disciplineSelected == true) {
                                  _model.addToSelectedSecondaryGoals(
                                      'discipline');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'discipline');
                                  safeSetState(() {});
                                }
                              },
                              text: '🎯 Discipline',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.disciplineSelected == true
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
                                _model.careerSelected = !_model.careerSelected;
                                safeSetState(() {});
                                if (_model.careerSelected == true) {
                                  _model.addToSelectedSecondaryGoals('career');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'career');
                                  safeSetState(() {});
                                }
                              },
                              text: '💼 Career & Business',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.careerSelected == true
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
                                _model.sleepSelected = !_model.sleepSelected;
                                safeSetState(() {});
                                if (_model.sleepSelected == true) {
                                  _model.addToSelectedSecondaryGoals('sleep');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'sleep');
                                  safeSetState(() {});
                                }
                              },
                              text: '🌙 Sleep',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.sleepSelected == true
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
                                _model.fitnessSelected =
                                    !_model.fitnessSelected;
                                safeSetState(() {});
                                if (_model.fitnessSelected == true) {
                                  _model.addToSelectedSecondaryGoals('fitness');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'fitness');
                                  safeSetState(() {});
                                }
                              },
                              text: '💪 Fitness',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.fitnessSelected == true
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
                                _model.confidenceSelected =
                                    !_model.confidenceSelected;
                                safeSetState(() {});
                                if (_model.confidenceSelected == true) {
                                  _model.addToSelectedSecondaryGoals(
                                      'confidence');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'confidence');
                                  safeSetState(() {});
                                }
                              },
                              text: '⚡ Confidence',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.confidenceSelected == true
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
                                _model.mentalSelected = !_model.mentalSelected;
                                safeSetState(() {});
                                if (_model.mentalSelected == true) {
                                  _model.addToSelectedSecondaryGoals('mental');
                                  safeSetState(() {});
                                } else {
                                  _model.removeFromSelectedSecondaryGoals(
                                      'mental');
                                  safeSetState(() {});
                                }
                              },
                              text: '🧠 Mental Performance',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.mentalSelected == true
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (_model.selectedSecondaryGoals.isNotEmpty) {
                        context.pushNamed(
                          Onboarding6Widget.routeName,
                          queryParameters: {
                            'primaryGoal': serializeParam(
                              widget.primaryGoal,
                              ParamType.String,
                            ),
                            'selectedSecondaryGoals': serializeParam(
                              _model.selectedSecondaryGoals,
                              ParamType.String,
                              isList: true,
                            ),
                            'disciplineSelected': serializeParam(
                              _model.disciplineSelected,
                              ParamType.bool,
                            ),
                            'fitnessSelected': serializeParam(
                              _model.fitnessSelected,
                              ParamType.bool,
                            ),
                            'careerSelected': serializeParam(
                              _model.careerSelected,
                              ParamType.bool,
                            ),
                            'confidenceSelected': serializeParam(
                              _model.confidenceSelected,
                              ParamType.bool,
                            ),
                            'sleepSelected': serializeParam(
                              _model.sleepSelected,
                              ParamType.bool,
                            ),
                            'mentalPerformanceSelected': serializeParam(
                              _model.mentalSelected,
                              ParamType.bool,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Select at least one goal to continue',
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
