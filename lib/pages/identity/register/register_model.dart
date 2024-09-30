import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre es un campo obligatorio';
    }

    if (!RegExp('^[a-zA-ZáéíóúÁÉÍÓÚñÑ\' -]+\$').hasMatch(val)) {
      return 'El nombre solo puede contener letras, espacios, apóstrofes, y guiones.';
    }
    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El apellido es un campo obligatorio';
    }

    if (!RegExp('^[a-zA-ZáéíóúÁÉÍÓÚñÑ\' -]+\$').hasMatch(val)) {
      return 'El apellido solo puede contener letras, espacios, apóstrofes, y guiones.';
    }
    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  final telefonoMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número telefónico es obligatorio';
    }

    if (val.length < 7) {
      return 'El rango de longitud es de 7 a 15 dígitos';
    }
    if (val.length > 15) {
      return 'El rango de longitud es de 7 a 15 dígitos';
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return 'El número telefónico no puede contener letras, caracteres especiales, ni números negativos';
    }
    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo de correo electrónico es obligatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El formato del correo electrónico no es válido. Por favor, introduce una dirección de correo válida (ejemplo@dominio.com)';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña no puede estar vacia';
    }

    if (val.length < 8) {
      return 'La contraseña debe tener al menos 8 caracteres';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]+\$')
        .hasMatch(val)) {
      return 'La contraseña no cumple con los requisitos. Debe tener al menos 8 caracteres, incluyendo una letra mayúscula, una minúscula y un número';
    }
    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // Stores action output result for [Backend Call - API (registerUserSendData)] action in Button widget.
  ApiCallResponse? registerResponse;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
