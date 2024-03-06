//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MetricsApi {
  MetricsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Task Worker Metrics
  ///
  /// Deletes all task worker metrics prior to the given date or all if no date is provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///   The date prior to which all task worker metrics should be deleted.
  Future<Response> deleteTaskMetricsWithHttpInfo({ DateTime? date, }) async {
    // ignore: prefer_const_declarations
    final path = r'/metrics/task-worker';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (date != null) {
      queryParams.addAll(_queryParams('', 'date', date));
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

  /// Delete Task Worker Metrics
  ///
  /// Deletes all task worker metrics prior to the given date or all if no date is provided.
  ///
  /// Parameters:
  ///
  /// * [DateTime] date:
  ///   The date prior to which all task worker metrics should be deleted.
  Future<void> deleteTaskMetrics({ DateTime? date, }) async {
    final response = await deleteTaskMetricsWithHttpInfo( date: date, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Sum
  ///
  /// Retrieves the `sum` (count) for a given metric.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] metricsName (required):
  ///   The name of the metric.
  ///
  /// * [DateTime] startDate:
  ///   The start date (inclusive).
  ///
  /// * [DateTime] endDate:
  ///   The end date (exclusive).
  Future<Response> getMetricsWithHttpInfo(String metricsName, { DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/metrics/{metrics-name}/sum'
      .replaceAll('{metrics-name}', metricsName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
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

  /// Get Sum
  ///
  /// Retrieves the `sum` (count) for a given metric.
  ///
  /// Parameters:
  ///
  /// * [String] metricsName (required):
  ///   The name of the metric.
  ///
  /// * [DateTime] startDate:
  ///   The start date (inclusive).
  ///
  /// * [DateTime] endDate:
  ///   The end date (exclusive).
  Future<MetricsResultDto?> getMetrics(String metricsName, { DateTime? startDate, DateTime? endDate, }) async {
    final response = await getMetricsWithHttpInfo(metricsName,  startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MetricsResultDto',) as MetricsResultDto;
    
    }
    return null;
  }

  /// Get Metrics in Interval
  ///
  /// Retrieves a list of metrics, aggregated for a given interval.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the metric.
  ///
  /// * [String] reporter:
  ///   The name of the reporter (host), on which the metrics was logged. This will have value provided by the [hostname configuration property](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#hostname).
  ///
  /// * [DateTime] startDate:
  ///   The start date (inclusive).
  ///
  /// * [DateTime] endDate:
  ///   The end date (exclusive).
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [String] interval:
  ///   The interval for which the metrics should be aggregated. Time unit is seconds. Default: The interval is set to 15 minutes (900 seconds).
  ///
  /// * [String] aggregateByReporter:
  ///   Aggregate metrics by reporter.
  Future<Response> intervalWithHttpInfo({ String? name, String? reporter, DateTime? startDate, DateTime? endDate, int? firstResult, int? maxResults, String? interval, String? aggregateByReporter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/metrics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (reporter != null) {
      queryParams.addAll(_queryParams('', 'reporter', reporter));
    }
    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }
    if (interval != null) {
      queryParams.addAll(_queryParams('', 'interval', interval));
    }
    if (aggregateByReporter != null) {
      queryParams.addAll(_queryParams('', 'aggregateByReporter', aggregateByReporter));
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

  /// Get Metrics in Interval
  ///
  /// Retrieves a list of metrics, aggregated for a given interval.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the metric.
  ///
  /// * [String] reporter:
  ///   The name of the reporter (host), on which the metrics was logged. This will have value provided by the [hostname configuration property](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#hostname).
  ///
  /// * [DateTime] startDate:
  ///   The start date (inclusive).
  ///
  /// * [DateTime] endDate:
  ///   The end date (exclusive).
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [String] interval:
  ///   The interval for which the metrics should be aggregated. Time unit is seconds. Default: The interval is set to 15 minutes (900 seconds).
  ///
  /// * [String] aggregateByReporter:
  ///   Aggregate metrics by reporter.
  Future<List<MetricsIntervalResultDto>?> interval({ String? name, String? reporter, DateTime? startDate, DateTime? endDate, int? firstResult, int? maxResults, String? interval, String? aggregateByReporter, }) async {
    final response = await intervalWithHttpInfo( name: name, reporter: reporter, startDate: startDate, endDate: endDate, firstResult: firstResult, maxResults: maxResults, interval: interval, aggregateByReporter: aggregateByReporter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<MetricsIntervalResultDto>') as List)
        .cast<MetricsIntervalResultDto>()
        .toList(growable: false);

    }
    return null;
  }
}
