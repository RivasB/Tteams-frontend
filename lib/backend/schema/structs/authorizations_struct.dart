// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthorizationsStruct extends BaseStruct {
  AuthorizationsStruct({
    String? id,
    String? name,
    String? resource,
    String? action,
    String? state,
  })  : _id = id,
        _name = name,
        _resource = resource,
        _action = action,
        _state = state;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "resource" field.
  String? _resource;
  String get resource => _resource ?? '';
  set resource(String? val) => _resource = val;

  bool hasResource() => _resource != null;

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  set action(String? val) => _action = val;

  bool hasAction() => _action != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static AuthorizationsStruct fromMap(Map<String, dynamic> data) =>
      AuthorizationsStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        resource: data['resource'] as String?,
        action: data['action'] as String?,
        state: data['state'] as String?,
      );

  static AuthorizationsStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthorizationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'resource': _resource,
        'action': _action,
        'state': _state,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'resource': serializeParam(
          _resource,
          ParamType.String,
        ),
        'action': serializeParam(
          _action,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthorizationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthorizationsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        resource: deserializeParam(
          data['resource'],
          ParamType.String,
          false,
        ),
        action: deserializeParam(
          data['action'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthorizationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthorizationsStruct &&
        id == other.id &&
        name == other.name &&
        resource == other.resource &&
        action == other.action &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, resource, action, state]);
}

AuthorizationsStruct createAuthorizationsStruct({
  String? id,
  String? name,
  String? resource,
  String? action,
  String? state,
}) =>
    AuthorizationsStruct(
      id: id,
      name: name,
      resource: resource,
      action: action,
      state: state,
    );
