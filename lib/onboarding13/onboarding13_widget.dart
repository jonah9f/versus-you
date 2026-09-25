import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'onboarding13_model.dart';
export 'onboarding13_model.dart';

class Onboarding13Widget extends StatefulWidget {
  const Onboarding13Widget({
    super.key,
    this.primaryGoal,
    this.selectedSecondaryGoals,
    this.selectedObstacles,
    this.sixMonthVision,
    this.oneYearVision,
    this.fiveYearVision,
    this.energyTime,
    this.consistencyLevel,
    this.commitmentLevel,
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
  final String? consistencyLevel;
  final String? commitmentLevel;
  final bool? disciplineSelected;
  final bool? fitnessSelected;
  final bool? careerSelected;
  final bool? confidenceSelected;
  final bool? sleepSelected;
  final bool? mentalPerformanceSelected;

  static String routeName = 'Onboarding13';
  static String routePath = '/onboarding13';

  @override
  State<Onboarding13Widget> createState() => _Onboarding13WidgetState();
}

class _Onboarding13WidgetState extends State<Onboarding13Widget> {
  late Onboarding13Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding13Model());
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
      child: PopScope(
        canPop: false,
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
                  Text(
                    'PERSONALIZATION COMPLETE',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Color(0xFF78E84C),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'Your Versus You Plan Is Ready',
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
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Based on your goals, future vision, obstacles, consistency, and daily commitment, we’ve prepared a starting routine designed around who you want to become.',
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
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                              Text(
                                '✓ Built Around Your Goals',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                '✓ Matched to Your Commitment',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                '✓ Designed for Consistency',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'Your plan is organized around three parts of your day:',
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
                                      color: Color(0xFFB0B0B0),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'MORNING — Win the Morning',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'MIDDAY — Execute',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'NIGHT — Finish Strong',
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
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  shadows: [
                                    Shadow(
                                      color: Color(0xFF78E84C),
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 30.0,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.goNamed(
                          Onboarding14Widget.routeName,
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
                              widget.consistencyLevel,
                              ParamType.String,
                            ),
                            'commitmentLevel': serializeParam(
                              widget.commitmentLevel,
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
                      },
                      text: 'SEE MY PLAN →',
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
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
      ),
    );
  }
}
