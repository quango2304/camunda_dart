//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Options
  ///
  /// The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user` returns available interactions on the resource.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableOperationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'OPTIONS',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Options
  ///
  /// The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user` returns available interactions on the resource.
  Future<ResourceOptionsDto?> availableOperations() async {
    final response = await availableOperationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResourceOptionsDto',) as ResourceOptionsDto;
    
    }
    return null;
  }

  /// Options
  ///
  /// The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user/{id}` returns available interactions on a resource instance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be deleted.
  Future<Response> availableUserOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'OPTIONS',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Options
  ///
  /// The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user/{id}` returns available interactions on a resource instance.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be deleted.
  Future<ResourceOptionsDto?> availableUserOperations(String id,) async {
    final response = await availableUserOperationsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResourceOptionsDto',) as ResourceOptionsDto;
    
    }
    return null;
  }

  /// Create
  ///
  /// Create a new user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto:
  Future<Response> createUserWithHttpInfo({ UserDto? userDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/create';

    // ignore: prefer_final_locals
    Object? postBody = userDto;

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

  /// Create
  ///
  /// Create a new user.
  ///
  /// Parameters:
  ///
  /// * [UserDto] userDto:
  Future<void> createUser({ UserDto? userDto, }) async {
    final response = await createUserWithHttpInfo( userDto: userDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete
  ///
  /// Deletes a user by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be deleted.
  Future<Response> deleteUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete
  ///
  /// Deletes a user by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be deleted.
  Future<void> deleteUser(String id,) async {
    final response = await deleteUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get List Count
  ///
  /// Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Users](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by user id
  ///
  /// * [String] idIn:
  ///   Filter by a comma-separated list of user ids.
  ///
  /// * [String] firstName:
  ///   Filter by the first name of the user. Exact match.
  ///
  /// * [String] firstNameLike:
  ///   Filter by the first name that the parameter is a substring of.
  ///
  /// * [String] lastName:
  ///   Filter by the last name of the user. Exact match.
  ///
  /// * [String] lastNameLike:
  ///   Filter by the last name that the parameter is a substring of.
  ///
  /// * [String] email:
  ///   Filter by the email of the user. Exact match.
  ///
  /// * [String] emailLike:
  ///   Filter by the email that the parameter is a substring of.
  ///
  /// * [String] memberOfGroup:
  ///   Filter for users which are members of the given group.
  ///
  /// * [String] memberOfTenant:
  ///   Filter for users which are members of the given tenant.
  ///
  /// * [String] potentialStarter:
  ///   Only select Users that are potential starter for the given process definition.
  Future<Response> getUserCountWithHttpInfo({ String? id, String? idIn, String? firstName, String? firstNameLike, String? lastName, String? lastNameLike, String? email, String? emailLike, String? memberOfGroup, String? memberOfTenant, String? potentialStarter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idIn != null) {
      queryParams.addAll(_queryParams('', 'idIn', idIn));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (firstNameLike != null) {
      queryParams.addAll(_queryParams('', 'firstNameLike', firstNameLike));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (lastNameLike != null) {
      queryParams.addAll(_queryParams('', 'lastNameLike', lastNameLike));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (emailLike != null) {
      queryParams.addAll(_queryParams('', 'emailLike', emailLike));
    }
    if (memberOfGroup != null) {
      queryParams.addAll(_queryParams('', 'memberOfGroup', memberOfGroup));
    }
    if (memberOfTenant != null) {
      queryParams.addAll(_queryParams('', 'memberOfTenant', memberOfTenant));
    }
    if (potentialStarter != null) {
      queryParams.addAll(_queryParams('', 'potentialStarter', potentialStarter));
    }

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

  /// Get List Count
  ///
  /// Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Users](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by user id
  ///
  /// * [String] idIn:
  ///   Filter by a comma-separated list of user ids.
  ///
  /// * [String] firstName:
  ///   Filter by the first name of the user. Exact match.
  ///
  /// * [String] firstNameLike:
  ///   Filter by the first name that the parameter is a substring of.
  ///
  /// * [String] lastName:
  ///   Filter by the last name of the user. Exact match.
  ///
  /// * [String] lastNameLike:
  ///   Filter by the last name that the parameter is a substring of.
  ///
  /// * [String] email:
  ///   Filter by the email of the user. Exact match.
  ///
  /// * [String] emailLike:
  ///   Filter by the email that the parameter is a substring of.
  ///
  /// * [String] memberOfGroup:
  ///   Filter for users which are members of the given group.
  ///
  /// * [String] memberOfTenant:
  ///   Filter for users which are members of the given tenant.
  ///
  /// * [String] potentialStarter:
  ///   Only select Users that are potential starter for the given process definition.
  Future<CountResultDto?> getUserCount({ String? id, String? idIn, String? firstName, String? firstNameLike, String? lastName, String? lastNameLike, String? email, String? emailLike, String? memberOfGroup, String? memberOfTenant, String? potentialStarter, }) async {
    final response = await getUserCountWithHttpInfo( id: id, idIn: idIn, firstName: firstName, firstNameLike: firstNameLike, lastName: lastName, lastNameLike: lastNameLike, email: email, emailLike: emailLike, memberOfGroup: memberOfGroup, memberOfTenant: memberOfTenant, potentialStarter: potentialStarter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResultDto',) as CountResultDto;
    
    }
    return null;
  }

  /// Get Profile
  ///
  /// Retrieves a user's profile.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to retrieve.
  Future<Response> getUserProfileWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}/profile'
      .replaceAll('{id}', id);

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

  /// Get Profile
  ///
  /// Retrieves a user's profile.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to retrieve.
  Future<UserProfileDto?> getUserProfile(String id,) async {
    final response = await getUserProfileWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserProfileDto',) as UserProfileDto;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Query for a list of users using a list of parameters. The size of the result set can be retrieved by using the Get User Count method. [Get User Count](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by user id
  ///
  /// * [String] idIn:
  ///   Filter by a comma-separated list of user ids.
  ///
  /// * [String] firstName:
  ///   Filter by the first name of the user. Exact match.
  ///
  /// * [String] firstNameLike:
  ///   Filter by the first name that the parameter is a substring of.
  ///
  /// * [String] lastName:
  ///   Filter by the last name of the user. Exact match.
  ///
  /// * [String] lastNameLike:
  ///   Filter by the last name that the parameter is a substring of.
  ///
  /// * [String] email:
  ///   Filter by the email of the user. Exact match.
  ///
  /// * [String] emailLike:
  ///   Filter by the email that the parameter is a substring of.
  ///
  /// * [String] memberOfGroup:
  ///   Filter for users which are members of the given group.
  ///
  /// * [String] memberOfTenant:
  ///   Filter for users which are members of the given tenant.
  ///
  /// * [String] potentialStarter:
  ///   Only select Users that are potential starter for the given process definition.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<Response> getUsersWithHttpInfo({ String? id, String? idIn, String? firstName, String? firstNameLike, String? lastName, String? lastNameLike, String? email, String? emailLike, String? memberOfGroup, String? memberOfTenant, String? potentialStarter, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (idIn != null) {
      queryParams.addAll(_queryParams('', 'idIn', idIn));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (firstNameLike != null) {
      queryParams.addAll(_queryParams('', 'firstNameLike', firstNameLike));
    }
    if (lastName != null) {
      queryParams.addAll(_queryParams('', 'lastName', lastName));
    }
    if (lastNameLike != null) {
      queryParams.addAll(_queryParams('', 'lastNameLike', lastNameLike));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
    }
    if (emailLike != null) {
      queryParams.addAll(_queryParams('', 'emailLike', emailLike));
    }
    if (memberOfGroup != null) {
      queryParams.addAll(_queryParams('', 'memberOfGroup', memberOfGroup));
    }
    if (memberOfTenant != null) {
      queryParams.addAll(_queryParams('', 'memberOfTenant', memberOfTenant));
    }
    if (potentialStarter != null) {
      queryParams.addAll(_queryParams('', 'potentialStarter', potentialStarter));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
    }
    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

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

  /// Get List
  ///
  /// Query for a list of users using a list of parameters. The size of the result set can be retrieved by using the Get User Count method. [Get User Count](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by user id
  ///
  /// * [String] idIn:
  ///   Filter by a comma-separated list of user ids.
  ///
  /// * [String] firstName:
  ///   Filter by the first name of the user. Exact match.
  ///
  /// * [String] firstNameLike:
  ///   Filter by the first name that the parameter is a substring of.
  ///
  /// * [String] lastName:
  ///   Filter by the last name of the user. Exact match.
  ///
  /// * [String] lastNameLike:
  ///   Filter by the last name that the parameter is a substring of.
  ///
  /// * [String] email:
  ///   Filter by the email of the user. Exact match.
  ///
  /// * [String] emailLike:
  ///   Filter by the email that the parameter is a substring of.
  ///
  /// * [String] memberOfGroup:
  ///   Filter for users which are members of the given group.
  ///
  /// * [String] memberOfTenant:
  ///   Filter for users which are members of the given tenant.
  ///
  /// * [String] potentialStarter:
  ///   Only select Users that are potential starter for the given process definition.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<List<UserProfileDto>?> getUsers({ String? id, String? idIn, String? firstName, String? firstNameLike, String? lastName, String? lastNameLike, String? email, String? emailLike, String? memberOfGroup, String? memberOfTenant, String? potentialStarter, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getUsersWithHttpInfo( id: id, idIn: idIn, firstName: firstName, firstNameLike: firstNameLike, lastName: lastName, lastNameLike: lastNameLike, email: email, emailLike: emailLike, memberOfGroup: memberOfGroup, memberOfTenant: memberOfTenant, potentialStarter: potentialStarter, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserProfileDto>') as List)
        .cast<UserProfileDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Unlock User
  ///
  /// Unlocks a user by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be unlocked.
  Future<Response> unlockUserWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}/unlock'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Unlock User
  ///
  /// Unlocks a user by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be unlocked.
  Future<void> unlockUser(String id,) async {
    final response = await unlockUserWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Credentials
  ///
  /// Updates a user's credentials (password)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be updated.
  ///
  /// * [UserCredentialsDto] userCredentialsDto:
  Future<Response> updateCredentialsWithHttpInfo(String id, { UserCredentialsDto? userCredentialsDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}/credentials'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = userCredentialsDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Credentials
  ///
  /// Updates a user's credentials (password)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user to be updated.
  ///
  /// * [UserCredentialsDto] userCredentialsDto:
  Future<void> updateCredentials(String id, { UserCredentialsDto? userCredentialsDto, }) async {
    final response = await updateCredentialsWithHttpInfo(id,  userCredentialsDto: userCredentialsDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update User Profile
  ///
  /// Updates the profile information of an already existing user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user.
  ///
  /// * [UserProfileDto] userProfileDto:
  Future<Response> updateProfileWithHttpInfo(String id, { UserProfileDto? userProfileDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/{id}/profile'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = userProfileDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update User Profile
  ///
  /// Updates the profile information of an already existing user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the user.
  ///
  /// * [UserProfileDto] userProfileDto:
  Future<void> updateProfile(String id, { UserProfileDto? userProfileDto, }) async {
    final response = await updateProfileWithHttpInfo(id,  userProfileDto: userProfileDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
