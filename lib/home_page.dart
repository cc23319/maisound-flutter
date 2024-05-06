import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: GlobalKey<ScaffoldState>(),
        backgroundColor: Color(0xFF303047),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 80,
                          fillColor: Color.fromRGBO(18, 18, 23, 0.9),
                          hoverColor: Color.fromRGBO(18, 18, 23, 0.6),
                          hoverIconColor: Colors.white,
                          icon: FaIcon(
                            FontAwesomeIcons.bars,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 40,
                          ),
                          onPressed: () {
                            print('MenuButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Menu',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 80,
                          fillColor: Color.fromRGBO(18, 18, 23, 0.9),
                          hoverColor: Color.fromRGBO(18, 18, 23, 0.6),
                          hoverIconColor: Colors.white,
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 40,
                          ),
                          onPressed: () {
                            print('MenuButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'New Project',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20,
                          borderWidth: 1,
                          buttonSize: 80,
                          fillColor: Color.fromRGBO(18, 18, 23, 0.9),
                          hoverColor: Color.fromRGBO(18, 18, 23, 0.6),
                          hoverIconColor: Colors.white,
                          icon: Icon(
                            Icons.upload_file,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 40,
                          ),
                          onPressed: () {
                            print('MenuButton pressed ...');
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Load Project',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(width: 106)),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
