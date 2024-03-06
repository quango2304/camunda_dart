//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupApi {
  GroupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Group Resource Instance Options
  ///
  /// The `/group` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group/{id}` resource instance. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  Future<Response> availableGroupInstanceOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}'
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

  /// Group Resource Instance Options
  ///
  /// The `/group` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group/{id}` resource instance. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  Future<ResourceOptionsDto?> availableGroupInstanceOperations(String id,) async {
    final response = await availableGroupInstanceOperationsWithHttpInfo(id,);
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

  /// Group Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  Future<Response> availableGroupMembersOperationsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}/members'
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

  /// Group Membership Resource Options
  ///
  /// The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  Future<ResourceOptionsDto?> availableGroupMembersOperations(String id,) async {
    final response = await availableGroupMembersOperationsWithHttpInfo(id,);
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

  /// Group Resource Options
  ///
  /// The `/group` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableGroupOperationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/group';

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

  /// Group Resource Options
  ///
  /// The `/group` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  Future<ResourceOptionsDto?> availableGroupOperations() async {
    final response = await availableGroupOperationsWithHttpInfo();
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

  /// Create Group
  ///
  /// Creates a new group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupDto] groupDto:
  Future<Response> createGroupWithHttpInfo({ GroupDto? groupDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group/create';

    // ignore: prefer_final_locals
    Object? postBody = groupDto;

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

  /// Create Group
  ///
  /// Creates a new group.
  ///
  /// Parameters:
  ///
  /// * [GroupDto] groupDto:
  Future<void> createGroup({ GroupDto? groupDto, }) async {
    final response = await createGroupWithHttpInfo( groupDto: groupDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Group Member
  ///
  /// Adds a member to a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [String] userId (required):
  ///   The id of user to add to the group.
  Future<Response> createGroupMemberWithHttpInfo(String id, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}/members/{userId}'
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

  /// Create Group Member
  ///
  /// Adds a member to a group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [String] userId (required):
  ///   The id of user to add to the group.
  Future<void> createGroupMember(String id, String userId,) async {
    final response = await createGroupMemberWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Group
  ///
  /// Deletes a group by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group to be deleted.
  Future<Response> deleteGroupWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}'
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

  /// Delete Group
  ///
  /// Deletes a group by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group to be deleted.
  Future<void> deleteGroup(String id,) async {
    final response = await deleteGroupWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a Group Member
  ///
  /// Removes a member from a group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [String] userId (required):
  ///   The id of user to remove from the group.
  Future<Response> deleteGroupMemberWithHttpInfo(String id, String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}/members/{userId}'
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

  /// Delete a Group Member
  ///
  /// Removes a member from a group.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [String] userId (required):
  ///   The id of user to remove from the group.
  Future<void> deleteGroupMember(String id, String userId,) async {
    final response = await deleteGroupMemberWithHttpInfo(id, userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Group
  ///
  /// Retrieves a group by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group to be retrieved.
  Future<Response> getGroupWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}'
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

  /// Get Group
  ///
  /// Retrieves a group by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group to be retrieved.
  Future<GroupDto?> getGroup(String id,) async {
    final response = await getGroupWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for groups using a list of parameters and retrieves the count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the group.
  ///
  /// * [String] idIn:
  ///   Filter by a comma seperated list of group ids.
  ///
  /// * [String] name:
  ///   Filter by the name of the group.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] type:
  ///   Filter by the type of the group.
  ///
  /// * [String] member:
  ///   Only retrieve groups where the given user id is a member of.
  ///
  /// * [String] memberOfTenant:
  ///   Only retrieve groups which are members of the given tenant.
  Future<Response> getGroupCountWithHttpInfo({ String? id, String? idIn, String? name, String? nameLike, String? type, String? member, String? memberOfTenant, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group/count';

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
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (member != null) {
      queryParams.addAll(_queryParams('', 'member', member));
    }
    if (memberOfTenant != null) {
      queryParams.addAll(_queryParams('', 'memberOfTenant', memberOfTenant));
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
  /// Queries for groups using a list of parameters and retrieves the count.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by the id of the group.
  ///
  /// * [String] idIn:
  ///   Filter by a comma seperated list of group ids.
  ///
  /// * [String] name:
  ///   Filter by the name of the group.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] type:
  ///   Filter by the type of the group.
  ///
  /// * [String] member:
  ///   Only retrieve groups where the given user id is a member of.
  ///
  /// * [String] memberOfTenant:
  ///   Only retrieve groups which are members of the given tenant.
  Future<CountResultDto?> getGroupCount({ String? id, String? idIn, String? name, String? nameLike, String? type, String? member, String? memberOfTenant, }) async {
    final response = await getGroupCountWithHttpInfo( id: id, idIn: idIn, name: name, nameLike: nameLike, type: type, member: member, memberOfTenant: memberOfTenant, );
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

  /// Get List
  ///
  /// Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count](https://docs.camunda.org/manual/7.20/reference/rest/group/get-query-count) method.
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
  ///   Filter by the id of the group.
  ///
  /// * [String] idIn:
  ///   Filter by a comma seperated list of group ids.
  ///
  /// * [String] name:
  ///   Filter by the name of the group.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] type:
  ///   Filter by the type of the group.
  ///
  /// * [String] member:
  ///   Only retrieve groups where the given user id is a member of.
  ///
  /// * [String] memberOfTenant:
  ///   Only retrieve groups which are members of the given tenant.
  Future<Response> getQueryGroupsWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? id, String? idIn, String? name, String? nameLike, String? type, String? member, String? memberOfTenant, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group';

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
    if (idIn != null) {
      queryParams.addAll(_queryParams('', 'idIn', idIn));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (member != null) {
      queryParams.addAll(_queryParams('', 'member', member));
    }
    if (memberOfTenant != null) {
      queryParams.addAll(_queryParams('', 'memberOfTenant', memberOfTenant));
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
  /// Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count](https://docs.camunda.org/manual/7.20/reference/rest/group/get-query-count) method.
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
  ///   Filter by the id of the group.
  ///
  /// * [String] idIn:
  ///   Filter by a comma seperated list of group ids.
  ///
  /// * [String] name:
  ///   Filter by the name of the group.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] type:
  ///   Filter by the type of the group.
  ///
  /// * [String] member:
  ///   Only retrieve groups where the given user id is a member of.
  ///
  /// * [String] memberOfTenant:
  ///   Only retrieve groups which are members of the given tenant.
  Future<List<GroupDto>?> getQueryGroups({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? id, String? idIn, String? name, String? nameLike, String? type, String? member, String? memberOfTenant, }) async {
    final response = await getQueryGroupsWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, id: id, idIn: idIn, name: name, nameLike: nameLike, type: type, member: member, memberOfTenant: memberOfTenant, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GroupDto>') as List)
        .cast<GroupDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List (POST)
  ///
  /// Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/group/post-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [GroupQueryDto] groupQueryDto:
  Future<Response> postQueryGroupsWithHttpInfo({ int? firstResult, int? maxResults, GroupQueryDto? groupQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group';

    // ignore: prefer_final_locals
    Object? postBody = groupQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

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

  /// Get List (POST)
  ///
  /// Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/group/post-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [GroupQueryDto] groupQueryDto:
  Future<List<GroupDto>?> postQueryGroups({ int? firstResult, int? maxResults, GroupQueryDto? groupQueryDto, }) async {
    final response = await postQueryGroupsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, groupQueryDto: groupQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GroupDto>') as List)
        .cast<GroupDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Queries for groups using a list of parameters and retrieves the count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupQueryDto] groupQueryDto:
  Future<Response> queryGroupCountWithHttpInfo({ GroupQueryDto? groupQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group/count';

    // ignore: prefer_final_locals
    Object? postBody = groupQueryDto;

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

  /// Get List Count (POST)
  ///
  /// Queries for groups using a list of parameters and retrieves the count.
  ///
  /// Parameters:
  ///
  /// * [GroupQueryDto] groupQueryDto:
  Future<CountResultDto?> queryGroupCount({ GroupQueryDto? groupQueryDto, }) async {
    final response = await queryGroupCountWithHttpInfo( groupQueryDto: groupQueryDto, );
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

  /// Update Group
  ///
  /// Updates a given group by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [GroupDto] groupDto:
  Future<Response> updateGroupWithHttpInfo(String id, { GroupDto? groupDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/group/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = groupDto;

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

  /// Update Group
  ///
  /// Updates a given group by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the group.
  ///
  /// * [GroupDto] groupDto:
  Future<void> updateGroup(String id, { GroupDto? groupDto, }) async {
    final response = await updateGroupWithHttpInfo(id,  groupDto: groupDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
