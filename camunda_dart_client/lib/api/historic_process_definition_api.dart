//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricProcessDefinitionApi {
  HistoricProcessDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Cleanable Process Instance Report
  ///
  /// Retrieves a report about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup))  so that you can tune the history time to live. These reports include the count of the finished historic process instances, cleanable process instances and basic process definition data - id, key, name and version. The size of the result set can be retrieved by using the [Get Cleanable Process Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getCleanableHistoricProcessInstanceReportWithHttpInfo({ String? processDefinitionIdIn, String? processDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-definition/cleanable-process-instance-report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionIdIn', processDefinitionIdIn));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (compact != null) {
      queryParams.addAll(_queryParams('', 'compact', compact));
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

  /// Get Cleanable Process Instance Report
  ///
  /// Retrieves a report about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup))  so that you can tune the history time to live. These reports include the count of the finished historic process instances, cleanable process instances and basic process definition data - id, key, name and version. The size of the result set can be retrieved by using the [Get Cleanable Process Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<CleanableHistoricProcessInstanceReportResultDto>?> getCleanableHistoricProcessInstanceReport({ String? processDefinitionIdIn, String? processDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getCleanableHistoricProcessInstanceReportWithHttpInfo( processDefinitionIdIn: processDefinitionIdIn, processDefinitionKeyIn: processDefinitionKeyIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, compact: compact, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CleanableHistoricProcessInstanceReportResultDto>') as List)
        .cast<CleanableHistoricProcessInstanceReportResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Cleanable Process Instance Report Count
  ///
  /// Queries for the number of report results about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Process Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getCleanableHistoricProcessInstanceReportCountWithHttpInfo({ String? processDefinitionIdIn, String? processDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-definition/cleanable-process-instance-report/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionIdIn', processDefinitionIdIn));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (compact != null) {
      queryParams.addAll(_queryParams('', 'compact', compact));
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

  /// Get Cleanable Process Instance Report Count
  ///
  /// Queries for the number of report results about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Process Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include process instances which have more than zero finished instances. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getCleanableHistoricProcessInstanceReportCount({ String? processDefinitionIdIn, String? processDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, }) async {
    final response = await getCleanableHistoricProcessInstanceReportCountWithHttpInfo( processDefinitionIdIn: processDefinitionIdIn, processDefinitionKeyIn: processDefinitionKeyIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, compact: compact, );
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

  /// Get Historic Activity Statistics
  ///
  /// Retrieves historic statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances and, optionally, the number of canceled activity instances, finished activity instances and activity instances which completed a scope (i.e., in BPMN 2.0 manner: a scope is completed by an activity instance when the activity instance consumed a token but did not emit a new token). **Note:** This only includes historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  ///
  /// * [bool] canceled:
  ///   Whether to include the number of canceled activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] finished:
  ///   Whether to include the number of finished activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] completeScope:
  ///   Whether to include the number of activity instances which completed a scope in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] incidents:
  ///   Whether to include the number of incidents. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to process instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to process instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to process instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to process instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to process instances with the given IDs. The IDs must be provided as a comma- separated list.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  Future<Response> getHistoricActivityStatisticsWithHttpInfo(String id, { bool? canceled, bool? finished, bool? completeScope, bool? incidents, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? processInstanceIdIn, String? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-definition/{id}/statistics'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (canceled != null) {
      queryParams.addAll(_queryParams('', 'canceled', canceled));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (completeScope != null) {
      queryParams.addAll(_queryParams('', 'completeScope', completeScope));
    }
    if (incidents != null) {
      queryParams.addAll(_queryParams('', 'incidents', incidents));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (finishedBefore != null) {
      queryParams.addAll(_queryParams('', 'finishedBefore', finishedBefore));
    }
    if (finishedAfter != null) {
      queryParams.addAll(_queryParams('', 'finishedAfter', finishedAfter));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
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

  /// Get Historic Activity Statistics
  ///
  /// Retrieves historic statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances and, optionally, the number of canceled activity instances, finished activity instances and activity instances which completed a scope (i.e., in BPMN 2.0 manner: a scope is completed by an activity instance when the activity instance consumed a token but did not emit a new token). **Note:** This only includes historic data.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  ///
  /// * [bool] canceled:
  ///   Whether to include the number of canceled activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] finished:
  ///   Whether to include the number of finished activity instances in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] completeScope:
  ///   Whether to include the number of activity instances which completed a scope in the result or not. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [bool] incidents:
  ///   Whether to include the number of incidents. Valid values are `true` or `false`. Default: `false`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to process instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to process instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to process instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to process instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/),  the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`,  e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to process instances with the given IDs. The IDs must be provided as a comma- separated list.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  Future<List<HistoricActivityStatisticsDto>?> getHistoricActivityStatistics(String id, { bool? canceled, bool? finished, bool? completeScope, bool? incidents, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? processInstanceIdIn, String? sortBy, String? sortOrder, }) async {
    final response = await getHistoricActivityStatisticsWithHttpInfo(id,  canceled: canceled, finished: finished, completeScope: completeScope, incidents: incidents, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, processInstanceIdIn: processInstanceIdIn, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricActivityStatisticsDto>') as List)
        .cast<HistoricActivityStatisticsDto>()
        .toList(growable: false);

    }
    return null;
  }
}
