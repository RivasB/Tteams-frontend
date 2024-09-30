import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'verify_account_widget.dart' show VerifyAccountWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerifyAccountModel extends FlutterFlowModel<VerifyAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 900000;
  int timerMilliseconds = 900000;
  String timerValue = StopWatchTimer.getDisplayTime(
    900000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  final codeMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  String? _codeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Introduce tu código de verificación.';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }
    if (val.length > 6) {
      return 'Maximum 6 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (registerUserCheckCode)] action in verify widget.
  ApiCallResponse? verificationResponse;
  // Stores action output result for [Backend Call - API (login)] action in verify widget.
  ApiCallResponse? loginResponse;

  @override
  void initState(BuildContext context) {
    codeTextControllerValidator = _codeTextControllerValidator;
  }

  @override
  void dispose() {
    timerController.dispose();
    codeFocusNode?.dispose();
    codeTextController?.dispose();
  }
}
