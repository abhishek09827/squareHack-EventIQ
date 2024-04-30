import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'event_creator_model.dart';
export 'event_creator_model.dart';

class EventCreatorWidget extends StatefulWidget {
  const EventCreatorWidget({super.key});

  @override
  State<EventCreatorWidget> createState() => _EventCreatorWidgetState();
}

class _EventCreatorWidgetState extends State<EventCreatorWidget> {
  late EventCreatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventCreatorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            automaticallyImplyLeading: true,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {
                  FFAppState().aiRes = 'a';
                });
                context.safePop();
              },
              child: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 22.0,
              ),
            ),
            title: Text(
              'Event',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Roboto'),
                  ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Response is being prepared !!!',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: const Duration(milliseconds: 7000),
                        backgroundColor: const Color(0xFF3982D7),
                      ),
                    );
                    _model.apiResultw02 = await GeminiCallCall.call();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Response is being prepared !!!',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: const Duration(milliseconds: 4000),
                        backgroundColor: const Color(0xFF3982D7),
                      ),
                    );
                    setState(() {
                      FFAppState().aiRes = GeminiCallCall.text(
                        (_model.apiResultw02?.jsonBody ?? ''),
                      )!;
                    });

                    setState(() {});
                  },
                  child: Icon(
                    Icons.settings_suggest,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 22.0,
                  ),
                ),
              ),
            ],
            centerTitle: true,
          ),
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    height: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 25.0, 0.0),
                              child: SafeArea(
                                child: Container(
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().aiRes != 'a')
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0),
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 0.0, 15.0),
                                          child: MarkdownBody(
                                            data: FFAppState().aiRes,
                                            selectable: true,
                                            onTapLink: (_, url, __) =>
                                                launchURL(url!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            if (FFAppState().aiRes == 'a')
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  'Your AI generated Event results will appear here !!! Click top right corner',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                          ],
                        ),
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
