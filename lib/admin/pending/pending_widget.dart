import 'dart:developer';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pending_model.dart';
export 'pending_model.dart';

class PendingWidgetAdmin extends StatefulWidget {
  const PendingWidgetAdmin({Key? key}) : super(key: key);

  @override
  _PendingWidgetAdminState createState() => _PendingWidgetAdminState();
}

class _PendingWidgetAdminState extends State<PendingWidgetAdmin> {
  late PendingModelAdmin _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PendingModelAdmin());
    Future.delayed(Duration.zero, () async {
      await _model.apiGetReservList();
      log('modelcar:${_model.carList[0]['modelcar']}');
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future onRefresh() async {
    Future.delayed(Duration.zero, () async {
      await _model.apiGetReservList();
      log('modelcar:${_model.carList[0]['modelcar']}');
      setState(() {});
    });
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
          title: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Text(
              'ส่งรถ',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: RefreshIndicator(
            onRefresh: onRefresh,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF1F4F8),
              ),
              child: ListView.builder(
                itemCount: _model.carList.length,
                itemBuilder: (context, index) {
                  var item = _model.carList[index];
                  return Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await context.pushNamed(
                          'admin_data_pending',
                          queryParameters: item,
                        );
                        Future.delayed(Duration.zero, () async {
                          await _model.apiGetReservList();
                          log('modelcar:${_model.carList[0]['modelcar']}');
                          setState(() {});
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 0.0, 0.0),
                              child: Text(
                                '${item['brand']} ${item['modelcar']}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF14181B),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 2.0, 0.0, 0.0),
                              child: Text(
                                '${dateTimeFormat('d/M/y HH:mm:ss', DateTime.parse(item['start_date']))}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF14181B),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 2.0, 0.0, 0.0),
                              child: Text(
                                item['rentStatus'] == '1'
                                    ? 'รอดำเนินการ'
                                    : item['rentStatus'] == '9'
                                        ? 'ยืนยันเรียบร้อยแล้ว'
                                        : item['rentStatus'] == '-1'
                                            ? 'ยกเลิกแล้ว'
                                            : item['rentStatus'] == '0'
                                                ? 'รอการชำระเงิน'
                                                : 'อื่นๆ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: item['rentStatus'] == '1'
                                          ? Colors.blue
                                          : item['rentStatus'] == '-1'
                                              ? Colors.red
                                              : item['rentStatus'] == '0'
                                                  ? Colors.cyan
                                                  : Colors.amber,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
