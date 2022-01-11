import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';

class TestkartaWidget extends StatefulWidget {
  const TestkartaWidget({Key key}) : super(key: key);

  @override
  _TestkartaWidgetState createState() => _TestkartaWidgetState();
}

class _TestkartaWidgetState extends State<TestkartaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CourtsRecord>>(
      stream: queryCourtsRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFoldingCube(
                color: Color(0xFF278DEE),
                size: 50,
              ),
            ),
          );
        }
        List<CourtsRecord> testkartaCourtsRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final testkartaCourtsRecord = testkartaCourtsRecordList.isNotEmpty
            ? testkartaCourtsRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Text(
              'Testkarta',
              style: FlutterFlowTheme.title2.override(
                fontFamily: 'Overpass',
                color: FlutterFlowTheme.white,
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
          backgroundColor: Color(0xFFF5F5F5),
          body: SafeArea(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowStaticMap(
                      location: testkartaCourtsRecord.location,
                      apiKey:
                          'pk.eyJ1Ijoid2lmcmVlIiwiYSI6ImNreTl6MTN2NDAwZ3Myd284ZmoxZjBnamwifQ.KVjMe-p7eHD-z0eToBhtPA',
                      style: MapBoxStyle.Streets,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      fit: BoxFit.cover,
                      borderRadius: BorderRadius.circular(0),
                      markerColor: Color(0xFF278DEE),
                      markerUrl: 'wifree.ckya0o1fp0c5527qwao7jnwnq-3qrcb',
                      cached: true,
                      zoom: 15,
                      tilt: 60,
                      rotation: 0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
