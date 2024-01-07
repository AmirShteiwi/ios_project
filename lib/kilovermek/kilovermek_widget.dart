import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class KilovermekWidget extends StatefulWidget {
  const KilovermekWidget({Key? key}) : super(key: key);

  @override
  _KilovermekWidgetState createState() => _KilovermekWidgetState();
}

class _KilovermekWidgetState extends State<KilovermekWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xD149E0DE),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text(
          'Kilo Vermek',
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
              color: FlutterFlowTheme.of(context).primaryBtnText,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.15, -0.6),
                    child: Container(
                      width: double.infinity,
                      height: 800,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.71),
                            child: Text(
                              'Kilo vermek için vücuda giren enerjinin harcanan enerjiden az olması gerekir, yani vücutta kalori açığı oluşturulmalıdır. Bunun için de gün içinde tüketilen besinlerin kalorisinin hesaplanması gerekir',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, -0.04),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Dayitliste');
                              },
                              text:
                              '1 haftada 10 kilo verdin Dyiet listesi ücretsizdir',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 80,
                                color:
                                FlutterFlowTheme.of(context).primaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                            alignment: AlignmentDirectional(-0.04, 0.36),
                            child: Text(
                              'Özel Diyet yapmak için',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.05, 0.55),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await launchUrl(Uri(
                                  scheme: 'tel',
                                  path: '+90 546 967 49 41',
                                ));
                              },
                              text: 'Hemen Tıkla',
                              icon: Icon(
                                Icons.call,
                                size: 15,
                              ),
                              options: FFButtonOptions(
                                width: 180,
                                height: 60,
                                color: Color(0xFF39EF7B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                          color: FlutterFlowTheme.of(context).primaryColor,
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
                          color: FlutterFlowTheme.of(context).primaryColor,
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
