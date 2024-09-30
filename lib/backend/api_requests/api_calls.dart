import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TTeams API Login And Register Group Code

class TTeamsAPILoginAndRegisterGroup {
  static String getBaseUrl() => 'http://localhost:8091';
  static Map<String, String> headers = {};
  static RegisterUserSendDataCall registerUserSendDataCall =
      RegisterUserSendDataCall();
  static RegisterUserCheckCodeCall registerUserCheckCodeCall =
      RegisterUserCheckCodeCall();
  static LoginCall loginCall = LoginCall();
}

class RegisterUserSendDataCall {
  Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? password = '',
    int? phone,
  }) async {
    final baseUrl = TTeamsAPILoginAndRegisterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "firstName": "$firstName",
  "lastName": "$lastName",
  "email": "$email",
  "phone": "$phone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registerUserSendData',
      apiUrl: '$baseUrl/api/user/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
        true,
      ) as List?;
}

class RegisterUserCheckCodeCall {
  Future<ApiCallResponse> call({
    int? code,
    String? password = '',
  }) async {
    final baseUrl = TTeamsAPILoginAndRegisterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": "$code",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registerUserCheckCode',
      apiUrl: '$baseUrl/api/user/register/code',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = TTeamsAPILoginAndRegisterGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '$baseUrl/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.jwtToken''',
      );
  dynamic lifeTime(dynamic response) => getJsonField(
        response,
        r'''$.data.usefulLifeInMillis''',
      );
  List? errors(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
        true,
      ) as List?;
}

/// End TTeams API Login And Register Group Code

/// Start TTeams API Identity Group Code

class TTeamsAPIIdentityGroup {
  static String getBaseUrl({
    String? jwt = '',
  }) =>
      'http://localhost:8091/identity';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [JWT]',
  };
  static UpdateUserCall updateUserCall = UpdateUserCall();
  static GetAllProfilesCall getAllProfilesCall = GetAllProfilesCall();
  static UpdateProfileCall updateProfileCall = UpdateProfileCall();
  static CreateProfileCall createProfileCall = CreateProfileCall();
  static GetAllCall getAllCall = GetAllCall();
  static UpdateCall updateCall = UpdateCall();
  static CreateCall createCall = CreateCall();
  static GetAllUsersCall getAllUsersCall = GetAllUsersCall();
  static UpdateUseBackofficeCall updateUseBackofficeCall =
      UpdateUseBackofficeCall();
  static CreateUserCall createUserCall = CreateUserCall();
  static GetAll1Call getAll1Call = GetAll1Call();
  static Update1Call update1Call = Update1Call();
  static Create1Call create1Call = Create1Call();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static SpreadUsersCall spreadUsersCall = SpreadUsersCall();
  static ValidateCall validateCall = ValidateCall();
  static RefreshCall refreshCall = RefreshCall();
  static RetrieveLoggedUserCall retrieveLoggedUserCall =
      RetrieveLoggedUserCall();
  static GetProfileCall getProfileCall = GetProfileCall();
  static DeleteAgencyCall deleteAgencyCall = DeleteAgencyCall();
  static GetByIdCall getByIdCall = GetByIdCall();
  static DeleteCall deleteCall = DeleteCall();
  static RetrieveUserCall retrieveUserCall = RetrieveUserCall();
  static DeleteRoleCall deleteRoleCall = DeleteRoleCall();
  static GetById1Call getById1Call = GetById1Call();
  static Delete1Call delete1Call = Delete1Call();
}

class UpdateUserCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "id": "",
  "firstName": "",
  "lastName": "",
  "identification": "",
  "email": "",
  "password": "",
  "type": "ADMIN",
  "state": "ACTIVE",
  "profile": "",
  "registrationState": "VERIFICATION_ACCEPTED",
  "phone": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUser',
      apiUrl: '$baseUrl/api/user',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllProfilesCall {
  Future<ApiCallResponse> call({
    int? pageNo,
    int? pageSize,
    String? filter = '',
    String? sortBy = '',
    String? sortType = '',
    String? name = '',
    String? description = '',
    String? state = '',
    String? organization = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAllProfiles',
      apiUrl: '$baseUrl/api/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {
        'pageNo': pageNo,
        'pageSize': pageSize,
        'filter': filter,
        'sortBy': sortBy,
        'sortType': sortType,
        'name': name,
        'description': description,
        'state': state,
        'organization': organization,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfileCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "id": "",
  "name": "",
  "description": "",
  "state": "ACTIVE",
  "organization": "",
  "authorizations": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateProfile',
      apiUrl: '$baseUrl/api/profile',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProfileCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "name": "",
  "description": "",
  "organization": "",
  "state": "ACTIVE",
  "authorizations": [
    ""
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createProfile',
      apiUrl: '$baseUrl/api/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCall {
  Future<ApiCallResponse> call({
    int? pageNo,
    int? pageSize,
    String? name = '',
    String? description = '',
    String? contact = '',
    String? state = '',
    String? sortBy = '',
    String? sortType = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAll',
      apiUrl: '$baseUrl/api/organization',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {
        'pageNo': pageNo,
        'pageSize': pageSize,
        'name': name,
        'description': description,
        'contact': contact,
        'state': state,
        'sortBy': sortBy,
        'sortType': sortType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "id": "",
  "name": "",
  "description": "",
  "contact": "",
  "state": "ACTIVE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update',
      apiUrl: '$baseUrl/api/organization',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "name": "",
  "description": "",
  "contact": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create',
      apiUrl: '$baseUrl/api/organization',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUsersCall {
  Future<ApiCallResponse> call({
    int? pageNo,
    int? pageSize,
    String? filter = '',
    String? firstName = '',
    String? lastName = '',
    String? identification = '',
    String? email = '',
    String? type = '',
    String? state = '',
    String? sortBy = '',
    String? sortType = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAllUsers',
      apiUrl: '$baseUrl/api/backoffice/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'pageNo': pageNo,
        'pageSize': pageSize,
        'filter': filter,
        'firstName': firstName,
        'lastName': lastName,
        'identification': identification,
        'email': email,
        'type': type,
        'state': state,
        'sortBy': sortBy,
        'sortType': sortType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUseBackofficeCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "id": "",
  "firstName": "",
  "lastName": "",
  "identification": "",
  "email": "",
  "password": "",
  "type": "ADMIN",
  "state": "ACTIVE",
  "profile": "",
  "registrationState": "VERIFICATION_ACCEPTED",
  "phone": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUseBackoffice',
      apiUrl: '$baseUrl/api/backoffice/user',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "firstName": "",
  "lastName": "",
  "identification": "",
  "email": "",
  "password": "",
  "type": "ADMIN",
  "state": "ACTIVE",
  "profile": "",
  "registrationState": "VERIFICATION_ACCEPTED",
  "phone": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: '$baseUrl/api/backoffice/user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAll1Call {
  Future<ApiCallResponse> call({
    int? pageNo,
    int? pageSize,
    String? name = '',
    String? resource = '',
    String? action = '',
    String? state = '',
    String? sortBy = '',
    String? sortType = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAll_1',
      apiUrl: '$baseUrl/api/authorization',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {
        'pageNo': pageNo,
        'pageSize': pageSize,
        'name': name,
        'resource': resource,
        'action': action,
        'state': state,
        'sortBy': sortBy,
        'sortType': sortType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class Update1Call {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "id": "",
  "name": "",
  "resource": "",
  "action": "VIEW",
  "state": "ACTIVE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_1',
      apiUrl: '$baseUrl/api/authorization',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class Create1Call {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "name": "",
  "resource": "",
  "action": "VIEW"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_1',
      apiUrl: '$baseUrl/api/authorization',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    const ffApiRequestBody = '''
{
  "email": "",
  "oldPassword": "",
  "newPassword": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'changePassword',
      apiUrl: '$baseUrl/api/user/change/password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SpreadUsersCall {
  Future<ApiCallResponse> call({
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'spreadUsers',
      apiUrl: '$baseUrl/api/shared/spread',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'validate',
      apiUrl: '$baseUrl/api/auth/validate',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'refresh',
      apiUrl: '$baseUrl/api/auth/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveLoggedUserCall {
  Future<ApiCallResponse> call({
    String? authorization = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveLoggedUser',
      apiUrl: '$baseUrl/api/user/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': '$authorization',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProfileCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getProfile',
      apiUrl: '$baseUrl/api/profile/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAgencyCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAgency',
      apiUrl: '$baseUrl/api/profile/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getById',
      apiUrl: '$baseUrl/api/organization/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete',
      apiUrl: '$baseUrl/api/organization/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveUserCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveUser',
      apiUrl: '$baseUrl/api/backoffice/user/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRoleCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteRole',
      apiUrl: '$baseUrl/api/backoffice/user/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetById1Call {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getById_1',
      apiUrl: '$baseUrl/api/authorization/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class Delete1Call {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuthentication = '',
    String? jwt = '',
  }) async {
    final baseUrl = TTeamsAPIIdentityGroup.getBaseUrl(
      jwt: jwt,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'delete_1',
      apiUrl: '$baseUrl/api/authorization/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Authorization': 'Bearer $bearerAuthentication',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TTeams API Identity Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
