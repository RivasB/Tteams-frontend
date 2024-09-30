// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMeStruct extends BaseStruct {
  UserMeStruct({
    String? timestamp,
    int? status,
    String? message,
    String? errors,
    DataStruct? data,
  })  : _timestamp = timestamp,
        _status = status,
        _message = message,
        _errors = errors,
        _data = data;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  set timestamp(String? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "errors" field.
  String? _errors;
  String get errors => _errors ?? '';
  set errors(String? val) => _errors = val;

  bool hasErrors() => _errors != null;

  // "data" field.
  DataStruct? _data;
  DataStruct get data => _data ?? DataStruct();
  set data(DataStruct? val) => _data = val;

  void updateData(Function(DataStruct) updateFn) {
    updateFn(_data ??= DataStruct());
  }

  bool hasData() => _data != null;

  static UserMeStruct fromMap(Map<String, dynamic> data) => UserMeStruct(
        timestamp: data['timestamp'] as String?,
        status: castToType<int>(data['status']),
        message: data['message'] as String?,
        errors: data['errors'] as String?,
        data: DataStruct.maybeFromMap(data['data']),
      );

  static UserMeStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserMeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'timestamp': _timestamp,
        'status': _status,
        'message': _message,
        'errors': _errors,
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'timestamp': serializeParam(
          _timestamp,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'errors': serializeParam(
          _errors,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserMeStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMeStruct(
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        errors: deserializeParam(
          data['errors'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserMeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMeStruct &&
        timestamp == other.timestamp &&
        status == other.status &&
        message == other.message &&
        errors == other.errors &&
        data == other.data;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([timestamp, status, message, errors, data]);
}

UserMeStruct createUserMeStruct({
  String? timestamp,
  int? status,
  String? message,
  String? errors,
  DataStruct? data,
}) =>
    UserMeStruct(
      timestamp: timestamp,
      status: status,
      message: message,
      errors: errors,
      data: data ?? DataStruct(),
    );
