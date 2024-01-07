import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YemeklerkaloriWidget extends StatefulWidget {
  const YemeklerkaloriWidget({Key? key}) : super(key: key);

  @override
  _YemeklerkaloriWidgetState createState() => _YemeklerkaloriWidgetState();
}

class _YemeklerkaloriWidgetState extends State<YemeklerkaloriWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xD149E0DE),
      appBar:AppBar(
        backgroundColor: Colors.lightBlueAccent.shade400,
        title: Text(
          'Yemekleri Kalori',
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
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Text(
                            'Bezelye Çorbası\t        100g\t       75 kcal\nBulgur Pilavı\t                100g\t      215 kcal\nMeksika Dürümü        100g\t      163 kcal\nKıymalı Fasulye          \t100g\t      105 kcal\nHint Bezelye Yemeği\t100g      \t330 kcal\nDomuz Pirzola\t             100g       225 kcal\nEnchilada\t                      100g\t       168 kcal\nEsmer Pirinç\t                100g\t       362 kcal\nFajita\t                              100g\t        117 kcal\nFish and Chips           \t100g        \t195 kcal\nFırında Kurufasulye   100g\t      94 kcal\nFırında Tavuk\t               100g      \t164 kcal\nHumus\t                           100g         \t177 kcal\nHünkar Beğendi         \t100g         174 kcal\nKarnıyarık\t                      100g\t       134 kcal\nKebap                                \t100g       \t215 kcal\nKuzu Tandır\t                   100g         \t150 kcal\nKıymalı Dolma\t               100g        \t114 kcal\nKıymalı/Etli Pide            \t100g     \t297 kcal\nKızarmış Pirinç\t              100g\t        186 kcal\nLazanya\t                           100g\t          132 kcal\nMakarna ve Peynir\t       100g          \t370 kcal\nPaella\t                               100g           \t156 kcal\nPatates Püresi               \t100g\t         83 kcal\nPatates Salatası\t          100g\t         143 kcal\nPekin Ördeği\t                100g          \t225 kcal\nPeynirli Pide\t                100g          \t275 kcal\nPilav\t                                100g\t        352 kcal\nPizza\t                              100g            \t267 kcal\nRavioli\t                            100g\t           203 kcal\nRozbif\t                             100g\t          111 kcal\nRulo Köfte\t                     100g\t          254 kcal\n',
                            textAlign: TextAlign.justify,
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 18,
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
        ),
      ),
    );
  }
}
