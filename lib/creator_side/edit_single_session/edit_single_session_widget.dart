import '/components/left_sheet/left_sheet_widget.dart';
import '/components/right_sheet/right_sheet_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'edit_single_session_model.dart';
export 'edit_single_session_model.dart';

class EditSingleSessionWidget extends StatefulWidget {
  const EditSingleSessionWidget({
    super.key,
    this.title,
    this.duration,
  });

  final String? title;
  final String? duration;

  @override
  State<EditSingleSessionWidget> createState() =>
      _EditSingleSessionWidgetState();
}

class _EditSingleSessionWidgetState extends State<EditSingleSessionWidget> {
  late EditSingleSessionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditSingleSessionModel());

    _model.textController ??= TextEditingController(text: widget.title);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              height: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const LeftSheetWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: const Icon(
                                    Icons.menu,
                                    color: Color(0xFF3F393F),
                                    size: 24.0,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/creato_icon.png',
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Text(
                                'User',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: const Color(0xFF3F393F),
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Nunito'),
                                    ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const RightSheetWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: const Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF3F393F),
                                size: 36.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 52.0, 0.0, 12.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/Vector(4).png',
                                    width: 8.33,
                                    height: 16.67,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'back',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: const Color(0xFF1DB954),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            decoration:
                                                TextDecoration.underline,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Nunito'),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Text(
                                'Events',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: const Color(0xFF3F393F),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Nunito'),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 27.0, 0.0, 27.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(20.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            1.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'U',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito',
                                                color: const Color(0xFF3F393F),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Nunito'),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'User',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: const Color(0xFF3F393F),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'scheduly.com/mylink',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: const Color(0xFF319F43),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Nunito'),
                                                ),
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
                      Container(
                        width: double.infinity,
                        height: 0.25,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB7B5B7),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 27.0, 0.0, 0.0),
                          child: Text(
                            'Edit Event',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito',
                                  color: const Color(0xFF3F393F),
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Nunito'),
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 112.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: const Color(0xFF1DB954),
                              width: 0.25,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 14.0, 10.0, 14.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/fluent_ratio-one-to-one-20-regular.png',
                                    width: 61.0,
                                    height: 61.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'One-on-One',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: const Color(0xFF3F393F),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Nunito'),
                                                ),
                                          ),
                                          Text(
                                            'One host with one invitee',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: const Color(0xFF3F393F),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Nunito'),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Good for: coffee chats, 1:1 interviews, etc',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: const Color(0xFF3F393F),
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w300,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Nunito'),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 40.0,
                              height: 30.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Edit',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Colors.black,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w300,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Nunito'),
                                          ),
                                    ),
                                  ),
                                  Container(
                                    width: 25.0,
                                    height: 1.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF319F43),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 60.0,
                                height: 30.0,
                                decoration: const BoxDecoration(),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.goNamed(
                                      'previewEditSession',
                                      queryParameters: {
                                        'title': serializeParam(
                                          _model.textController.text,
                                          ParamType.String,
                                        ),
                                        'duration': serializeParam(
                                          _model.dropDownValue1,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Preview',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              color: Colors.black,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w300,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Nunito'),
                                            ),
                                      ),
                                      Container(
                                        width: 50.0,
                                        height: 1.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
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
                      Container(
                        width: double.infinity,
                        height: 0.25,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB7B5B7),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 0.0),
                              child: Text(
                                'Event Name',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: const Color(0xFF3F393F),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Nunito'),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 4.0, 0.0),
                              child: SizedBox(
                                width: 350.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 0.25,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF319F43),
                                        width: 0.25,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.25,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.25,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 6.0, 12.0, 6.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: const Color(0xFF3F393F),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 11.0, 0.0, 0.0),
                              child: Text(
                                'Duration',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: const Color(0xFF3F393F),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Nunito'),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: FlutterFlowDropDown<String>(
                                controller: _model.dropDownValueController1 ??=
                                    FormFieldController<String>(
                                  _model.dropDownValue1 ??=
                                      valueOrDefault<String>(
                                    widget.duration,
                                    '30 mins',
                                  ),
                                ),
                                options: const [
                                  '15 mins',
                                  '30 mins',
                                  '45 mins',
                                  '60 mins'
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDownValue1 = val),
                                width: 164.0,
                                height: 56.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: const Color(0xFF3F393F),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                                icon: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Color(0xFF319F43),
                                  size: 24.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: const Color(0xFF3F393F),
                                borderWidth: 0.25,
                                borderRadius: 10.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 11.0, 0.0, 0.0),
                                  child: Text(
                                    'Set Schedule',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: const Color(0xFF3F393F),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Nunito'),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 11.0, 0.0, 0.0),
                                  child: Text(
                                    ' *',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: const Color(0xFF319F43),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Nunito'),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  'Start Time',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Nunito'),
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController2 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue2 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHourList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue2 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    14.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'End Time',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color:
                                                              const Color(0xFF3F393F),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Nunito'),
                                                        ),
                                                  ),
                                                ),
                                                FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController3 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue3 ??=
                                                        'null',
                                                  ),
                                                  options:
                                                      functions.getHoursAfter(
                                                          _model
                                                              .dropDownValue2!,
                                                          functions
                                                              .getHourList()
                                                              .toList()),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownValue3 =
                                                          val),
                                                  width: 115.0,
                                                  height: 40.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                                  icon: const Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Color(0xFF3F393F),
                                                    size: 15.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      const Color(0xFF535353),
                                                  borderWidth: 0.4,
                                                  borderRadius: 4.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 8.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              'Day',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Nunito'),
                                                      ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((_model.dropDownValue2 != null && _model.dropDownValue2 != '') &&
                                                  (_model.dropDownValue3 !=
                                                          null &&
                                                      _model.dropDownValue3 !=
                                                          '') &&
                                                  (_model.dropDownValue2 !=
                                                      'null') &&
                                                  (_model.dropDownValue3 !=
                                                      'null'))
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model
                                                          .dropDownValueController2
                                                          ?.value = 'null';
                                                    });
                                                    setState(() {
                                                      _model
                                                          .dropDownValueController3
                                                          ?.value = 'null';
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF3F393F),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'M',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Rubik'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if ((_model.dropDownValue2 == null || _model.dropDownValue2 == '') ||
                                                  (_model.dropDownValue3 ==
                                                          null ||
                                                      _model.dropDownValue3 ==
                                                          '') ||
                                                  (_model.dropDownValue2 ==
                                                      'null') ||
                                                  (_model.dropDownValue3 ==
                                                      'null'))
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model
                                                          .dropDownValueController2
                                                          ?.value = '12:00 PM';
                                                    });
                                                    setState(() {
                                                      _model
                                                          .dropDownValueController3
                                                          ?.value = '5:00 PM';
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        width: 0.4,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'M',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  color: const Color(
                                                                      0xFF3F393F),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Rubik'),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController4 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue4 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue4 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController5 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue5 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue4!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue5 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue4 != null && _model.dropDownValue4 != '') &&
                                                (_model.dropDownValue5 !=
                                                        null &&
                                                    _model.dropDownValue5 !=
                                                        '') &&
                                                (_model.dropDownValue4 !=
                                                    'null') &&
                                                (_model.dropDownValue5 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController4
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController5
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'T',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue4 == null || _model.dropDownValue4 == '') ||
                                                (_model.dropDownValue5 ==
                                                        null ||
                                                    _model.dropDownValue5 ==
                                                        '') ||
                                                (_model.dropDownValue4 ==
                                                    'null') ||
                                                (_model.dropDownValue5 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController4
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController5
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'T',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController6 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue6 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue6 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController7 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue7 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue6!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue7 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue6 != null && _model.dropDownValue6 != '') &&
                                                (_model.dropDownValue7 !=
                                                        null &&
                                                    _model.dropDownValue7 !=
                                                        '') &&
                                                (_model.dropDownValue6 !=
                                                    'null') &&
                                                (_model.dropDownValue7 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController6
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController7
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'W',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue6 == null || _model.dropDownValue6 == '') ||
                                                (_model.dropDownValue7 ==
                                                        null ||
                                                    _model.dropDownValue7 ==
                                                        '') ||
                                                (_model.dropDownValue6 ==
                                                    'null') ||
                                                (_model.dropDownValue7 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController6
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController7
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'W',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController8 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue8 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue8 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController9 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue9 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue8!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue9 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue8 != null && _model.dropDownValue8 != '') &&
                                                (_model.dropDownValue9 !=
                                                        null &&
                                                    _model.dropDownValue9 !=
                                                        '') &&
                                                (_model.dropDownValue8 !=
                                                    'null') &&
                                                (_model.dropDownValue9 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController8
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController9
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Th',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue8 == null || _model.dropDownValue8 == '') ||
                                                (_model.dropDownValue9 ==
                                                        null ||
                                                    _model.dropDownValue9 ==
                                                        '') ||
                                                (_model.dropDownValue8 ==
                                                    'null') ||
                                                (_model.dropDownValue9 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController8
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController9
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Th',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController10 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue10 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue10 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController11 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue11 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue10!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue11 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue10 != null && _model.dropDownValue10 != '') &&
                                                (_model.dropDownValue11 !=
                                                        null &&
                                                    _model.dropDownValue11 !=
                                                        '') &&
                                                (_model.dropDownValue10 !=
                                                    'null') &&
                                                (_model.dropDownValue11 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController10
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController11
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'F',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue10 == null || _model.dropDownValue10 == '') ||
                                                (_model.dropDownValue11 ==
                                                        null ||
                                                    _model.dropDownValue11 ==
                                                        '') ||
                                                (_model.dropDownValue10 ==
                                                    'null') ||
                                                (_model.dropDownValue11 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController10
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController11
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'F',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController12 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue12 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue12 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController13 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue13 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue12!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue13 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue12 != null && _model.dropDownValue12 != '') &&
                                                (_model.dropDownValue13 !=
                                                        null &&
                                                    _model.dropDownValue13 !=
                                                        '') &&
                                                (_model.dropDownValue12 !=
                                                    'null') &&
                                                (_model.dropDownValue13 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController12
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController13
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'S',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue12 == null || _model.dropDownValue12 == '') ||
                                                (_model.dropDownValue13 ==
                                                        null ||
                                                    _model.dropDownValue13 ==
                                                        '') ||
                                                (_model.dropDownValue12 ==
                                                    'null') ||
                                                (_model.dropDownValue13 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController12
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController13
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'S',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .dropDownValueController14 ??=
                                                  FormFieldController<String>(
                                                _model.dropDownValue14 ??=
                                                    'null',
                                              ),
                                              options: functions.getHourList(),
                                              onChanged: (val) => setState(() =>
                                                  _model.dropDownValue14 = val),
                                              width: 115.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Rubik',
                                                        color:
                                                            const Color(0xFF3F393F),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Rubik'),
                                                      ),
                                              icon: const Icon(
                                                Icons.arrow_drop_down,
                                                color: Color(0xFF3F393F),
                                                size: 15.0,
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2.0,
                                              borderColor: const Color(0xFF535353),
                                              borderWidth: 0.4,
                                              borderRadius: 4.0,
                                              margin: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 4.0, 8.0, 4.0),
                                              hidesUnderline: true,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController15 ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue15 ??=
                                                      'null',
                                                ),
                                                options:
                                                    functions.getHoursAfter(
                                                        _model.dropDownValue14!,
                                                        functions
                                                            .getHourList()
                                                            .toList()),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                        .dropDownValue15 = val),
                                                width: 115.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Rubik',
                                                      color: const Color(0xFF3F393F),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          GoogleFonts.asMap()
                                                              .containsKey(
                                                                  'Rubik'),
                                                    ),
                                                icon: const Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Color(0xFF3F393F),
                                                  size: 15.0,
                                                ),
                                                fillColor: Colors.white,
                                                elevation: 2.0,
                                                borderColor: const Color(0xFF535353),
                                                borderWidth: 0.4,
                                                borderRadius: 4.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 8.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if ((_model.dropDownValue14 != null && _model.dropDownValue14 != '') &&
                                                (_model.dropDownValue15 !=
                                                        null &&
                                                    _model.dropDownValue15 !=
                                                        '') &&
                                                (_model.dropDownValue14 !=
                                                    'null') &&
                                                (_model.dropDownValue15 !=
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController14
                                                        ?.value = 'null';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController15
                                                        ?.value = 'null';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFF3F393F),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Su',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if ((_model.dropDownValue14 == null || _model.dropDownValue14 == '') ||
                                                (_model.dropDownValue15 ==
                                                        null ||
                                                    _model.dropDownValue15 ==
                                                        '') ||
                                                (_model.dropDownValue14 ==
                                                    'null') ||
                                                (_model.dropDownValue15 ==
                                                    'null'))
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController14
                                                        ?.value = '12:00 PM';
                                                  });
                                                  setState(() {
                                                    _model
                                                        .dropDownValueController15
                                                        ?.value = '5:00 PM';
                                                  });
                                                },
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    border: Border.all(
                                                      color: const Color(0xFF3F393F),
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Su',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Rubik',
                                                            color: const Color(
                                                                0xFF3F393F),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Rubik'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 35.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.goNamed('events');
                                  },
                                  text: 'Save',
                                  options: FFButtonOptions(
                                    width: 81.0,
                                    height: 26.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0xFF1DB954),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Nunito'),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
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
            ),
          ),
        ),
      ),
    );
  }
}
