//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TenantApi {
  TenantApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Tenant Group Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<Response> availableTenantGroupMembersOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/group-members'
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

  /// Tenant Group Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<ResourceOptionsDto?> availableTenantGroupMembersOperations(String id,) async {
    final response = await availableTenantGroupMembersOperationsWithHttpInfo(id,);
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

  /// Tenant Resource Options
  ///
  /// The `/tenant` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant/{id}` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<Response> availableTenantInstanceOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}'
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

  /// Tenant Resource Options
  ///
  /// The `/tenant` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant/{id}` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<ResourceOptionsDto?> availableTenantInstanceOperations(String id,) async {
    final response = await availableTenantInstanceOperationsWithHttpInfo(id,);
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

  /// Tenant Resource Options
  ///
  /// The `/tenant` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableTenantResourceOperationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/tenant';

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

  /// Tenant Resource Options
  ///
  /// The `/tenant` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  Future<ResourceOptionsDto?> availableTenantResourceOperations() async {
    final response = await availableTenantResourceOperationsWithHttpInfo();
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

  /// Tenant User Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<Response> availableTenantUserMembersOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/user-members'
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

  /// Tenant User Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant
  Future<ResourceOptionsDto?> availableTenantUserMembersOperations(String id,) async {
    final response = await availableTenantUserMembersOperationsWithHttpInfo(id,);
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

  /// Create Tenant Group Membership
  ///
  /// Creates a membership between a tenant and a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] groupId (required):
  ///   The id of the group.
  Future<Response> createGroupMembershipWithHttpInfo(String id, String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/group-members/{groupId}'
      .replaceAll('{id}', id)
      .replaceAll('{groupId}', groupId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Create Tenant Group Membership
  ///
  /// Creates a membership between a tenant and a group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] groupId (required):
  ///   The id of the group.
  Future<void> createGroupMembership(String id, String groupId,) async {
    final response = await createGroupMembershipWithHttpInfo(id, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Tenant
  ///
  /// Create a new tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TenantDto] tenantDto:
  Future<Response> createTenantWithHttpInfo({ TenantDto? tenantDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/create';

    // ignore: prefer_final_locals
    Object? postBody = tenantDto;

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

  /// Create Tenant
  ///
  /// Create a new tenant.
  ///
  /// Parameters:
  ///
  /// * [TenantDto] tenantDto:
  Future<void> createTenant({ TenantDto? tenantDto, }) async {
    final response = await createTenantWithHttpInfo( tenantDto: tenantDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Tenant User Membership
  ///
  /// Creates a membership between a tenant and an user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] userId (required):
  ///   The id of the user.
  Future<Response> createUserMembershipWithHttpInfo(String id, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/user-members/{userId}'
      .replaceAll('{id}', id)
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Create Tenant User Membership
  ///
  /// Creates a membership between a tenant and an user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] userId (required):
  ///   The id of the user.
  Future<void> createUserMembership(String id, String userId,) async {
    final response = await createUserMembershipWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Tenant Group Membership
  ///
  /// Creates a membership between a tenant and a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] groupId (required):
  ///   The id of the group.
  Future<Response> deleteGroupMembershipWithHttpInfo(String id, String groupId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/group-members/{groupId}'
      .replaceAll('{id}', id)
      .replaceAll('{groupId}', groupId);

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

  /// Create Tenant Group Membership
  ///
  /// Creates a membership between a tenant and a group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] groupId (required):
  ///   The id of the group.
  Future<void> deleteGroupMembership(String id, String groupId,) async {
    final response = await deleteGroupMembershipWithHttpInfo(id, groupId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Tenant
  ///
  /// Deletes a tenant by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant to be deleted.
  Future<Response> deleteTenantWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}'
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

  /// Delete Tenant
  ///
  /// Deletes a tenant by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant to be deleted.
  Future<void> deleteTenant(String id,) async {
    final response = await deleteTenantWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a Tenant User Membership
  ///
  /// Deletes a membership between a tenant and an user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] userId (required):
  ///   The id of the user.
  Future<Response> deleteUserMembershipWithHttpInfo(String id, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}/user-members/{userId}'
      .replaceAll('{id}', id)
      .replaceAll('{userId}', userId);

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

  /// Delete a Tenant User Membership
  ///
  /// Deletes a membership between a tenant and an user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [String] userId (required):
  ///   The id of the user.
  Future<void> deleteUserMembership(String id, String userId,) async {
    final response = await deleteUserMembershipWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Tenant
  ///
  /// Retrieves a tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant to be retrieved.
  Future<Response> getTenantWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}'
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

  /// Get Tenant
  ///
  /// Retrieves a tenant.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant to be retrieved.
  Future<TenantDto?> getTenant(String id,) async {
    final response = await getTenantWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TenantDto',) as TenantDto;
    
    }
    return null;
  }

  /// Get Tenant Count
  ///
  /// Query for tenants using a list of parameters and retrieves the count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the tenant.
  ///
  /// * [String] name:
  ///   Filter by the name of the tenant.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] userMember:
  ///   Select only tenants where the given user is a member of.
  ///
  /// * [String] groupMember:
  ///   Select only tenants where the given group is a member of.
  ///
  /// * [bool] includingGroupsOfUser:
  ///   Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getTenantCountWithHttpInfo({ String? id, String? name, String? nameLike, String? userMember, String? groupMember, bool? includingGroupsOfUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (userMember != null) {
      queryParams.addAll(_queryParams('', 'userMember', userMember));
    }
    if (groupMember != null) {
      queryParams.addAll(_queryParams('', 'groupMember', groupMember));
    }
    if (includingGroupsOfUser != null) {
      queryParams.addAll(_queryParams('', 'includingGroupsOfUser', includingGroupsOfUser));
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

  /// Get Tenant Count
  ///
  /// Query for tenants using a list of parameters and retrieves the count.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the tenant.
  ///
  /// * [String] name:
  ///   Filter by the name of the tenant.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] userMember:
  ///   Select only tenants where the given user is a member of.
  ///
  /// * [String] groupMember:
  ///   Select only tenants where the given group is a member of.
  ///
  /// * [bool] includingGroupsOfUser:
  ///   Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getTenantCount({ String? id, String? name, String? nameLike, String? userMember, String? groupMember, bool? includingGroupsOfUser, }) async {
    final response = await getTenantCountWithHttpInfo( id: id, name: name, nameLike: nameLike, userMember: userMember, groupMember: groupMember, includingGroupsOfUser: includingGroupsOfUser, );
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

  /// Get Tenants
  ///
  /// Query for a list of tenants using a list of parameters. The size of the result set can be retrieved by using the [Get Tenant Count](https://docs.camunda.org/manual/7.20/reference/rest/tenant/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  ///
  /// * [String] id:
  ///   Filter by the id of the tenant.
  ///
  /// * [String] name:
  ///   Filter by the name of the tenant.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] userMember:
  ///   Select only tenants where the given user is a member of.
  ///
  /// * [String] groupMember:
  ///   Select only tenants where the given group is a member of.
  ///
  /// * [bool] includingGroupsOfUser:
  ///   Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.
  Future<Response> queryTenantsWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? id, String? name, String? nameLike, String? userMember, String? groupMember, bool? includingGroupsOfUser, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (userMember != null) {
      queryParams.addAll(_queryParams('', 'userMember', userMember));
    }
    if (groupMember != null) {
      queryParams.addAll(_queryParams('', 'groupMember', groupMember));
    }
    if (includingGroupsOfUser != null) {
      queryParams.addAll(_queryParams('', 'includingGroupsOfUser', includingGroupsOfUser));
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

  /// Get Tenants
  ///
  /// Query for a list of tenants using a list of parameters. The size of the result set can be retrieved by using the [Get Tenant Count](https://docs.camunda.org/manual/7.20/reference/rest/tenant/get-query-count/) method.
  ///
  /// Parameters:
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
  ///
  /// * [String] id:
  ///   Filter by the id of the tenant.
  ///
  /// * [String] name:
  ///   Filter by the name of the tenant.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] userMember:
  ///   Select only tenants where the given user is a member of.
  ///
  /// * [String] groupMember:
  ///   Select only tenants where the given group is a member of.
  ///
  /// * [bool] includingGroupsOfUser:
  ///   Select only tenants where the user or one of his groups is a member of. Can only be used in combination with the `userMember` parameter. Value may only be `true`, as `false` is the default behavior.
  Future<List<TenantDto>?> queryTenants({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? id, String? name, String? nameLike, String? userMember, String? groupMember, bool? includingGroupsOfUser, }) async {
    final response = await queryTenantsWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, id: id, name: name, nameLike: nameLike, userMember: userMember, groupMember: groupMember, includingGroupsOfUser: includingGroupsOfUser, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TenantDto>') as List)
        .cast<TenantDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update Tenant
  ///
  /// Updates a given tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [TenantDto] tenantDto:
  Future<Response> updateTenantWithHttpInfo(String id, { TenantDto? tenantDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tenant/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = tenantDto;

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

  /// Update Tenant
  ///
  /// Updates a given tenant.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the tenant.
  ///
  /// * [TenantDto] tenantDto:
  Future<void> updateTenant(String id, { TenantDto? tenantDto, }) async {
    final response = await updateTenantWithHttpInfo(id,  tenantDto: tenantDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
