import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class DayitlisteWidget extends StatefulWidget {
  const DayitlisteWidget({Key? key}) : super(key: key);

  @override
  _DayitlisteWidgetState createState() => _DayitlisteWidgetState();
}

class _DayitlisteWidgetState extends State<DayitlisteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xD149E0DE),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Diyet için',
          style: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: 'Poppins',
            fontSize: 25,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).lineColor,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
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
                            alignment: AlignmentDirectional(-0.61, -0.8),
                            child: Text(
                              '\nSabah\n:1 ince dilim tam tahıllı ekmek\n,2 yemek kaşığı lor\n,1 fincan şekersiz yeşil çay\nÖğle\n:2 adet haşlanmış yumurta ile yapılmış yumurta salatası\n,Mevsim yeşillikleri\nAkşam:30 gram kadar ızgara tavuk\n,Mevsim yeşillikleri –yağsız-\n2. Gün Diyet Listesi\nSabah\n\n:1 adet kepekli galeta,\n1 dilim yarım yağlı beyaz peynir\n\n',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.33, 0.07),
                            child: AutoSizeText(
                              '\nSabah\n:1 adet kepekli galeta,\n1 dilim yarım yağlı beyaz peynir\n,Mevsim yeşillikleri\nÖğle\n:Haşlanmış sebze\n, 4 yemek kaşığı light yoğurt\nAkşam\n: ½ porsiyon ızgara balık\n,Elma sirkeli yağsız salata',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.34, 0.9),
                            child: Text(
                              '\nSabah\n:1 ince dilim tam tahıllı ekmek\n,1 adet haşlanmış yumurta\n,1 fincan şekersiz yeşil çay\nÖğle\n: 1 orta boy kepçe çorba\n,Mevsim yeşillikleri\n,4 yemek kaşığı light yoğurt\nAkşam:\n1 el ayası büyüklüğünde ızgara Dana biftek\n,Mevsim yağsız salata\n,Elma sirkeli salata\n',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.94, -0.92),
                            child: Text(
                              '1. Gün Diyet Listesi',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.91, -0.21),
                            child: Text(
                              '2. Gün Diyet Listesi\n',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.94, 0.39),
                            child: Text(
                              '3. Gün Diyet Listesi',
                              style: FlutterFlowTheme.of(context).bodyText1,
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
