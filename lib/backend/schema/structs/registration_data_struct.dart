// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegistrationDataStruct extends BaseStruct {
  RegistrationDataStruct({
    String? password,
    String? email,
  })  : _password = password,
        _email = email;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static RegistrationDataStruct fromMap(Map<String, dynamic> data) =>
      RegistrationDataStruct(
        password: data['password'] as String?,
        email: data['email'] as String?,
      );

  static RegistrationDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RegistrationDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'password': _password,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static RegistrationDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RegistrationDataStruct(
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RegistrationDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegistrationDataStruct &&
        password == other.password &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([password, email]);
}

RegistrationDataStruct createRegistrationDataStruct({
  String? password,
  String? email,
}) =>
    RegistrationDataStruct(
      password: password,
      email: email,
    );
