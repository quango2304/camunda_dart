//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthorizationApi {
  AuthorizationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Authorization Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableOperationsAuthorizationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/authorization';

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

  /// Authorization Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  Future<ResourceOptionsDto?> availableOperationsAuthorization() async {
    final response = await availableOperationsAuthorizationWithHttpInfo();
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

  /// Authorization Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on a given instance of the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be retrieved.
  Future<Response> availableOperationsAuthorizationInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/{id}'
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

  /// Authorization Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on a given instance of the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be retrieved.
  Future<ResourceOptionsDto?> availableOperationsAuthorizationInstance(String id,) async {
    final response = await availableOperationsAuthorizationInstanceWithHttpInfo(id,);
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

  /// Create a New Authorization
  ///
  /// Creates a new authorization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthorizationCreateDto] authorizationCreateDto:
  Future<Response> createAuthorizationWithHttpInfo({ AuthorizationCreateDto? authorizationCreateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/create';

    // ignore: prefer_final_locals
    Object? postBody = authorizationCreateDto;

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

  /// Create a New Authorization
  ///
  /// Creates a new authorization.
  ///
  /// Parameters:
  ///
  /// * [AuthorizationCreateDto] authorizationCreateDto:
  Future<AuthorizationDto?> createAuthorization({ AuthorizationCreateDto? authorizationCreateDto, }) async {
    final response = await createAuthorizationWithHttpInfo( authorizationCreateDto: authorizationCreateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorizationDto',) as AuthorizationDto;
    
    }
    return null;
  }

  /// Delete Authorization
  ///
  /// Deletes an authorization by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be deleted.
  Future<Response> deleteAuthorizationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/{id}'
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

  /// Delete Authorization
  ///
  /// Deletes an authorization by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be deleted.
  Future<void> deleteAuthorization(String id,) async {
    final response = await deleteAuthorizationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Authorization
  ///
  /// Retrieves an authorization by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be retrieved.
  Future<Response> getAuthorizationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/{id}'
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

  /// Get Authorization
  ///
  /// Retrieves an authorization by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be retrieved.
  Future<AuthorizationDto?> getAuthorization(String id,) async {
    final response = await getAuthorizationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorizationDto',) as AuthorizationDto;
    
    }
    return null;
  }

  /// Get Authorization Count
  ///
  /// Queries for authorizations using a list of parameters and retrieves the count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the authorization.
  ///
  /// * [int] type:
  ///   Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
  ///
  /// * [String] userIdIn:
  ///   Filter by a comma-separated list of userIds.
  ///
  /// * [String] groupIdIn:
  ///   Filter by a comma-separated list of groupIds.
  ///
  /// * [int] resourceType:
  ///   Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   Filter by resource id.
  Future<Response> getAuthorizationCountWithHttpInfo({ String? id, int? type, String? userIdIn, String? groupIdIn, int? resourceType, String? resourceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (userIdIn != null) {
      queryParams.addAll(_queryParams('', 'userIdIn', userIdIn));
    }
    if (groupIdIn != null) {
      queryParams.addAll(_queryParams('', 'groupIdIn', groupIdIn));
    }
    if (resourceType != null) {
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    }
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
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

  /// Get Authorization Count
  ///
  /// Queries for authorizations using a list of parameters and retrieves the count.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the authorization.
  ///
  /// * [int] type:
  ///   Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
  ///
  /// * [String] userIdIn:
  ///   Filter by a comma-separated list of userIds.
  ///
  /// * [String] groupIdIn:
  ///   Filter by a comma-separated list of groupIds.
  ///
  /// * [int] resourceType:
  ///   Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   Filter by resource id.
  Future<CountResultDto?> getAuthorizationCount({ String? id, int? type, String? userIdIn, String? groupIdIn, int? resourceType, String? resourceId, }) async {
    final response = await getAuthorizationCountWithHttpInfo( id: id, type: type, userIdIn: userIdIn, groupIdIn: groupIdIn, resourceType: resourceType, resourceId: resourceId, );
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

  /// Perform an Authorization Check
  ///
  /// Performs an authorization check for the currently authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] permissionName (required):
  ///   String value representing the permission name to check for.
  ///
  /// * [String] resourceName (required):
  ///   String value for the name of the resource to check permissions for.
  ///
  /// * [int] resourceType (required):
  ///   An integer representing the resource type to check permissions for. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   The id of the resource to check permissions for. If left blank, a check for global permissions on the resource is performed.
  ///
  /// * [String] userId:
  ///   The id of the user to check permissions for. The currently authenticated user must have a READ permission for the Authorization resource. If `userId` is blank, a check for the currently authenticated user is performed.
  Future<Response> isUserAuthorizedWithHttpInfo(String permissionName, String resourceName, int resourceType, { String? resourceId, String? userId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/check';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'permissionName', permissionName));
      queryParams.addAll(_queryParams('', 'resourceName', resourceName));
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
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

  /// Perform an Authorization Check
  ///
  /// Performs an authorization check for the currently authenticated user.
  ///
  /// Parameters:
  ///
  /// * [String] permissionName (required):
  ///   String value representing the permission name to check for.
  ///
  /// * [String] resourceName (required):
  ///   String value for the name of the resource to check permissions for.
  ///
  /// * [int] resourceType (required):
  ///   An integer representing the resource type to check permissions for. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   The id of the resource to check permissions for. If left blank, a check for global permissions on the resource is performed.
  ///
  /// * [String] userId:
  ///   The id of the user to check permissions for. The currently authenticated user must have a READ permission for the Authorization resource. If `userId` is blank, a check for the currently authenticated user is performed.
  Future<AuthorizationCheckResultDto?> isUserAuthorized(String permissionName, String resourceName, int resourceType, { String? resourceId, String? userId, }) async {
    final response = await isUserAuthorizedWithHttpInfo(permissionName, resourceName, resourceType,  resourceId: resourceId, userId: userId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthorizationCheckResultDto',) as AuthorizationCheckResultDto;
    
    }
    return null;
  }

  /// Get Authorizations
  ///
  /// Queries for a list of authorizations using a list of parameters. The size of the result set can be retrieved by using the [Get Authorization Count](https://docs.camunda.org/manual/7.20/reference/rest/authorization/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the authorization.
  ///
  /// * [int] type:
  ///   Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
  ///
  /// * [String] userIdIn:
  ///   Filter by a comma-separated list of userIds.
  ///
  /// * [String] groupIdIn:
  ///   Filter by a comma-separated list of groupIds.
  ///
  /// * [int] resourceType:
  ///   Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   Filter by resource id.
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
  Future<Response> queryAuthorizationsWithHttpInfo({ String? id, int? type, String? userIdIn, String? groupIdIn, int? resourceType, String? resourceId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (userIdIn != null) {
      queryParams.addAll(_queryParams('', 'userIdIn', userIdIn));
    }
    if (groupIdIn != null) {
      queryParams.addAll(_queryParams('', 'groupIdIn', groupIdIn));
    }
    if (resourceType != null) {
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    }
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
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

  /// Get Authorizations
  ///
  /// Queries for a list of authorizations using a list of parameters. The size of the result set can be retrieved by using the [Get Authorization Count](https://docs.camunda.org/manual/7.20/reference/rest/authorization/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the authorization.
  ///
  /// * [int] type:
  ///   Filter by authorization type. (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#authorization-type) for more information about authorization types.
  ///
  /// * [String] userIdIn:
  ///   Filter by a comma-separated list of userIds.
  ///
  /// * [String] groupIdIn:
  ///   Filter by a comma-separated list of groupIds.
  ///
  /// * [int] resourceType:
  ///   Filter by an integer representation of the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types.
  ///
  /// * [String] resourceId:
  ///   Filter by resource id.
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
  Future<List<AuthorizationDto>?> queryAuthorizations({ String? id, int? type, String? userIdIn, String? groupIdIn, int? resourceType, String? resourceId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await queryAuthorizationsWithHttpInfo( id: id, type: type, userIdIn: userIdIn, groupIdIn: groupIdIn, resourceType: resourceType, resourceId: resourceId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AuthorizationDto>') as List)
        .cast<AuthorizationDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update an Authorization
  ///
  /// Updates an authorization by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be updated.
  ///
  /// * [AuthorizationUpdateDto] authorizationUpdateDto:
  Future<Response> updateAuthorizationWithHttpInfo(String id, { AuthorizationUpdateDto? authorizationUpdateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/authorization/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = authorizationUpdateDto;

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

  /// Update an Authorization
  ///
  /// Updates an authorization by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the authorization to be updated.
  ///
  /// * [AuthorizationUpdateDto] authorizationUpdateDto:
  Future<void> updateAuthorization(String id, { AuthorizationUpdateDto? authorizationUpdateDto, }) async {
    final response = await updateAuthorizationWithHttpInfo(id,  authorizationUpdateDto: authorizationUpdateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
