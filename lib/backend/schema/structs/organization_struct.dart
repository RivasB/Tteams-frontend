// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationStruct extends BaseStruct {
  OrganizationStruct({
    String? id,
    String? name,
    String? description,
    String? contact,
    String? state,
  })  : _id = id,
        _name = name,
        _description = description,
        _contact = contact,
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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  static OrganizationStruct fromMap(Map<String, dynamic> data) =>
      OrganizationStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        contact: data['contact'] as String?,
        state: data['state'] as String?,
      );

  static OrganizationStruct? maybeFromMap(dynamic data) => data is Map
      ? OrganizationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'contact': _contact,
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
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrganizationStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrganizationStruct(
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
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        contact: deserializeParam(
          data['contact'],
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
  String toString() => 'OrganizationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrganizationStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        contact == other.contact &&
        state == other.state;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, description, contact, state]);
}

OrganizationStruct createOrganizationStruct({
  String? id,
  String? name,
  String? description,
  String? contact,
  String? state,
}) =>
    OrganizationStruct(
      id: id,
      name: name,
      description: description,
      contact: contact,
      state: state,
    );
