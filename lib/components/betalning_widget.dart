import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BetalningWidget extends StatefulWidget {
  const BetalningWidget({Key key}) : super(key: key);

  @override
  _BetalningWidgetState createState() => _BetalningWidgetState();
}

class _BetalningWidgetState extends State<BetalningWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 5),
                child: Text(
                  'Wi-Free Abonnemang',
                  style: FlutterFlowTheme.title1,
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFF278DEE),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 25),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.award,
                              color: FlutterFlowTheme.white,
                              size: 40,
                            ),
                            Text(
                              'Premium',
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Overpass',
                                color: FlutterFlowTheme.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                'Lås upp hela appen och bli av med reklamen genom att skaffa premium. Premiumfunktionen kostar 99:-/år och betalas direkt i appen. Genom att gå vidare godkänner du våra villkor.',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Overpass',
                                  color: FlutterFlowTheme.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Skaffa premium',
                        options: FFButtonOptions(
                          width: 160,
                          height: 40,
                          color: FlutterFlowTheme.white,
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontFamily: 'Overpass',
                            color: Color(0xFF278DEE),
                          ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 25),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Gratis',
                            style: FlutterFlowTheme.title2,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: Text(
                              'Wi-Free gratisversion låter dig bläddra runt på kartan och se gratis Wi-Fi platser runt omkring dig.\n\n-Reklam\n-Begränsade platser',
                              style: FlutterFlowTheme.bodyText1,
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
      ],
    );
  }
}
