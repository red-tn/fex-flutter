import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inventory_page/inventory_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  ApiCallResponse? apiResult3zu;
  TextEditingController? textController;

  late bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: Image.network(
                                  'http://pinelandscc.co.za/wp-content/uploads/2010/07/fortinetlogo.png',
                                ).image,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    TextFormField(
                                      controller: textController,
                                      autofocus: true,
                                      obscureText: !passwordVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Enter Authentication Token',
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.vpn_lock_outlined,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => passwordVisibility =
                                                !passwordVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            passwordVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 24, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          if (textController!.text != null &&
                                              textController!.text != '') {
                                            apiResult3zu =
                                                await FexinventoryCall.call(
                                              token: textController!.text,
                                            );
                                            _shouldSetState = true;
                                            if ((apiResult3zu?.succeeded ??
                                                true)) {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      InventoryPageWidget(
                                                    token: textController!.text,
                                                  ),
                                                ),
                                              );
                                            } else {
                                              if (!(apiResult3zu?.succeeded ??
                                                  true)) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text((apiResult3zu
                                                                  ?.statusCode ??
                                                              200)
                                                          .toString()),
                                                      content: Text(
                                                          'Check your API Key!!!'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Retry'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              } else {
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                            }
                                          } else {
                                            Navigator.pop(context);
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text: 'Authenticate',
                                        options: FFButtonOptions(
                                          width: 200,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .darkBG,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://www.fortinet.com/content/dam/fortinet/images/products/hero-product/hero-fortiextender.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                              child: Text(
                                'Don\'t have a token?  Obtain an Authentication Token, please log into  FortiExtender Cloud and access your API settings.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await launchURL(
                                    'https://fortiextender.forticloud.com/');
                              },
                              text: 'Access FortiExtender Cloud',
                              icon: Icon(
                                Icons.cloud_queue_outlined,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 250,
                                height: 40,
                                color: Color(0xFF606261),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
