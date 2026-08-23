import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'log_screen_time_sheet_model.dart';
export 'log_screen_time_sheet_model.dart';

class LogScreenTimeSheetWidget extends StatefulWidget {
  const LogScreenTimeSheetWidget({super.key});

  @override
  State<LogScreenTimeSheetWidget> createState() =>
      _LogScreenTimeSheetWidgetState();
}

class _LogScreenTimeSheetWidgetState extends State<LogScreenTimeSheetWidget> {
  late LogScreenTimeSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogScreenTimeSheetModel());

    _model.hoursTextTextController ??= TextEditingController();
    _model.hoursTextFocusNode ??= FocusNode();

    _model.minTextTextController ??= TextEditingController();
    _model.minTextFocusNode ??= FocusNode();
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
            child: Text(
              'Log Today\'s Screen Time',
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
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 90.0,
                child: TextFormField(
                  controller: _model.hoursTextTextController,
                  focusNode: _model.hoursTextFocusNode,
                  onChanged: (_) => EasyDebounce.debounce(
                    '_model.hoursTextTextController',
                    Duration(milliseconds: 2000),
                    () => safeSetState(() {}),
                  ),
                  autofocus: false,
                  enabled: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Hours',
                    labelStyle: FlutterFlowTheme.of(context)
                        .bodyMedium
                        .override(
                          font: GoogleFonts.inter(
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
                    hintText: '0',
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFFB0B0B0),
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF111111),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.manrope(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Color(0xFF78E84C),
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                  keyboardType: TextInputType.number,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  enableInteractiveSelection: true,
                  validator: _model.hoursTextTextControllerValidator
                      .asValidator(context),
                ),
              ),
              Expanded(
                child: Container(
                  width: 90.0,
                  child: TextFormField(
                    controller: _model.minTextTextController,
                    focusNode: _model.minTextFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.minTextTextController',
                      Duration(milliseconds: 2000),
                      () => safeSetState(() {}),
                    ),
                    autofocus: false,
                    enabled: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: 'Minutes',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.inter(
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
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      hintText: '0',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.manrope(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color: Color(0xFFB0B0B0),
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFF111111),
                    ),
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
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                    keyboardType: TextInputType.number,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    enableInteractiveSelection: true,
                    validator: _model.minTextTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
                    await ScreenTimeLogsRecord.collection
                        .doc()
                        .set(createScreenTimeLogsRecordData(
                          userRef: currentUserReference,
                          date: getCurrentTimestamp,
                          actualMinutes:
                              (int.parse(_model.hoursTextTextController.text) *
                                      60) +
                                  int.parse(_model.minTextTextController.text),
                          differenceMinutes: valueOrDefault(
                                  currentUserDocument?.screenTimeGoalMinutes,
                                  0) -
                              ((int.parse(_model.hoursTextTextController.text) *
                                      60) +
                                  int.parse(_model.minTextTextController.text)),
                          isUnderGoal: (int actualMinutes,
                                  int recommendedMinutes) {
                            return actualMinutes <= recommendedMinutes;
                          }(
                              ((int.parse(_model.hoursTextTextController.text) *
                                      60) +
                                  int.parse(_model.minTextTextController.text)),
                              valueOrDefault(
                                  currentUserDocument?.screenTimeGoalMinutes,
                                  0)),
                          createdTime: getCurrentTimestamp,
                        ));
                    if (functions.isSameDay(
                        currentUserDocument?.screenTimeLastLoggedDate,
                        getCurrentTimestamp)) {
                      await currentUserReference!.update({
                        ...createUsersRecordData(
                          todayScreenTime:
                              (int.parse(_model.hoursTextTextController.text) *
                                      60) +
                                  int.parse(_model.minTextTextController.text),
                          screenTimeLastLoggedDate: getCurrentTimestamp,
                        ),
                        ...mapToFirestore(
                          {
                            'monthly_screen_time_minutes': FieldValue.increment(
                                ((int.parse(_model
                                                .hoursTextTextController.text) *
                                            60) +
                                        int.parse(_model
                                            .minTextTextController.text)) -
                                    valueOrDefault(
                                        currentUserDocument?.todayScreenTime,
                                        0)),
                          },
                        ),
                      });
                    } else {
                      await currentUserReference!.update({
                        ...createUsersRecordData(
                          todayScreenTime:
                              (int.parse(_model.hoursTextTextController.text) *
                                      60) +
                                  int.parse(_model.minTextTextController.text),
                          screenTimeLastLoggedDate: getCurrentTimestamp,
                        ),
                        ...mapToFirestore(
                          {
                            'monthly_screen_time_minutes': FieldValue.increment(
                                (int.parse(_model
                                            .hoursTextTextController.text) *
                                        60) +
                                    int.parse(
                                        _model.minTextTextController.text)),
                            'monthly_screen_time_log_count':
                                FieldValue.increment(1),
                          },
                        ),
                      });
                    }

                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Screen Time Logged',
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: Color(0xFF78E84C),
                      ),
                    );
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
                        'Save',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
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
