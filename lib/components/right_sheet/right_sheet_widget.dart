import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'right_sheet_model.dart';
export 'right_sheet_model.dart';

class RightSheetWidget extends StatefulWidget {
  const RightSheetWidget({super.key});

  @override
  State<RightSheetWidget> createState() => _RightSheetWidgetState();
}

class _RightSheetWidgetState extends State<RightSheetWidget> {
  late RightSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RightSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(
        minHeight: 250.0,
        maxHeight: 320.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Text(
                'Account Settings',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Nunito',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                      useGoogleFonts: GoogleFonts.asMap().containsKey('Nunito'),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 0.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF3F393F),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.goNamed(
                      'profile',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24.0,
                        ),
                      ),
                      Text(
                        'Profile',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Nunito'),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 0.25,
                decoration: const BoxDecoration(
                  color: Color(0xFF3F393F),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.pushNamedAuth(
                        'loginEmail',
                        context.mounted,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                          ),
                        },
                      );
                    },
                    child: Text(
                      'Logout',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Nunito',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts:
                                GoogleFonts.asMap().containsKey('Nunito'),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
