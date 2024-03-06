//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoryCleanupApi {
  HistoryCleanupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clean up history (POST)
  ///
  /// Schedules asynchronous history cleanup (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).  **Note:** This endpoint will return at most a single history cleanup job. Since version `7.9.0` it is possible to configure multiple [parallel history cleanup jobs](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#parallel-execution). Use [`GET /history/cleanup/jobs`](https://docs.camunda.org/manual/7.20/reference/rest/history/history-cleanup/get-history-cleanup-jobs) to find all the available history cleanup jobs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] immediatelyDue:
  ///   When true the job will be scheduled for nearest future. When `false`, the job will be scheduled for next batch window start time. Default is `true`.
  Future<Response> cleanupAsyncWithHttpInfo({ bool? immediatelyDue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/cleanup';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (immediatelyDue != null) {
      queryParams.addAll(_queryParams('', 'immediatelyDue', immediatelyDue));
    }

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

  /// Clean up history (POST)
  ///
  /// Schedules asynchronous history cleanup (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).  **Note:** This endpoint will return at most a single history cleanup job. Since version `7.9.0` it is possible to configure multiple [parallel history cleanup jobs](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#parallel-execution). Use [`GET /history/cleanup/jobs`](https://docs.camunda.org/manual/7.20/reference/rest/history/history-cleanup/get-history-cleanup-jobs) to find all the available history cleanup jobs.
  ///
  /// Parameters:
  ///
  /// * [bool] immediatelyDue:
  ///   When true the job will be scheduled for nearest future. When `false`, the job will be scheduled for next batch window start time. Default is `true`.
  Future<JobDto?> cleanupAsync({ bool? immediatelyDue, }) async {
    final response = await cleanupAsyncWithHttpInfo( immediatelyDue: immediatelyDue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobDto',) as JobDto;
    
    }
    return null;
  }

  /// Find clean up history job (GET)
  ///
  /// **Deprecated!** Use `GET /history/cleanup/jobs` instead.  Finds history cleanup job (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> findCleanupJobWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/history/cleanup/job';

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

  /// Find clean up history job (GET)
  ///
  /// **Deprecated!** Use `GET /history/cleanup/jobs` instead.  Finds history cleanup job (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  Future<JobDto?> findCleanupJob() async {
    final response = await findCleanupJobWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobDto',) as JobDto;
    
    }
    return null;
  }

  /// Find clean up history jobs (GET)
  ///
  /// Finds history cleanup jobs (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> findCleanupJobsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/history/cleanup/jobs';

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

  /// Find clean up history jobs (GET)
  ///
  /// Finds history cleanup jobs (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  Future<List<JobDto>?> findCleanupJobs() async {
    final response = await findCleanupJobsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<JobDto>') as List)
        .cast<JobDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get History Cleanup Configuration
  ///
  /// Retrieves history cleanup batch window configuration (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getHistoryCleanupConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/history/cleanup/configuration';

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

  /// Get History Cleanup Configuration
  ///
  /// Retrieves history cleanup batch window configuration (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).
  Future<HistoryCleanupConfigurationDto?> getHistoryCleanupConfiguration() async {
    final response = await getHistoryCleanupConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoryCleanupConfigurationDto',) as HistoryCleanupConfigurationDto;
    
    }
    return null;
  }
}
