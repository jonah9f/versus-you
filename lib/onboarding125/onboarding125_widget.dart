import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'onboarding125_model.dart';
export 'onboarding125_model.dart';

class Onboarding125Widget extends StatefulWidget {
  const Onboarding125Widget({
    super.key,
    this.primaryGoal,
    this.selectedSecondaryGoals,
    this.selectedObstacles,
    this.sixMonthVision,
    this.oneYearVision,
    this.fiveYearVision,
    this.energyTime,
    this.consistencyLevel,
    required this.disciplineSelected,
    required this.fitnessSelected,
    required this.careerSelected,
    required this.confidenceSelected,
    required this.sleepSelected,
    required this.mentalPerformanceSelected,
    this.commitmentLevel,
  });

  final String? primaryGoal;
  final List<String>? selectedSecondaryGoals;
  final List<String>? selectedObstacles;
  final String? sixMonthVision;
  final String? oneYearVision;
  final String? fiveYearVision;
  final String? energyTime;
  final String? consistencyLevel;
  final bool? disciplineSelected;
  final bool? fitnessSelected;
  final bool? careerSelected;
  final bool? confidenceSelected;
  final bool? sleepSelected;
  final bool? mentalPerformanceSelected;
  final String? commitmentLevel;

  static String routeName = 'Onboarding125';
  static String routePath = '/onboarding125';

  @override
  State<Onboarding125Widget> createState() => _Onboarding125WidgetState();
}

class _Onboarding125WidgetState extends State<Onboarding125Widget> {
  late Onboarding125Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Onboarding125Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.loadingProgress = 1.0;
      safeSetState(() {});
      await Future.delayed(
        Duration(
          milliseconds: 4000,
        ),
      );
      if (Navigator.of(context).canPop()) {
        context.pop();
      }
      context.pushNamed(
        Onboarding13Widget.routeName,
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
    });
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
                    'Building Your Routine...',
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
                    'Creating your personalized daily routine based on your goals and commitment.',
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
                    child: CircularPercentIndicator(
                      percent: _model.loadingProgress,
                      radius: 140.0,
                      lineWidth: 20.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: Color(0xFF78E84C),
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                      center: Text(
                        'Building...',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                      ),
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
