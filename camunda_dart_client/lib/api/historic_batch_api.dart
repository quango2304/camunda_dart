//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricBatchApi {
  HistoricBatchApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Historic Batch
  ///
  /// Deletes a historic batch by id, including related historic job logs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be deleted.
  Future<Response> deleteHistoricBatchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/{id}'
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

  /// Delete Historic Batch
  ///
  /// Deletes a historic batch by id, including related historic job logs.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the batch to be deleted.
  Future<void> deleteHistoricBatch(String id,) async {
    final response = await deleteHistoricBatchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Cleanable Batch Report
  ///
  /// Retrieves a report about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ) so that you can tune the history time to live. These reports include the count of the finished batches, cleanable batches and type of the batch. The size of the result set can be retrieved by using the [Get Cleanable Batch Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report-count/) method.  **Please note:** The history time to live for batch operations does not support [Multi-Tenancy](https://docs.camunda.org/manual/7.20/user-guide/process-engine/multi-tenancy.md). The report will return an information for all batch operations (for all tenants) if you have permissions to see the history. 
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
  Future<Response> getCleanableHistoricBatchesReportWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/cleanable-batch-report';

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

  /// Get Cleanable Batch Report
  ///
  /// Retrieves a report about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ) so that you can tune the history time to live. These reports include the count of the finished batches, cleanable batches and type of the batch. The size of the result set can be retrieved by using the [Get Cleanable Batch Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report-count/) method.  **Please note:** The history time to live for batch operations does not support [Multi-Tenancy](https://docs.camunda.org/manual/7.20/user-guide/process-engine/multi-tenancy.md). The report will return an information for all batch operations (for all tenants) if you have permissions to see the history. 
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
  Future<List<CleanableHistoricBatchReportResultDto>?> getCleanableHistoricBatchesReport({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getCleanableHistoricBatchesReportWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CleanableHistoricBatchReportResultDto>') as List)
        .cast<CleanableHistoricBatchReportResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Cleanable Batch Report Count
  ///
  /// Queries for the number of report results about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ). Takes the same parameters as the [Get Cleanable Batch Report](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCleanableHistoricBatchesReportCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/cleanable-batch-report/count';

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

  /// Get Cleanable Batch Report Count
  ///
  /// Queries for the number of report results about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ). Takes the same parameters as the [Get Cleanable Batch Report](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report/) method.
  Future<CountResultDto?> getCleanableHistoricBatchesReportCount() async {
    final response = await getCleanableHistoricBatchesReportCountWithHttpInfo();
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

  /// Get Historic Batch
  ///
  /// Retrieves a historic batch by id, according to the `HistoricBatch` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic batch to be retrieved.
  Future<Response> getHistoricBatchWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/{id}'
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

  /// Get Historic Batch
  ///
  /// Retrieves a historic batch by id, according to the `HistoricBatch` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic batch to be retrieved.
  Future<HistoricBatchDto?> getHistoricBatch(String id,) async {
    final response = await getHistoricBatchWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricBatchDto',) as HistoricBatchDto;
    
    }
    return null;
  }

  /// Get Historic Batches
  ///
  /// Queries for historic batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Historic Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query-count/) method.
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
  /// * [bool] completed:
  ///    Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
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
  Future<Response> getHistoricBatchesWithHttpInfo({ String? batchId, String? type, bool? completed, String? tenantIdIn, bool? withoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch';

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
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
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

  /// Get Historic Batches
  ///
  /// Queries for historic batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Historic Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [bool] completed:
  ///    Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
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
  Future<List<HistoricBatchDto>?> getHistoricBatches({ String? batchId, String? type, bool? completed, String? tenantIdIn, bool? withoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricBatchesWithHttpInfo( batchId: batchId, type: type, completed: completed, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricBatchDto>') as List)
        .cast<HistoricBatchDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Historic Batch Count
  ///
  /// Requests the number of historic batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Historic Batches](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query/) method.
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
  /// * [bool] completed:
  ///    Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricBatchesCountWithHttpInfo({ String? batchId, String? type, bool? completed, String? tenantIdIn, bool? withoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/count';

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
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
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

  /// Get Historic Batch Count
  ///
  /// Requests the number of historic batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Historic Batches](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] batchId:
  ///   Filter by batch id.
  ///
  /// * [String] type:
  ///   Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
  ///
  /// * [bool] completed:
  ///    Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getHistoricBatchesCount({ String? batchId, String? type, bool? completed, String? tenantIdIn, bool? withoutTenantId, }) async {
    final response = await getHistoricBatchesCountWithHttpInfo( batchId: batchId, type: type, completed: completed, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, );
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

  /// Set Removal Time Async (POST)
  ///
  /// Sets the removal time to multiple historic batches asynchronously (batch).  At least __historicBatchIds__ or __historicBatchQuery__ has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricBatchesDto] setRemovalTimeToHistoricBatchesDto:
  Future<Response> setRemovalTimeAsyncHistoricBatchWithHttpInfo({ SetRemovalTimeToHistoricBatchesDto? setRemovalTimeToHistoricBatchesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/batch/set-removal-time';

    // ignore: prefer_final_locals
    Object? postBody = setRemovalTimeToHistoricBatchesDto;

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

  /// Set Removal Time Async (POST)
  ///
  /// Sets the removal time to multiple historic batches asynchronously (batch).  At least __historicBatchIds__ or __historicBatchQuery__ has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricBatchesDto] setRemovalTimeToHistoricBatchesDto:
  Future<BatchDto?> setRemovalTimeAsyncHistoricBatch({ SetRemovalTimeToHistoricBatchesDto? setRemovalTimeToHistoricBatchesDto, }) async {
    final response = await setRemovalTimeAsyncHistoricBatchWithHttpInfo( setRemovalTimeToHistoricBatchesDto: setRemovalTimeToHistoricBatchesDto, );
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
}
