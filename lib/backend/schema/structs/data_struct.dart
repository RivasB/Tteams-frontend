// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? type,
    String? state,
    ProfileStruct? profile,
  })  : _id = id,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone,
        _type = type,
        _state = state,
        _profile = profile;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "profile" field.
  ProfileStruct? _profile;
  ProfileStruct get profile => _profile ?? ProfileStruct();
  set profile(ProfileStruct? val) => _profile = val;

  void updateProfile(Function(ProfileStruct) updateFn) {
    updateFn(_profile ??= ProfileStruct());
  }

  bool hasProfile() => _profile != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        id: data['id'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        type: data['type'] as String?,
        state: data['state'] as String?,
        profile: ProfileStruct.maybeFromMap(data['profile']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'phone': _phone,
        'type': _type,
        'state': _state,
        'profile': _profile?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'profile': serializeParam(
          _profile,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        profile: deserializeStructParam(
          data['profile'],
          ParamType.DataStruct,
          false,
          structBuilder: ProfileStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        type == other.type &&
        state == other.state &&
        profile == other.profile;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, firstName, lastName, email, phone, type, state, profile]);
}

DataStruct createDataStruct({
  String? id,
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? type,
  String? state,
  ProfileStruct? profile,
}) =>
    DataStruct(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      type: type,
      state: state,
      profile: profile ?? ProfileStruct(),
    );
