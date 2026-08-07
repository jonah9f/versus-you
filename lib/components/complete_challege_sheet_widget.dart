import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'complete_challege_sheet_model.dart';
export 'complete_challege_sheet_model.dart';

class CompleteChallegeSheetWidget extends StatefulWidget {
  const CompleteChallegeSheetWidget({
    super.key,
    required this.challengeDoc,
  });

  final ChallengesRecord? challengeDoc;

  @override
  State<CompleteChallegeSheetWidget> createState() =>
      _CompleteChallegeSheetWidgetState();
}

class _CompleteChallegeSheetWidgetState
    extends State<CompleteChallegeSheetWidget> {
  late CompleteChallegeSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteChallegeSheetModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 306.0,
      height: 250.0,
      decoration: BoxDecoration(
        color: Color(0xFF100101),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Complete Challenge',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.manrope(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.challengeDoc?.name,
                    'Morning Run',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF78E84C),
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Text(
                  widget.challengeDoc?.challengeType == 'Break a Habit'
                      ? 'Did you avoid this habit today?'
                      : 'Did you complete this habit today?',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFFB0B0B0),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 20.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await ChallengeLogsRecord.collection
                        .doc()
                        .set(createChallengeLogsRecordData(
                          challengeRef: widget.challengeDoc?.reference,
                          challengeName: widget.challengeDoc?.name,
                          userRef: currentUserReference,
                          completed: false,
                          completedTime: getCurrentTimestamp,
                          xpEarned: 0,
                        ));

                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'today_attempted': FieldValue.increment(1),
                          'challenges_attempted': FieldValue.increment(1),
                        },
                      ),
                    });

                    await currentUserReference!.update(createUsersRecordData(
                      mondayPerformance: (int completed, int attempted) {
                        return attempted == 0 ? 0.0 : completed / attempted;
                      }(
                          valueOrDefault(
                              currentUserDocument?.todayCompleted, 0),
                          valueOrDefault(
                              currentUserDocument?.todayAttempted, 0)),
                    ));
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 120.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFB0B0B0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'No',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  final firestoreBatch = FirebaseFirestore.instance.batch();
                  try {
                    _model.existingLogs = await queryChallengeLogsRecordOnce(
                      queryBuilder: (challengeLogsRecord) => challengeLogsRecord
                          .where(
                            'challenge_ref',
                            isEqualTo: widget.challengeDoc?.reference,
                          )
                          .where(
                            'user_ref',
                            isEqualTo: currentUserReference,
                          )
                          .where(
                            'completed',
                            isEqualTo: true,
                          )
                          .where(
                            'completed_time',
                            isGreaterThanOrEqualTo:
                                currentUserDocument?.todayStart,
                          )
                          .where(
                            'completed_time',
                            isLessThan: functions.startOfTomorrow(),
                          ),
                      limit: 1,
                    );
                    if (!(_model.existingLogs != null &&
                        (_model.existingLogs)!.isNotEmpty)) {
                      firestoreBatch.set(
                          ChallengeLogsRecord.collection.doc(),
                          createChallengeLogsRecordData(
                            challengeRef: widget.challengeDoc?.reference,
                            userRef: currentUserReference,
                            challengeName: widget.challengeDoc?.name,
                            completed: true,
                            completedTime: getCurrentTimestamp,
                            xpEarned: widget.challengeDoc?.xpReward,
                          ));

                      firestoreBatch.update(
                          widget.challengeDoc!.reference,
                          createChallengesRecordData(
                            lastCompletedDate: getCurrentTimestamp,
                            completedToday: true,
                          ));

                      firestoreBatch.update(currentUserReference!, {
                        ...mapToFirestore(
                          {
                            'xp': FieldValue.increment(
                                widget.challengeDoc!.xpReward),
                            'total_xp': FieldValue.increment(
                                widget.challengeDoc!.xpReward),
                            'today_completed': FieldValue.increment(1),
                            'challenges_completed': FieldValue.increment(1),
                            'weekly_completed': FieldValue.increment(1),
                            'monthly_challenges_completed':
                                FieldValue.increment(1),
                            'today_attempted': FieldValue.increment(1),
                            'today_xp': FieldValue.increment(
                                widget.challengeDoc!.xpReward),
                          },
                        ),
                      });

                      firestoreBatch.update(
                          currentUserReference!,
                          createUsersRecordData(
                            mondayPerformance: (int completed, int attempted) {
                              return attempted == 0
                                  ? 0.0
                                  : completed / attempted;
                            }(
                                valueOrDefault(
                                    currentUserDocument?.todayCompleted, 0),
                                valueOrDefault(
                                    currentUserDocument?.todayAttempted, 0)),
                          ));
                    }
                    if (!functions.isSameDay(
                        currentUserDocument?.lastCompletionDate,
                        getCurrentTimestamp)) {
                      firestoreBatch.update(currentUserReference!, {
                        ...createUsersRecordData(
                          lastCompletionDate: getCurrentTimestamp,
                        ),
                        ...mapToFirestore(
                          {
                            'current_streak': FieldValue.increment(1),
                          },
                        ),
                      });
                      if (valueOrDefault(
                              currentUserDocument?.currentStreak, 0) >=
                          valueOrDefault(currentUserDocument?.bestStreak, 0)) {
                        firestoreBatch.update(
                            currentUserReference!,
                            createUsersRecordData(
                              bestStreak: valueOrDefault(
                                  currentUserDocument?.currentStreak, 0),
                            ));
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Already completed today',
                            style: GoogleFonts.manrope(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor: Color(0xFF78E84C),
                        ),
                      );
                    }

                    Navigator.pop(context);
                  } finally {
                    await firestoreBatch.commit();
                  }

                  safeSetState(() {});
                },
                child: Container(
                  width: 120.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF78E84C),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Yes',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 120.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF100101),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.white,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
