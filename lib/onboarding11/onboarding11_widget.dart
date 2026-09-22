import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding11_model.dart';
export 'onboarding11_model.dart';

class Onboarding11Widget extends StatefulWidget {
  const Onboarding11Widget({
    super.key,
    this.primaryGoal,
    this.selectedSecondaryGoals,
    this.selectedObstacles,
    this.sixMonthVision,
    this.oneYearVision,
    this.fiveYearVision,
    this.energyTime,
    required this.disciplineSelected,
    required this.fitnessSelected,
    required this.careerSelected,
    required this.confidenceSelected,
    required this.sleepSelected,
    required this.mentalPerformanceSelected,
  });

  final String? primaryGoal;
  final List<String>? selectedSecondaryGoals;
  final List<String>? selectedObstacles;
  final String? sixMonthVision;
  final String? oneYearVision;
  final String? fiveYearVision;
  final String? energyTime;
  final bool? disciplineSelected;
  final bool? fitnessSelected;
  final bool? careerSelected;
  final bool? confidenceSelected;
  final bool? sleepSelected;
  final bool? mentalPerformanceSelected;

  static String routeName = 'Onboarding11';
  static String routePath = '/onboarding11';

  @override
  State<Onboarding11Widget> createState() => _Onboarding11WidgetState();
}

class _Onboarding11WidgetState extends State<Onboarding11Widget> {
  late Onboarding11Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding11Model());
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
        backgroundColor: Color(0xFF111111),
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
                    'How Consistent Are You Right Now?',
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
                    'Be honest. Your starting plan should challenge you without overwhelming you.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xFFB0B0B0),
                          fontSize: 16.0,
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
                    height: 300.0,
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
                                _model.selectedConsistency = 'struggle';
                                safeSetState(() {});
                              },
                              text: 'I Struggle to Stay Consistent',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.selectedConsistency == 'struggle'
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
                            Text(
                              'I often start but don\'t stick with it.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF78E84C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.selectedConsistency = 'onOff';
                                safeSetState(() {});
                              },
                              text: 'I\'m On and Off',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: _model.selectedConsistency == 'onOff'
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
                            Text(
                              'I have good weeks and bad weeks.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF78E84C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.selectedConsistency = 'consistent';
                                safeSetState(() {});
                              },
                              text: 'I\'m Pretty Consistent\n',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    _model.selectedConsistency == 'consistent'
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
                            Text(
                              'I usually follow through.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF78E84C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.selectedConsistency = 'disciplined';
                                safeSetState(() {});
                              },
                              text: 'I\'m Highly Disciplined\n',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    6.0, 0.0, 6.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color:
                                    _model.selectedConsistency == 'disciplined'
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
                            Text(
                              'I already have strong routines.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF78E84C),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
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
                      if (_model.selectedConsistency != null &&
                          _model.selectedConsistency != '') {
                        context.pushNamed(
                          Onboarding12Widget.routeName,
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
                              widget.selectedObstacles,
                              ParamType.String,
                              isList: true,
                            ),
                            'sixMonthVision': serializeParam(
                              widget.sixMonthVision,
                              ParamType.String,
                            ),
                            'oneYearVision': serializeParam(
                              widget.oneYearVision,
                              ParamType.String,
                            ),
                            'fiveYearVision': serializeParam(
                              widget.fiveYearVision,
                              ParamType.String,
                            ),
                            'energyTime': serializeParam(
                              widget.energyTime,
                              ParamType.String,
                            ),
                            'consistencyLevel': serializeParam(
                              _model.selectedConsistency,
                              ParamType.String,
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
                              'Choose your current consistency level to continue.',
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
