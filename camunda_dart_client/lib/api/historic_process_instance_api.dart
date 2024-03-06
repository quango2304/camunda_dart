//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricProcessInstanceApi {
  HistoricProcessInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete
  ///
  /// Deletes a process instance from the history by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic process instance to be deleted.
  ///
  /// * [bool] failIfNotExists:
  ///   If set to `false`, the request will still be successful if the process id is not found.
  Future<Response> deleteHistoricProcessInstanceWithHttpInfo(String id, { bool? failIfNotExists, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (failIfNotExists != null) {
      queryParams.addAll(_queryParams('', 'failIfNotExists', failIfNotExists));
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
  /// Deletes a process instance from the history by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic process instance to be deleted.
  ///
  /// * [bool] failIfNotExists:
  ///   If set to `false`, the request will still be successful if the process id is not found.
  Future<void> deleteHistoricProcessInstance(String id, { bool? failIfNotExists, }) async {
    final response = await deleteHistoricProcessInstanceWithHttpInfo(id,  failIfNotExists: failIfNotExists, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Async (POST)
  ///
  /// Delete multiple historic process instances asynchronously (batch). At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided then all instances matching query criterion and instances from the list will be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteHistoricProcessInstancesDto] deleteHistoricProcessInstancesDto:
  Future<Response> deleteHistoricProcessInstancesAsyncWithHttpInfo({ DeleteHistoricProcessInstancesDto? deleteHistoricProcessInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/delete';

    // ignore: prefer_final_locals
    Object? postBody = deleteHistoricProcessInstancesDto;

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

  /// Delete Async (POST)
  ///
  /// Delete multiple historic process instances asynchronously (batch). At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided then all instances matching query criterion and instances from the list will be deleted.
  ///
  /// Parameters:
  ///
  /// * [DeleteHistoricProcessInstancesDto] deleteHistoricProcessInstancesDto:
  Future<BatchDto?> deleteHistoricProcessInstancesAsync({ DeleteHistoricProcessInstancesDto? deleteHistoricProcessInstancesDto, }) async {
    final response = await deleteHistoricProcessInstancesAsyncWithHttpInfo( deleteHistoricProcessInstancesDto: deleteHistoricProcessInstancesDto, );
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

  /// Delete Variable Instances
  ///
  /// Deletes all variables of a process instance from the history by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance for which all historic variables are to be deleted.
  Future<Response> deleteHistoricVariableInstancesOfHistoricProcessInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/{id}/variable-instances'
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

  /// Delete Variable Instances
  ///
  /// Deletes all variables of a process instance from the history by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance for which all historic variables are to be deleted.
  Future<void> deleteHistoricVariableInstancesOfHistoricProcessInstance(String id,) async {
    final response = await deleteHistoricVariableInstancesOfHistoricProcessInstanceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Retrieves a historic process instance by id, according to the `HistoricProcessInstance` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic process instance to be retrieved.
  Future<Response> getHistoricProcessInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/{id}'
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
  /// Retrieves a historic process instance by id, according to the `HistoricProcessInstance` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic process instance to be retrieved.
  Future<HistoricProcessInstanceDto?> getHistoricProcessInstance(String id,) async {
    final response = await getHistoricProcessInstanceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricProcessInstanceDto',) as HistoricProcessInstanceDto;
    
    }
    return null;
  }

  /// Get Duration Report
  ///
  /// Retrieves a report about the duration of completed process instances, grouped by a period. These reports include the maximum, minimum and average duration of all completed process instances which were started in a given period.  **Note:** This only includes historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reportType (required):
  ///   **Mandatory.** Specifies the type of the report to retrieve. To retrieve a report about the duration of process instances, the value must be set to `duration`.
  ///
  /// * [String] periodUnit (required):
  ///   **Mandatory.** Specifies the granularity of the report. Valid values are `month` and `quarter`.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.
  Future<Response> getHistoricProcessInstanceDurationReportWithHttpInfo(String reportType, String periodUnit, { String? processDefinitionIdIn, String? processDefinitionKeyIn, DateTime? startedBefore, DateTime? startedAfter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'reportType', reportType));
      queryParams.addAll(_queryParams('', 'periodUnit', periodUnit));
    if (processDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionIdIn', processDefinitionIdIn));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
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

  /// Get Duration Report
  ///
  /// Retrieves a report about the duration of completed process instances, grouped by a period. These reports include the maximum, minimum and average duration of all completed process instances which were started in a given period.  **Note:** This only includes historic data.
  ///
  /// Parameters:
  ///
  /// * [String] reportType (required):
  ///   **Mandatory.** Specifies the type of the report to retrieve. To retrieve a report about the duration of process instances, the value must be set to `duration`.
  ///
  /// * [String] periodUnit (required):
  ///   **Mandatory.** Specifies the granularity of the report. Valid values are `month` and `quarter`.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by process definition ids. Must be a comma-separated list of process definition ids.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by process definition keys. Must be a comma-separated list of process definition keys.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2016-01-23T14:42:45.000+0200`.
  Future<List<DurationReportResultDto>?> getHistoricProcessInstanceDurationReport(String reportType, String periodUnit, { String? processDefinitionIdIn, String? processDefinitionKeyIn, DateTime? startedBefore, DateTime? startedAfter, }) async {
    final response = await getHistoricProcessInstanceDurationReportWithHttpInfo(reportType, periodUnit,  processDefinitionIdIn: processDefinitionIdIn, processDefinitionKeyIn: processDefinitionKeyIn, startedBefore: startedBefore, startedAfter: startedAfter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DurationReportResultDto>') as List)
        .cast<DurationReportResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List
  ///
  /// Queries for historic process instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query-count/) method.
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
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIds:
  ///   Filter by process instance ids. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionName:
  ///   Filter by the name of the process definition the instances run on.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] finished:
  ///   Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withIncidents:
  ///   Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withRootIncidents:
  ///   Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentStatus:
  ///   Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityAfter:
  ///   Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityBefore:
  ///   Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobAfter:
  ///   Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobBefore:
  ///   Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] startedBy:
  ///   Only include process instances that were started by the given user.
  ///
  /// * [String] superProcessInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstanceId:
  ///   Restrict query to one process instance that has a sub process instance with the given id.
  ///
  /// * [String] superCaseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstanceId:
  ///   Restrict query to one process instance that has a sub case instance with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] executedActivityIdIn:
  ///   Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] activeActivityIdIn:
  ///   Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] active:
  ///   Restrict to instances that are active.
  ///
  /// * [bool] suspended:
  ///   Restrict to instances that are suspended.
  ///
  /// * [bool] completed:
  ///   Restrict to instances that are completed.
  ///
  /// * [bool] externallyTerminated:
  ///   Restrict to instances that are externallyTerminated.
  ///
  /// * [bool] internallyTerminated:
  ///   Restrict to instances that are internallyTerminated.
  ///
  /// * [String] variables:
  ///   Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
  Future<Response> getHistoricProcessInstancesWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? processInstanceId, String? processInstanceIds, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? processDefinitionKeyNotIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, bool? rootProcessInstances, bool? finished, bool? unfinished, bool? withIncidents, bool? withRootIncidents, String? incidentType, String? incidentStatus, String? incidentMessage, String? incidentMessageLike, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, DateTime? executedActivityAfter, DateTime? executedActivityBefore, DateTime? executedJobAfter, DateTime? executedJobBefore, String? startedBy, String? superProcessInstanceId, String? subProcessInstanceId, String? superCaseInstanceId, String? subCaseInstanceId, String? caseInstanceId, String? tenantIdIn, bool? withoutTenantId, String? executedActivityIdIn, String? activeActivityIdIn, bool? active, bool? suspended, bool? completed, bool? externallyTerminated, bool? internallyTerminated, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance';

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
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (processDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionNameLike', processDefinitionNameLike));
    }
    if (processDefinitionKeyNotIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyNotIn', processDefinitionKeyNotIn));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (rootProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'rootProcessInstances', rootProcessInstances));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (withIncidents != null) {
      queryParams.addAll(_queryParams('', 'withIncidents', withIncidents));
    }
    if (withRootIncidents != null) {
      queryParams.addAll(_queryParams('', 'withRootIncidents', withRootIncidents));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentStatus != null) {
      queryParams.addAll(_queryParams('', 'incidentStatus', incidentStatus));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
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
    if (executedActivityAfter != null) {
      queryParams.addAll(_queryParams('', 'executedActivityAfter', executedActivityAfter));
    }
    if (executedActivityBefore != null) {
      queryParams.addAll(_queryParams('', 'executedActivityBefore', executedActivityBefore));
    }
    if (executedJobAfter != null) {
      queryParams.addAll(_queryParams('', 'executedJobAfter', executedJobAfter));
    }
    if (executedJobBefore != null) {
      queryParams.addAll(_queryParams('', 'executedJobBefore', executedJobBefore));
    }
    if (startedBy != null) {
      queryParams.addAll(_queryParams('', 'startedBy', startedBy));
    }
    if (superProcessInstanceId != null) {
      queryParams.addAll(_queryParams('', 'superProcessInstanceId', superProcessInstanceId));
    }
    if (subProcessInstanceId != null) {
      queryParams.addAll(_queryParams('', 'subProcessInstanceId', subProcessInstanceId));
    }
    if (superCaseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'superCaseInstanceId', superCaseInstanceId));
    }
    if (subCaseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'subCaseInstanceId', subCaseInstanceId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (executedActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'executedActivityIdIn', executedActivityIdIn));
    }
    if (activeActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activeActivityIdIn', activeActivityIdIn));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (externallyTerminated != null) {
      queryParams.addAll(_queryParams('', 'externallyTerminated', externallyTerminated));
    }
    if (internallyTerminated != null) {
      queryParams.addAll(_queryParams('', 'internallyTerminated', internallyTerminated));
    }
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
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
  /// Queries for historic process instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query-count/) method.
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
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIds:
  ///   Filter by process instance ids. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionName:
  ///   Filter by the name of the process definition the instances run on.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] finished:
  ///   Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withIncidents:
  ///   Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withRootIncidents:
  ///   Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentStatus:
  ///   Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityAfter:
  ///   Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityBefore:
  ///   Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobAfter:
  ///   Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobBefore:
  ///   Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] startedBy:
  ///   Only include process instances that were started by the given user.
  ///
  /// * [String] superProcessInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstanceId:
  ///   Restrict query to one process instance that has a sub process instance with the given id.
  ///
  /// * [String] superCaseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstanceId:
  ///   Restrict query to one process instance that has a sub case instance with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] executedActivityIdIn:
  ///   Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] activeActivityIdIn:
  ///   Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] active:
  ///   Restrict to instances that are active.
  ///
  /// * [bool] suspended:
  ///   Restrict to instances that are suspended.
  ///
  /// * [bool] completed:
  ///   Restrict to instances that are completed.
  ///
  /// * [bool] externallyTerminated:
  ///   Restrict to instances that are externallyTerminated.
  ///
  /// * [bool] internallyTerminated:
  ///   Restrict to instances that are internallyTerminated.
  ///
  /// * [String] variables:
  ///   Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
  Future<List<HistoricProcessInstanceDto>?> getHistoricProcessInstances({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? processInstanceId, String? processInstanceIds, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? processDefinitionKeyNotIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, bool? rootProcessInstances, bool? finished, bool? unfinished, bool? withIncidents, bool? withRootIncidents, String? incidentType, String? incidentStatus, String? incidentMessage, String? incidentMessageLike, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, DateTime? executedActivityAfter, DateTime? executedActivityBefore, DateTime? executedJobAfter, DateTime? executedJobBefore, String? startedBy, String? superProcessInstanceId, String? subProcessInstanceId, String? superCaseInstanceId, String? subCaseInstanceId, String? caseInstanceId, String? tenantIdIn, bool? withoutTenantId, String? executedActivityIdIn, String? activeActivityIdIn, bool? active, bool? suspended, bool? completed, bool? externallyTerminated, bool? internallyTerminated, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    final response = await getHistoricProcessInstancesWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, processInstanceId: processInstanceId, processInstanceIds: processInstanceIds, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionName: processDefinitionName, processDefinitionNameLike: processDefinitionNameLike, processDefinitionKeyNotIn: processDefinitionKeyNotIn, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, rootProcessInstances: rootProcessInstances, finished: finished, unfinished: unfinished, withIncidents: withIncidents, withRootIncidents: withRootIncidents, incidentType: incidentType, incidentStatus: incidentStatus, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, executedActivityAfter: executedActivityAfter, executedActivityBefore: executedActivityBefore, executedJobAfter: executedJobAfter, executedJobBefore: executedJobBefore, startedBy: startedBy, superProcessInstanceId: superProcessInstanceId, subProcessInstanceId: subProcessInstanceId, superCaseInstanceId: superCaseInstanceId, subCaseInstanceId: subCaseInstanceId, caseInstanceId: caseInstanceId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, executedActivityIdIn: executedActivityIdIn, activeActivityIdIn: activeActivityIdIn, active: active, suspended: suspended, completed: completed, externallyTerminated: externallyTerminated, internallyTerminated: internallyTerminated, variables: variables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricProcessInstanceDto>') as List)
        .cast<HistoricProcessInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of historic process instances that fulfill the given parameters. Takes the same parameters as the [Get Process Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIds:
  ///   Filter by process instance ids. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionName:
  ///   Filter by the name of the process definition the instances run on.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] finished:
  ///   Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withIncidents:
  ///   Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withRootIncidents:
  ///   Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentStatus:
  ///   Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityAfter:
  ///   Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityBefore:
  ///   Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobAfter:
  ///   Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobBefore:
  ///   Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] startedBy:
  ///   Only include process instances that were started by the given user.
  ///
  /// * [String] superProcessInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstanceId:
  ///   Restrict query to one process instance that has a sub process instance with the given id.
  ///
  /// * [String] superCaseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstanceId:
  ///   Restrict query to one process instance that has a sub case instance with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] executedActivityIdIn:
  ///   Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] activeActivityIdIn:
  ///   Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] active:
  ///   Restrict to instances that are active.
  ///
  /// * [bool] suspended:
  ///   Restrict to instances that are suspended.
  ///
  /// * [bool] completed:
  ///   Restrict to instances that are completed.
  ///
  /// * [bool] externallyTerminated:
  ///   Restrict to instances that are externallyTerminated.
  ///
  /// * [bool] internallyTerminated:
  ///   Restrict to instances that are internallyTerminated.
  ///
  /// * [String] variables:
  ///   Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
  Future<Response> getHistoricProcessInstancesCountWithHttpInfo({ String? processInstanceId, String? processInstanceIds, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? processDefinitionKeyNotIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, bool? rootProcessInstances, bool? finished, bool? unfinished, bool? withIncidents, bool? withRootIncidents, String? incidentType, String? incidentStatus, String? incidentMessage, String? incidentMessageLike, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, DateTime? executedActivityAfter, DateTime? executedActivityBefore, DateTime? executedJobAfter, DateTime? executedJobBefore, String? startedBy, String? superProcessInstanceId, String? subProcessInstanceId, String? superCaseInstanceId, String? subCaseInstanceId, String? caseInstanceId, String? tenantIdIn, bool? withoutTenantId, String? executedActivityIdIn, String? activeActivityIdIn, bool? active, bool? suspended, bool? completed, bool? externallyTerminated, bool? internallyTerminated, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (processDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionNameLike', processDefinitionNameLike));
    }
    if (processDefinitionKeyNotIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyNotIn', processDefinitionKeyNotIn));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (rootProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'rootProcessInstances', rootProcessInstances));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (withIncidents != null) {
      queryParams.addAll(_queryParams('', 'withIncidents', withIncidents));
    }
    if (withRootIncidents != null) {
      queryParams.addAll(_queryParams('', 'withRootIncidents', withRootIncidents));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentStatus != null) {
      queryParams.addAll(_queryParams('', 'incidentStatus', incidentStatus));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
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
    if (executedActivityAfter != null) {
      queryParams.addAll(_queryParams('', 'executedActivityAfter', executedActivityAfter));
    }
    if (executedActivityBefore != null) {
      queryParams.addAll(_queryParams('', 'executedActivityBefore', executedActivityBefore));
    }
    if (executedJobAfter != null) {
      queryParams.addAll(_queryParams('', 'executedJobAfter', executedJobAfter));
    }
    if (executedJobBefore != null) {
      queryParams.addAll(_queryParams('', 'executedJobBefore', executedJobBefore));
    }
    if (startedBy != null) {
      queryParams.addAll(_queryParams('', 'startedBy', startedBy));
    }
    if (superProcessInstanceId != null) {
      queryParams.addAll(_queryParams('', 'superProcessInstanceId', superProcessInstanceId));
    }
    if (subProcessInstanceId != null) {
      queryParams.addAll(_queryParams('', 'subProcessInstanceId', subProcessInstanceId));
    }
    if (superCaseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'superCaseInstanceId', superCaseInstanceId));
    }
    if (subCaseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'subCaseInstanceId', subCaseInstanceId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (executedActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'executedActivityIdIn', executedActivityIdIn));
    }
    if (activeActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activeActivityIdIn', activeActivityIdIn));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (completed != null) {
      queryParams.addAll(_queryParams('', 'completed', completed));
    }
    if (externallyTerminated != null) {
      queryParams.addAll(_queryParams('', 'externallyTerminated', externallyTerminated));
    }
    if (internallyTerminated != null) {
      queryParams.addAll(_queryParams('', 'internallyTerminated', internallyTerminated));
    }
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
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
  /// Queries for the number of historic process instances that fulfill the given parameters. Takes the same parameters as the [Get Process Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIds:
  ///   Filter by process instance ids. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processDefinitionName:
  ///   Filter by the name of the process definition the instances run on.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances that belong to a set of process definitions. Filter by a comma-separated list of `Strings`.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by a list of business keys. A process instance must have one of the given business keys. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] finished:
  ///   Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withIncidents:
  ///   Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withRootIncidents:
  ///   Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentStatus:
  ///   Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityAfter:
  ///   Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedActivityBefore:
  ///   Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobAfter:
  ///   Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] executedJobBefore:
  ///   Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] startedBy:
  ///   Only include process instances that were started by the given user.
  ///
  /// * [String] superProcessInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstanceId:
  ///   Restrict query to one process instance that has a sub process instance with the given id.
  ///
  /// * [String] superCaseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstanceId:
  ///   Restrict query to one process instance that has a sub case instance with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] executedActivityIdIn:
  ///   Restrict to instances that executed an activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [String] activeActivityIdIn:
  ///   Restrict to instances that have an active activity with one of given ids. Filter by a comma-separated list of `Strings`
  ///
  /// * [bool] active:
  ///   Restrict to instances that are active.
  ///
  /// * [bool] suspended:
  ///   Restrict to instances that are suspended.
  ///
  /// * [bool] completed:
  ///   Restrict to instances that are completed.
  ///
  /// * [bool] externallyTerminated:
  ///   Restrict to instances that are externallyTerminated.
  ///
  /// * [bool] internallyTerminated:
  ///   Restrict to instances that are internallyTerminated.
  ///
  /// * [String] variables:
  ///   Only include process instances that have/had variables with certain values. Variable filtering expressions are comma-separated and are structured as follows: A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as String objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  Key and value may not contain underscore or comma characters. 
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
  Future<CountResultDto?> getHistoricProcessInstancesCount({ String? processInstanceId, String? processInstanceIds, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? processDefinitionKeyNotIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, bool? rootProcessInstances, bool? finished, bool? unfinished, bool? withIncidents, bool? withRootIncidents, String? incidentType, String? incidentStatus, String? incidentMessage, String? incidentMessageLike, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, DateTime? executedActivityAfter, DateTime? executedActivityBefore, DateTime? executedJobAfter, DateTime? executedJobBefore, String? startedBy, String? superProcessInstanceId, String? subProcessInstanceId, String? superCaseInstanceId, String? subCaseInstanceId, String? caseInstanceId, String? tenantIdIn, bool? withoutTenantId, String? executedActivityIdIn, String? activeActivityIdIn, bool? active, bool? suspended, bool? completed, bool? externallyTerminated, bool? internallyTerminated, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    final response = await getHistoricProcessInstancesCountWithHttpInfo( processInstanceId: processInstanceId, processInstanceIds: processInstanceIds, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionName: processDefinitionName, processDefinitionNameLike: processDefinitionNameLike, processDefinitionKeyNotIn: processDefinitionKeyNotIn, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, rootProcessInstances: rootProcessInstances, finished: finished, unfinished: unfinished, withIncidents: withIncidents, withRootIncidents: withRootIncidents, incidentType: incidentType, incidentStatus: incidentStatus, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, executedActivityAfter: executedActivityAfter, executedActivityBefore: executedActivityBefore, executedJobAfter: executedJobAfter, executedJobBefore: executedJobBefore, startedBy: startedBy, superProcessInstanceId: superProcessInstanceId, subProcessInstanceId: subProcessInstanceId, superCaseInstanceId: superCaseInstanceId, subCaseInstanceId: subCaseInstanceId, caseInstanceId: caseInstanceId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, executedActivityIdIn: executedActivityIdIn, activeActivityIdIn: activeActivityIdIn, active: active, suspended: suspended, completed: completed, externallyTerminated: externallyTerminated, internallyTerminated: internallyTerminated, variables: variables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, );
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

  /// Get List (POST)
  ///
  /// Queries for historic process instances that fulfill the given parameters. This method is slightly more powerful than the [Get Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) because it allows filtering by multiple process variables of types `String`, `Number` or `Boolean`.
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
  /// * [HistoricProcessInstanceQueryDto] historicProcessInstanceQueryDto:
  Future<Response> queryHistoricProcessInstancesWithHttpInfo({ int? firstResult, int? maxResults, HistoricProcessInstanceQueryDto? historicProcessInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance';

    // ignore: prefer_final_locals
    Object? postBody = historicProcessInstanceQueryDto;

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
  /// Queries for historic process instances that fulfill the given parameters. This method is slightly more powerful than the [Get Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) because it allows filtering by multiple process variables of types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricProcessInstanceQueryDto] historicProcessInstanceQueryDto:
  Future<List<HistoricProcessInstanceDto>?> queryHistoricProcessInstances({ int? firstResult, int? maxResults, HistoricProcessInstanceQueryDto? historicProcessInstanceQueryDto, }) async {
    final response = await queryHistoricProcessInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, historicProcessInstanceQueryDto: historicProcessInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricProcessInstanceDto>') as List)
        .cast<HistoricProcessInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Queries for the number of historic process instances that fulfill the given parameters. This method takes the same message body as the [Get Process Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method and therefore it is slightly more powerful than the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/post-process-instance-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricProcessInstanceQueryDto] historicProcessInstanceQueryDto:
  Future<Response> queryHistoricProcessInstancesCountWithHttpInfo({ HistoricProcessInstanceQueryDto? historicProcessInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/count';

    // ignore: prefer_final_locals
    Object? postBody = historicProcessInstanceQueryDto;

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
  /// Queries for the number of historic process instances that fulfill the given parameters. This method takes the same message body as the [Get Process Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method and therefore it is slightly more powerful than the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/post-process-instance-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [HistoricProcessInstanceQueryDto] historicProcessInstanceQueryDto:
  Future<CountResultDto?> queryHistoricProcessInstancesCount({ HistoricProcessInstanceQueryDto? historicProcessInstanceQueryDto, }) async {
    final response = await queryHistoricProcessInstancesCountWithHttpInfo( historicProcessInstanceQueryDto: historicProcessInstanceQueryDto, );
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
  /// Sets the removal time to multiple historic process instances asynchronously (batch).  At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricProcessInstancesDto] setRemovalTimeToHistoricProcessInstancesDto:
  Future<Response> setRemovalTimeAsyncWithHttpInfo({ SetRemovalTimeToHistoricProcessInstancesDto? setRemovalTimeToHistoricProcessInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/process-instance/set-removal-time';

    // ignore: prefer_final_locals
    Object? postBody = setRemovalTimeToHistoricProcessInstancesDto;

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
  /// Sets the removal time to multiple historic process instances asynchronously (batch).  At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricProcessInstancesDto] setRemovalTimeToHistoricProcessInstancesDto:
  Future<BatchDto?> setRemovalTimeAsync({ SetRemovalTimeToHistoricProcessInstancesDto? setRemovalTimeToHistoricProcessInstancesDto, }) async {
    final response = await setRemovalTimeAsyncWithHttpInfo( setRemovalTimeToHistoricProcessInstancesDto: setRemovalTimeToHistoricProcessInstancesDto, );
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
