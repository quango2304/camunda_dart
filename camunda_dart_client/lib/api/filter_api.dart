//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FilterApi {
  FilterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Filter
  ///
  /// Creates a new filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateFilterDto] createFilterDto:
  Future<Response> createFilterWithHttpInfo({ CreateFilterDto? createFilterDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/create';

    // ignore: prefer_final_locals
    Object? postBody = createFilterDto;

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

  /// Create Filter
  ///
  /// Creates a new filter.
  ///
  /// Parameters:
  ///
  /// * [CreateFilterDto] createFilterDto:
  Future<FilterDto?> createFilter({ CreateFilterDto? createFilterDto, }) async {
    final response = await createFilterWithHttpInfo( createFilterDto: createFilterDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterDto',) as FilterDto;
    
    }
    return null;
  }

  /// Delete Filter
  ///
  /// Deletes a filter by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be deleted.
  Future<Response> deleteFilterWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}'
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

  /// Delete Filter
  ///
  /// Deletes a filter by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be deleted.
  Future<void> deleteFilter(String id,) async {
    final response = await deleteFilterWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute Filter Count
  ///
  /// Executes the saved query of the filter by id and returns the count.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  Future<Response> executeFilterCountWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/count'
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

  /// Execute Filter Count
  ///
  /// Executes the saved query of the filter by id and returns the count.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  Future<CountResultDto?> executeFilterCount(String id,) async {
    final response = await executeFilterCountWithHttpInfo(id,);
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

  /// Execute Filter List
  ///
  /// Executes the saved query of the filter by id and returns the result list.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<Response> executeFilterListWithHttpInfo(String id, { int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/list'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Execute Filter List
  ///
  /// Executes the saved query of the filter by id and returns the result list.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<List<Object>?> executeFilterList(String id, { int? firstResult, int? maxResults, }) async {
    final response = await executeFilterListWithHttpInfo(id,  firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return null;
  }

  /// Execute Filter Single Result
  ///
  /// Executes the saved query of the filter by id and returns the single result.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  Future<Response> executeFilterSingleResultWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/singleResult'
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

  /// Execute Filter Single Result
  ///
  /// Executes the saved query of the filter by id and returns the single result.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  Future<Object?> executeFilterSingleResult(String id,) async {
    final response = await executeFilterSingleResultWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Filter Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> filterResourceOptionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/filter';

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

  /// Filter Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  Future<ResourceOptionsDto?> filterResourceOptions() async {
    final response = await filterResourceOptionsWithHttpInfo();
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

  /// Filter Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be checked.
  Future<Response> filterResourceOptionsSingleWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}'
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

  /// Filter Resource Options
  ///
  /// The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be checked.
  Future<ResourceOptionsDto?> filterResourceOptionsSingle(String id,) async {
    final response = await filterResourceOptionsSingleWithHttpInfo(id,);
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

  /// Get Filter Count
  ///
  /// Retrieves the number of filters that fulfill a provided query. Corresponds to the size of the result set when using the  [Get Filters](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterId:
  ///   Filter by the id of the filter.
  ///
  /// * [String] resourceType:
  ///   Filter by the resource type of the filter, e.g., `Task`.
  ///
  /// * [String] name:
  ///   Filter by the name of the filter.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] owner:
  ///   Filter by the user id of the owner of the filter.
  Future<Response> getFilterCountWithHttpInfo({ String? filterId, String? resourceType, String? name, String? nameLike, String? owner, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterId != null) {
      queryParams.addAll(_queryParams('', 'filterId', filterId));
    }
    if (resourceType != null) {
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
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

  /// Get Filter Count
  ///
  /// Retrieves the number of filters that fulfill a provided query. Corresponds to the size of the result set when using the  [Get Filters](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] filterId:
  ///   Filter by the id of the filter.
  ///
  /// * [String] resourceType:
  ///   Filter by the resource type of the filter, e.g., `Task`.
  ///
  /// * [String] name:
  ///   Filter by the name of the filter.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] owner:
  ///   Filter by the user id of the owner of the filter.
  Future<CountResultDto?> getFilterCount({ String? filterId, String? resourceType, String? name, String? nameLike, String? owner, }) async {
    final response = await getFilterCountWithHttpInfo( filterId: filterId, resourceType: resourceType, name: name, nameLike: nameLike, owner: owner, );
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

  /// Get Filters
  ///
  /// Queries for a list of filters using a list of parameters. The size of the result set can be retrieved by using the [Get Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filterId:
  ///   Filter by the id of the filter.
  ///
  /// * [String] resourceType:
  ///   Filter by the resource type of the filter, e.g., `Task`.
  ///
  /// * [String] name:
  ///   Filter by the name of the filter.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] owner:
  ///   Filter by the user id of the owner of the filter.
  ///
  /// * [bool] itemCount:
  ///   If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.
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
  Future<Response> getFilterListWithHttpInfo({ String? filterId, String? resourceType, String? name, String? nameLike, String? owner, bool? itemCount, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filterId != null) {
      queryParams.addAll(_queryParams('', 'filterId', filterId));
    }
    if (resourceType != null) {
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (itemCount != null) {
      queryParams.addAll(_queryParams('', 'itemCount', itemCount));
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

  /// Get Filters
  ///
  /// Queries for a list of filters using a list of parameters. The size of the result set can be retrieved by using the [Get Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] filterId:
  ///   Filter by the id of the filter.
  ///
  /// * [String] resourceType:
  ///   Filter by the resource type of the filter, e.g., `Task`.
  ///
  /// * [String] name:
  ///   Filter by the name of the filter.
  ///
  /// * [String] nameLike:
  ///   Filter by the name that the parameter is a substring of.
  ///
  /// * [String] owner:
  ///   Filter by the user id of the owner of the filter.
  ///
  /// * [bool] itemCount:
  ///   If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.
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
  Future<List<FilterDto>?> getFilterList({ String? filterId, String? resourceType, String? name, String? nameLike, String? owner, bool? itemCount, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getFilterListWithHttpInfo( filterId: filterId, resourceType: resourceType, name: name, nameLike: nameLike, owner: owner, itemCount: itemCount, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<FilterDto>') as List)
        .cast<FilterDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Single Filter
  ///
  /// Retrieves a single filter by id, according to the `Filter` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be retrieved.
  ///
  /// * [bool] itemCount:
  ///   If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.
  Future<Response> getSingleFilterWithHttpInfo(String id, { bool? itemCount, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (itemCount != null) {
      queryParams.addAll(_queryParams('', 'itemCount', itemCount));
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

  /// Get Single Filter
  ///
  /// Retrieves a single filter by id, according to the `Filter` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be retrieved.
  ///
  /// * [bool] itemCount:
  ///   If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.
  Future<FilterDto?> getSingleFilter(String id, { bool? itemCount, }) async {
    final response = await getSingleFilterWithHttpInfo(id,  itemCount: itemCount, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilterDto',) as FilterDto;
    
    }
    return null;
  }

  /// Execute Filter Count (POST)
  ///
  /// Executes the saved query of the filter by id and returns the count. This method is slightly more powerful then the [Get Execute Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-count/)  method because it allows to extend the saved query of the filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<Response> postExecuteFilterCountWithHttpInfo(String id, { Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/count'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Execute Filter Count (POST)
  ///
  /// Executes the saved query of the filter by id and returns the count. This method is slightly more powerful then the [Get Execute Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-count/)  method because it allows to extend the saved query of the filter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<CountResultDto?> postExecuteFilterCount(String id, { Object? body, }) async {
    final response = await postExecuteFilterCountWithHttpInfo(id,  body: body, );
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

  /// Execute Filter List (POST)
  ///
  /// Executes the saved query of the filter by id and returns the result list. This method is slightly more powerful then the  [Get Execute FilterList](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-list/) method because it allows to extend the saved query of the filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<Response> postExecuteFilterListWithHttpInfo(String id, { int? firstResult, int? maxResults, Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/list'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Execute Filter List (POST)
  ///
  /// Executes the saved query of the filter by id and returns the result list. This method is slightly more powerful then the  [Get Execute FilterList](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-list/) method because it allows to extend the saved query of the filter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<List<Object>?> postExecuteFilterList(String id, { int? firstResult, int? maxResults, Object? body, }) async {
    final response = await postExecuteFilterListWithHttpInfo(id,  firstResult: firstResult, maxResults: maxResults, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Object>') as List)
        .cast<Object>()
        .toList(growable: false);

    }
    return null;
  }

  /// Execute Filter Single Result (POST)
  ///
  /// Executes the saved query of the filter by id and returns the single result. This method is slightly more powerful then the [Get Execute Filter Single Result](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-single-result/) method because it allows to extend the saved query of the filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<Response> postExecuteFilterSingleResultWithHttpInfo(String id, { Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}/singleResult'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = body;

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

  /// Execute Filter Single Result (POST)
  ///
  /// Executes the saved query of the filter by id and returns the single result. This method is slightly more powerful then the [Get Execute Filter Single Result](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-single-result/) method because it allows to extend the saved query of the filter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to execute.
  ///
  /// * [Object] body:
  ///   A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.
  Future<Object?> postExecuteFilterSingleResult(String id, { Object? body, }) async {
    final response = await postExecuteFilterSingleResultWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Update Filter
  ///
  /// Updates an existing filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be updated.
  ///
  /// * [CreateFilterDto] createFilterDto:
  Future<Response> updateFilterWithHttpInfo(String id, { CreateFilterDto? createFilterDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/filter/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createFilterDto;

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

  /// Update Filter
  ///
  /// Updates an existing filter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the filter to be updated.
  ///
  /// * [CreateFilterDto] createFilterDto:
  Future<void> updateFilter(String id, { CreateFilterDto? createFilterDto, }) async {
    final response = await updateFilterWithHttpInfo(id,  createFilterDto: createFilterDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
