import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BizeinfoWidget extends StatefulWidget {
  const BizeinfoWidget({Key? key}) : super(key: key);

  @override
  _BizeinfoWidgetState createState() => _BizeinfoWidgetState();
}

class _BizeinfoWidgetState extends State<BizeinfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xD149E0DE),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text(
          'Bize Ulaşın',
          style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color:Colors.yellow.shade500,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.15, -0.6),
                    child: Container(
                      width: double.infinity,
                      height: 550,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.96, -0.44),
                            child: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 60,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0.01),
                            child: Icon(
                              Icons.call,
                              color: Colors.black,
                              size: 60,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.93, 0.47),
                            child: FaIcon(
                              FontAwesomeIcons.fax,
                              color: Colors.black,
                              size: 60,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.34, -0.4),
                            child: Text(
                              'Email : bizDD@gmail.com',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.23, 0.02),
                            child: Text(
                              '+90 546 967 49 41',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.19, 0.44),
                            child: Text(
                              '222-333-8888',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1, -0.55),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await launchUrl(Uri(
                            scheme: 'tel',
                            path: '+90 546 967 49 41',
                          ));
                        },
                        text: '',
                        icon: Icon(
                          Icons.call,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 150,
                          height: 40,
                          color:Colors.black,
                          textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
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
                    Align(
                      alignment: AlignmentDirectional(-0.95, -0.65),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('mainpage');
                        },
                        text: '',
                        icon: Icon(
                          Icons.home_outlined,
                          size: 15,
                        ),
                        options: FFButtonOptions(
                          width: 150,
                          height: 40,
                          color:Colors.black,
                          textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
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
      ),
    );
  }
}
