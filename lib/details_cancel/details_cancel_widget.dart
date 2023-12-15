import 'dart:developer';

import '../index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_cancel_model.dart';
export 'details_cancel_model.dart';

class DetailsCancelWidget extends StatefulWidget {
  final FFParameters params;
  const DetailsCancelWidget({Key? key, required this.params}) : super(key: key);

  @override
  _DetailsCancelWidgetState createState() => _DetailsCancelWidgetState();
}

class _DetailsCancelWidgetState extends State<DetailsCancelWidget> {
  late DetailsCancelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsCancelModel());
    Future.delayed(Duration.zero, () async {
      _model.carData = widget.params.state.queryParameters;
      _model.datetime1 = DateTime.parse(_model.carData['start_date'] ?? '');
      _model.datetime2 = DateTime.parse(_model.carData['end_date'] ?? '');
      _model.datediff = _model.datetime2!.difference(_model.datetime1!).inDays;
      _model.carData = widget.params.state.queryParameters;
      _model.price = int.parse(_model.carData['price'].toString());
      _model.sum = _model.price * _model.datediff + 1000;
      if (_model.carData['type'] == '1') {
        _model.payed = _model.sum;
        _model.remain = 0;
      } else {
        _model.payed = _model.earnest;
        _model.remain = _model.sum - _model.earnest;
      }
      log('carID:${_model.carData['rentID']}');
      setState(() {});
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFF3F68A9),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () async {
              context.pushNamed('history_cancel');
            },
          ),
          title: Text(
            'รายละเอียดการยกเลิก',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         width: 20.0,
                //         height: 20.0,
                //         decoration: BoxDecoration(
                //           color: Color(0xFF3F68A9),
                //           shape: BoxShape.circle,
                //         ),
                //       ),
                //       Container(
                //         width: 295.0,
                //         height: 3.0,
                //         decoration: BoxDecoration(
                //           color: Color(0xFF3F68A9),
                //         ),
                //       ),
                //       Container(
                //         width: 20.0,
                //         height: 20.0,
                //         decoration: BoxDecoration(
                //           color: Color(0xFF3F68A9),
                //           shape: BoxShape.circle,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Column(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Row(
                //       mainAxisSize: MainAxisSize.max,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Align(
                //           alignment: AlignmentDirectional(-1.00, 0.00),
                //           child: Container(
                //             width: 200.0,
                //             height: 30.0,
                //             decoration: BoxDecoration(),
                //             child: Padding(
                //               padding: EdgeInsetsDirectional.fromSTEB(
                //                   15.0, 0.0, 0.0, 0.0),
                //               child: Row(
                //                 mainAxisSize: MainAxisSize.max,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Padding(
                //                     padding: EdgeInsetsDirectional.fromSTEB(
                //                         0.0, 10.0, 0.0, 0.0),
                //                     child: Text(
                //                       'การจอง',
                //                       style: FlutterFlowTheme.of(context)
                //                           .bodyMedium
                //                           .override(
                //                             fontFamily: 'Readex Pro',
                //                             color: Color(0xFF14181B),
                //                             fontSize: 18.0,
                //                           ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //         Flexible(
                //           child: Container(
                //             width: 200.0,
                //             height: 30.0,
                //             decoration: BoxDecoration(),
                //             child: Padding(
                //               padding: EdgeInsetsDirectional.fromSTEB(
                //                   0.0, 0.0, 22.0, 0.0),
                //               child: Row(
                //                 mainAxisSize: MainAxisSize.max,
                //                 mainAxisAlignment: MainAxisAlignment.end,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Padding(
                //                     padding: EdgeInsetsDirectional.fromSTEB(
                //                         0.0, 10.0, 0.0, 0.0),
                //                     child: Text(
                //                       'ยกเลิก',
                //                       style: FlutterFlowTheme.of(context)
                //                           .bodyMedium
                //                           .override(
                //                             fontFamily: 'Readex Pro',
                //                             color: Color(0xFF14181B),
                //                             fontSize: 18.0,
                //                           ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 0.0, 0.0),
                      child: Text(
                        'คุณได้รับการยกเลิกแล้ว',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF14181B),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 25.0, 0.0, 0.0),
                        child: Icon(
                          Icons.check_box_rounded,
                          color: Color(0xFF3FA94B),
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        '$HOST_NAME/$HOST_URI_APP/${_model.carData['image']}',
                        width: 300.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Text(
                    '${_model.carData['brand']} ${_model.carData['modelcar']}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Roboto',
                          color: Color(0xFF14181B),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 0.0, 10.0),
                    child: Text(
                      'รายละเอียดการยกเลิก',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF14181B),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 200.0,
                        height: 40.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'ผู้ยื่นคำขอ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF14181B),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: Container(
                            width: 200.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '${_model.carData['user_name']}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF14181B),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 200.0,
                        height: 40.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'ยื่นคำขอเมื่อ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF14181B),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(1.00, 0.00),
                          child: Container(
                            width: 200.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '${dateTimeFormat('d/M/y', DateTime.parse(_model.carData['end_date']))}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF14181B),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Align(
                //   alignment: AlignmentDirectional(0.00, 0.00),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.max,
                //     children: [
                //       Container(
                //         width: 200.0,
                //         height: 40.0,
                //         decoration: BoxDecoration(),
                //         child: Row(
                //           mainAxisSize: MainAxisSize.max,
                //           children: [
                //             Padding(
                //               padding: EdgeInsetsDirectional.fromSTEB(
                //                   15.0, 0.0, 0.0, 0.0),
                //               child: Text(
                //                 'เหตุผล',
                //                 style: FlutterFlowTheme.of(context)
                //                     .bodyMedium
                //                     .override(
                //                       fontFamily: 'Readex Pro',
                //                       color: Color(0xFF14181B),
                //                       fontSize: 18.0,
                //                       fontWeight: FontWeight.normal,
                //                     ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Flexible(
                //         child: Align(
                //           alignment: AlignmentDirectional(1.00, 0.00),
                //           child: Container(
                //             width: 200.0,
                //             height: 40.0,
                //             decoration: BoxDecoration(),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.max,
                //               children: [
                //                 Align(
                //                   alignment: AlignmentDirectional(1.00, 0.00),
                //                   child: Padding(
                //                     padding: EdgeInsetsDirectional.fromSTEB(
                //                         10.0, 0.0, 0.0, 0.0),
                //                     child: Text(
                //                       'ติดธุระ',
                //                       style: FlutterFlowTheme.of(context)
                //                           .bodyMedium
                //                           .override(
                //                             fontFamily: 'Roboto',
                //                             color: Color(0xFF14181B),
                //                             fontSize: 18.0,
                //                             fontWeight: FontWeight.normal,
                //                           ),
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
