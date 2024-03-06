//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IdentityApi {
  IdentityApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validate Password
  ///
  /// A password policy consists of a list of rules that new passwords must follow to be policy compliant. A password can be checked for compliancy via this end point. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PasswordPolicyRequestDto] passwordPolicyRequestDto:
  Future<Response> checkPasswordWithHttpInfo({ PasswordPolicyRequestDto? passwordPolicyRequestDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/identity/password-policy';

    // ignore: prefer_final_locals
    Object? postBody = passwordPolicyRequestDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Validate Password
  ///
  /// A password policy consists of a list of rules that new passwords must follow to be policy compliant. A password can be checked for compliancy via this end point. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
  ///
  /// Parameters:
  ///
  /// * [PasswordPolicyRequestDto] passwordPolicyRequestDto:
  Future<CheckPasswordPolicyResultDto?> checkPassword({ PasswordPolicyRequestDto? passwordPolicyRequestDto, }) async {
    final response = await checkPasswordWithHttpInfo( passwordPolicyRequestDto: passwordPolicyRequestDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckPasswordPolicyResultDto',) as CheckPasswordPolicyResultDto;
    
    }
    return null;
  }

  /// Get a User's Groups
  ///
  /// Gets the groups of a user by id and includes all users that share a group with the given user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The id of the user to get the groups for.
  Future<Response> getGroupInfoWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/identity/groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'userId', userId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a User's Groups
  ///
  /// Gets the groups of a user by id and includes all users that share a group with the given user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The id of the user to get the groups for.
  Future<IdentityServiceGroupInfoDto?> getGroupInfo(String userId,) async {
    final response = await getGroupInfoWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IdentityServiceGroupInfoDto',) as IdentityServiceGroupInfoDto;
    
    }
    return null;
  }

  /// Get Password Policy
  ///
  /// A password policy consists of a list of rules that new passwords must follow to be policy compliant. This end point returns a JSON representation of the list of policy rules. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPasswordPolicyWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/identity/password-policy';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Password Policy
  ///
  /// A password policy consists of a list of rules that new passwords must follow to be policy compliant. This end point returns a JSON representation of the list of policy rules. More information on password policies in Camunda can be found in the password policy [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/password-policy/) and in the [security instructions](https://docs.camunda.org/manual/7.20/user-guide/security/).
  Future<PasswordPolicyDto?> getPasswordPolicy() async {
    final response = await getPasswordPolicyWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PasswordPolicyDto',) as PasswordPolicyDto;
    
    }
    return null;
  }

  /// Verify User
  ///
  /// Verifies that user credentials are valid.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BasicUserCredentialsDto] basicUserCredentialsDto:
  Future<Response> verifyUserWithHttpInfo({ BasicUserCredentialsDto? basicUserCredentialsDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/identity/verify';

    // ignore: prefer_final_locals
    Object? postBody = basicUserCredentialsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Verify User
  ///
  /// Verifies that user credentials are valid.
  ///
  /// Parameters:
  ///
  /// * [BasicUserCredentialsDto] basicUserCredentialsDto:
  Future<AuthenticationResult?> verifyUser({ BasicUserCredentialsDto? basicUserCredentialsDto, }) async {
    final response = await verifyUserWithHttpInfo( basicUserCredentialsDto: basicUserCredentialsDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResult',) as AuthenticationResult;
    
    }
    return null;
  }
}
