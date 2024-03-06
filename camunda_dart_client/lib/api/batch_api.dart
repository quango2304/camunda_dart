//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BatchApi {
  BatchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete
  ///
  /// Deletes a batch by id, including all related jobs and job definitions. Optionally also deletes the batch history.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if the historic batch and historic job logs for this batch should also be deleted.
  Future<Response> deleteBatchWithHttpInfo(String id, { bool? cascade, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cascade != null) {
      queryParams.addAll(_queryParams('', 'cascade', cascade));
    }

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
  /// Deletes a batch by id, including all related jobs and job definitions. Optionally also deletes the batch history.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if the historic batch and historic job logs for this batch should also be deleted.
  Future<void> deleteBatch(String id, { bool? cascade, }) async {
    final response = await deleteBatchWithHttpInfo(id,  cascade: cascade, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Retrieves a batch by id, according to the Batch interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be retrieved.
  Future<Response> getBatchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/{id}'
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

  /// Get
  ///
  /// Retrieves a batch by id, according to the Batch interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be retrieved.
  Future<BatchDto?> getBatch(String id,) async {
    final response = await getBatchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchDto',) as BatchDto;
    
    }
    return null;
  }

  /// Get Statistics
  ///
  /// Queries for batch statistics that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the  [Get Batch Statistics Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query-count/) method.
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
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<Response> getBatchStatisticsWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/statistics';

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
    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (createdBy != null) {
      queryParams.addAll(_queryParams('', 'createdBy', createdBy));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (withFailures != null) {
      queryParams.addAll(_queryParams('', 'withFailures', withFailures));
    }
    if (withoutFailures != null) {
      queryParams.addAll(_queryParams('', 'withoutFailures', withoutFailures));
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

  /// Get Statistics
  ///
  /// Queries for batch statistics that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the  [Get Batch Statistics Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query-count/) method.
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
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<List<BatchStatisticsDto>?> getBatchStatistics({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    final response = await getBatchStatisticsWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, batchId: batchId, type: type, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, suspended: suspended, createdBy: createdBy, startedBefore: startedBefore, startedAfter: startedAfter, withFailures: withFailures, withoutFailures: withoutFailures, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BatchStatisticsDto>') as List)
        .cast<BatchStatisticsDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Statistics Count
  ///
  /// Requests the number of batch statistics that fulfill the query criteria. Takes the same filtering parameters as the [Get Batch Statistics](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<Response> getBatchStatisticsCountWithHttpInfo({ String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/statistics/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (createdBy != null) {
      queryParams.addAll(_queryParams('', 'createdBy', createdBy));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (withFailures != null) {
      queryParams.addAll(_queryParams('', 'withFailures', withFailures));
    }
    if (withoutFailures != null) {
      queryParams.addAll(_queryParams('', 'withoutFailures', withoutFailures));
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

  /// Get Statistics Count
  ///
  /// Requests the number of batch statistics that fulfill the query criteria. Takes the same filtering parameters as the [Get Batch Statistics](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<CountResultDto?> getBatchStatisticsCount({ String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    final response = await getBatchStatisticsCountWithHttpInfo( batchId: batchId, type: type, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, suspended: suspended, createdBy: createdBy, startedBefore: startedBefore, startedAfter: startedAfter, withFailures: withFailures, withoutFailures: withoutFailures, );
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
  /// Queries for batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query-count/) method.
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
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<Response> getBatchesWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch';

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
    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (createdBy != null) {
      queryParams.addAll(_queryParams('', 'createdBy', createdBy));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (withFailures != null) {
      queryParams.addAll(_queryParams('', 'withFailures', withFailures));
    }
    if (withoutFailures != null) {
      queryParams.addAll(_queryParams('', 'withoutFailures', withoutFailures));
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
  /// Queries for batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query-count/) method.
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
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<List<BatchDto>?> getBatches({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    final response = await getBatchesWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, batchId: batchId, type: type, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, suspended: suspended, createdBy: createdBy, startedBefore: startedBefore, startedAfter: startedAfter, withFailures: withFailures, withoutFailures: withoutFailures, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BatchDto>') as List)
        .cast<BatchDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Requests the number of batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Batches](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<Response> getBatchesCountWithHttpInfo({ String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (createdBy != null) {
      queryParams.addAll(_queryParams('', 'createdBy', createdBy));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (withFailures != null) {
      queryParams.addAll(_queryParams('', 'withFailures', withFailures));
    }
    if (withoutFailures != null) {
      queryParams.addAll(_queryParams('', 'withoutFailures', withoutFailures));
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
  /// Requests the number of batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Batches](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
  ///
  /// * [String] createdBy:
  ///   Only include batches that were started by this user id.
  ///
  /// * [DateTime] startedBefore:
  ///   Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withFailures:
  ///   Only include batches having jobs with failures. Value can only be `true`.
  ///
  /// * [bool] withoutFailures:
  ///   Only include batches having jobs without failures. Value can only be `true`.
  Future<CountResultDto?> getBatchesCount({ String? batchId, String? type, String? tenantIdIn, bool? withoutTenantId, bool? suspended, String? createdBy, DateTime? startedBefore, DateTime? startedAfter, bool? withFailures, bool? withoutFailures, }) async {
    final response = await getBatchesCountWithHttpInfo( batchId: batchId, type: type, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, suspended: suspended, createdBy: createdBy, startedBefore: startedBefore, startedAfter: startedAfter, withFailures: withFailures, withoutFailures: withoutFailures, );
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

  /// Activate/Suspend
  ///
  /// Activates or suspends a batch by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<Response> updateBatchSuspensionStateWithHttpInfo(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/batch/{id}/suspended'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = suspensionStateDto;

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

  /// Activate/Suspend
  ///
  /// Activates or suspends a batch by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<void> updateBatchSuspensionState(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    final response = await updateBatchSuspensionStateWithHttpInfo(id,  suspensionStateDto: suspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
