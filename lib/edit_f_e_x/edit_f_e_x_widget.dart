import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditFEXWidget extends StatefulWidget {
  const EditFEXWidget({
    Key? key,
    this.fexSN,
    this.token,
    this.fexDescription,
  }) : super(key: key);

  final String? fexSN;
  final String? token;
  final String? fexDescription;

  @override
  _EditFEXWidgetState createState() => _EditFEXWidgetState();
}

class _EditFEXWidgetState extends State<EditFEXWidget> {
  ApiCallResponse? apiResultt44;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetDeviceCall.call(
        sn: widget.fexSN,
        token: widget.token,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final editFEXGetDeviceResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'editFEX',
                      queryParams: {
                        'fexSN': serializeParam(
                          widget.fexSN,
                          ParamType.String,
                        ),
                        'token': serializeParam(
                          widget.token,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 108,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 25, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'inventoryPage',
                                            queryParams: {
                                              'token': serializeParam(
                                                widget.token,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            image: CachedNetworkImageProvider(
                                              '',
                                            ),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 25, 0, 0),
                                          child: Image.network(
                                            'http://pinelandscc.co.za/wp-content/uploads/2010/07/fortinetlogo.png',
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://www.fortinet.com/content/dam/fortinet/images/products/hero-product/hero-fortiextender.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.45, -0.86),
                                      child: Text(
                                        'Serial:',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.45, -0.59),
                                      child: Text(
                                        'Status: ',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.45, -0.3),
                                      child: Text(
                                        'Model: ',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.17, -0.85),
                                      child: Text(
                                        widget.fexSN!,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (GetDeviceCall.status(
                                                editFEXGetDeviceResponse
                                                    .jsonBody,
                                              ) ==
                                              'online')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.2, -0.58),
                                              child: Image.network(
                                                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fclipground.com%2Fimages%2Fgreen-check-mark-clipart-8.png&f=1&nofb=1&ipt=40a2473ca92d349321b8d868f7eb7afff88b202663da791605775961419a7182&ipo=images',
                                                width: 20,
                                                height: 20,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          if (GetDeviceCall.status(
                                                editFEXGetDeviceResponse
                                                    .jsonBody,
                                              ) ==
                                              'offline')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.2, -0.58),
                                              child: Image.network(
                                                'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fsweetclipart.com%2Fmultisite%2Fsweetclipart%2Ffiles%2Fx_mark_red_circle.png&f=1&nofb=1&ipt=954a6c5fbe995403917ad3ebb5725d2917a4c2f2d14b7c3175c68e2fb65e3af0&ipo=images',
                                                width: 20,
                                                height: 20,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          1, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.09, -0.58),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Carrier: ',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (getJsonField(
                                              editFEXGetDeviceResponse.jsonBody,
                                              r'''$.payload.ip''',
                                            ) !=
                                            null)
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.81, -0.58),
                                            child: Text(
                                              getJsonField(
                                                editFEXGetDeviceResponse
                                                    .jsonBody,
                                                r'''$.payload.carrier''',
                                              ).toString(),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.13, -0.32),
                                      child: Text(
                                        getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.model''',
                                        ).toString(),
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'System',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 5, 25, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, 0.03),
                                        child: Text(
                                          'IP Address: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.24),
                                        child: Text(
                                          'Firmware: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.45),
                                        child: Text(
                                          'Modem Firmware: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.32, 0.03),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.ip''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.2, 0.24),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.firmware''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.14, 0.45),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.modem_firmware''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, 0.03),
                                        child: Text(
                                          'CPU Usage: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.24),
                                        child: Text(
                                          'Memory Usage: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.45),
                                        child: Text(
                                          'Unit Temperature: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.67),
                                        child: Text(
                                          'System Uptime: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.32, 0.03),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.system.cpu''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.2, 0.24),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.system.memory''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.14, 0.45),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.system.temperature''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.2, 0.67),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.system.sysuptime''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBlack,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Modem ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 2, 25, 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, 0.03),
                                        child: Text(
                                          'IMEI: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.24),
                                        child: Text(
                                          'Data Usage: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.91, 0.45),
                                        child: Text(
                                          'SIM State: ',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.32, 0.03),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.modems.modem1.imei''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (getJsonField(
                                          editFEXGetDeviceResponse.jsonBody,
                                          r'''$.payload.ip''',
                                        ) !=
                                        null)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.2, 0.24),
                                        child: Text(
                                          getJsonField(
                                            editFEXGetDeviceResponse.jsonBody,
                                            r'''$.payload.modems.modem1.data_usage''',
                                          ).toString(),
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 5, 0),
                                          child: Text(
                                            'SIM1',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (getJsonField(
                                              editFEXGetDeviceResponse.jsonBody,
                                              r'''$.payload.modems.modem1.sim1.status''',
                                            ) ==
                                            'CONN_STATE_CONNECTED')
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.2, -0.58),
                                            child: Image.network(
                                              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fclipground.com%2Fimages%2Fgreen-check-mark-clipart-8.png&f=1&nofb=1&ipt=40a2473ca92d349321b8d868f7eb7afff88b202663da791605775961419a7182&ipo=images',
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        if (getJsonField(
                                              editFEXGetDeviceResponse.jsonBody,
                                              r'''$.payload.modems.modem1.sim1.status''',
                                            ) ==
                                            'disconnected')
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.2, -0.58),
                                            child: Image.network(
                                              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fsweetclipart.com%2Fmultisite%2Fsweetclipart%2Ffiles%2Fx_mark_red_circle.png&f=1&nofb=1&ipt=954a6c5fbe995403917ad3ebb5725d2917a4c2f2d14b7c3175c68e2fb65e3af0&ipo=images',
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15, 0, 5, 0),
                                          child: Text(
                                            'SIM2',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (getJsonField(
                                              editFEXGetDeviceResponse.jsonBody,
                                              r'''$.payload.modems.modem1.sim2.status''',
                                            ) ==
                                            'CONN_STATE_CONNECTED')
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.2, -0.58),
                                            child: Image.network(
                                              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fclipground.com%2Fimages%2Fgreen-check-mark-clipart-8.png&f=1&nofb=1&ipt=40a2473ca92d349321b8d868f7eb7afff88b202663da791605775961419a7182&ipo=images',
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        if (getJsonField(
                                              editFEXGetDeviceResponse.jsonBody,
                                              r'''$.payload.modems.modem1.sim2.status''',
                                            ) ==
                                            'disconnected')
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.2, -0.58),
                                            child: Image.network(
                                              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fsweetclipart.com%2Fmultisite%2Fsweetclipart%2Ffiles%2Fx_mark_red_circle.png&f=1&nofb=1&ipt=954a6c5fbe995403917ad3ebb5725d2917a4c2f2d14b7c3175c68e2fb65e3af0&ipo=images',
                                              width: 20,
                                              height: 20,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'editFEX',
                                        queryParams: {
                                          'fexSN': serializeParam(
                                            widget.fexSN,
                                            ParamType.String,
                                          ),
                                          'token': serializeParam(
                                            widget.token,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'Refresh',
                                    icon: Icon(
                                      Icons.refresh,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: 130,
                                      height: 40,
                                      color: Colors.transparent,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBlack,
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBlack,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (GetDeviceCall.status(
                                        editFEXGetDeviceResponse.jsonBody,
                                      ) ==
                                      'online')
                                    FFButtonWidget(
                                      onPressed: () async {
                                        apiResultt44 = await FexrebootCall.call(
                                          sn: widget.fexSN,
                                          token: widget.token,
                                        );
                                        if (editFEXGetDeviceResponse
                                            .succeeded) {
                                          context.pushNamed(
                                            'rebootConfPage',
                                            queryParams: {
                                              'fexSN': serializeParam(
                                                widget.fexSN,
                                                ParamType.String,
                                              ),
                                              'fexDescription': serializeParam(
                                                widget.fexDescription,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .topToBottom,
                                              ),
                                            },
                                          );
                                        } else {
                                          context.pushNamed(
                                            'editFEX',
                                            queryParams: {
                                              'fexSN': serializeParam(
                                                '',
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }

                                        setState(() {});
                                      },
                                      text: 'Reboot FEX',
                                      icon: Icon(
                                        Icons.settings_power,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBlack,
                                            ),
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBlack,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
