// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileStruct extends BaseStruct {
  ProfileStruct({
    String? id,
    String? name,
    String? description,
    String? state,
    OrganizationStruct? organization,
    List<AuthorizationsStruct>? authorizations,
  })  : _id = id,
        _name = name,
        _description = description,
        _state = state,
        _organization = organization,
        _authorizations = authorizations;

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

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "organization" field.
  OrganizationStruct? _organization;
  OrganizationStruct get organization => _organization ?? OrganizationStruct();
  set organization(OrganizationStruct? val) => _organization = val;

  void updateOrganization(Function(OrganizationStruct) updateFn) {
    updateFn(_organization ??= OrganizationStruct());
  }

  bool hasOrganization() => _organization != null;

  // "authorizations" field.
  List<AuthorizationsStruct>? _authorizations;
  List<AuthorizationsStruct> get authorizations => _authorizations ?? const [];
  set authorizations(List<AuthorizationsStruct>? val) => _authorizations = val;

  void updateAuthorizations(Function(List<AuthorizationsStruct>) updateFn) {
    updateFn(_authorizations ??= []);
  }

  bool hasAuthorizations() => _authorizations != null;

  static ProfileStruct fromMap(Map<String, dynamic> data) => ProfileStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        state: data['state'] as String?,
        organization: OrganizationStruct.maybeFromMap(data['organization']),
        authorizations: getStructList(
          data['authorizations'],
          AuthorizationsStruct.fromMap,
        ),
      );

  static ProfileStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProfileStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'state': _state,
        'organization': _organization?.toMap(),
        'authorizations': _authorizations?.map((e) => e.toMap()).toList(),
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
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'organization': serializeParam(
          _organization,
          ParamType.DataStruct,
        ),
        'authorizations': serializeParam(
          _authorizations,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileStruct(
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
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        organization: deserializeStructParam(
          data['organization'],
          ParamType.DataStruct,
          false,
          structBuilder: OrganizationStruct.fromSerializableMap,
        ),
        authorizations: deserializeStructParam<AuthorizationsStruct>(
          data['authorizations'],
          ParamType.DataStruct,
          true,
          structBuilder: AuthorizationsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProfileStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        state == other.state &&
        organization == other.organization &&
        listEquality.equals(authorizations, other.authorizations);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, description, state, organization, authorizations]);
}

ProfileStruct createProfileStruct({
  String? id,
  String? name,
  String? description,
  String? state,
  OrganizationStruct? organization,
}) =>
    ProfileStruct(
      id: id,
      name: name,
      description: description,
      state: state,
      organization: organization ?? OrganizationStruct(),
    );
