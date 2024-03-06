//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricExternalTaskLogApi {
  HistoricExternalTaskLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get External Task Log Error Details
  ///
  /// Retrieves the corresponding error details of the passed historic external task log by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic external task log to get the error details for.
  Future<Response> getErrorDetailsHistoricExternalTaskLogWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log/{id}/error-details'
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

  /// Get External Task Log Error Details
  ///
  /// Retrieves the corresponding error details of the passed historic external task log by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic external task log to get the error details for.
  Future<Object?> getErrorDetailsHistoricExternalTaskLog(String id,) async {
    final response = await getErrorDetailsHistoricExternalTaskLogWithHttpInfo(id,);
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

  /// Get External Task Log
  ///
  /// Retrieves a historic external task log by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the log entry.
  Future<Response> getHistoricExternalTaskLogWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log/{id}'
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

  /// Get External Task Log
  ///
  /// Retrieves a historic external task log by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the log entry.
  Future<HistoricExternalTaskLogDto?> getHistoricExternalTaskLog(String id,) async {
    final response = await getHistoricExternalTaskLogWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricExternalTaskLogDto',) as HistoricExternalTaskLogDto;
    
    }
    return null;
  }

  /// Get External Task Logs
  ///
  /// Queries for historic external task logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic external task log id.
  ///
  /// * [String] externalTaskId:
  ///   Filter by external task id.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [String] errorMessage:
  ///   Filter by external task exception message.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic external task logs which belong to one of the passed execution ids.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [bool] creationLog:
  ///   Only include creation logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] failureLog:
  ///   Only include failure logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] successLog:
  ///   Only include success logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] deletionLog:
  ///   Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getHistoricExternalTaskLogsWithHttpInfo({ String? logId, String? externalTaskId, String? topicName, String? workerId, String? errorMessage, String? activityIdIn, String? activityInstanceIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? tenantIdIn, bool? withoutTenantId, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (logId != null) {
      queryParams.addAll(_queryParams('', 'logId', logId));
    }
    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (topicName != null) {
      queryParams.addAll(_queryParams('', 'topicName', topicName));
    }
    if (workerId != null) {
      queryParams.addAll(_queryParams('', 'workerId', workerId));
    }
    if (errorMessage != null) {
      queryParams.addAll(_queryParams('', 'errorMessage', errorMessage));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (creationLog != null) {
      queryParams.addAll(_queryParams('', 'creationLog', creationLog));
    }
    if (failureLog != null) {
      queryParams.addAll(_queryParams('', 'failureLog', failureLog));
    }
    if (successLog != null) {
      queryParams.addAll(_queryParams('', 'successLog', successLog));
    }
    if (deletionLog != null) {
      queryParams.addAll(_queryParams('', 'deletionLog', deletionLog));
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

  /// Get External Task Logs
  ///
  /// Queries for historic external task logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic external task log id.
  ///
  /// * [String] externalTaskId:
  ///   Filter by external task id.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [String] errorMessage:
  ///   Filter by external task exception message.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic external task logs which belong to one of the passed execution ids.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [bool] creationLog:
  ///   Only include creation logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] failureLog:
  ///   Only include failure logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] successLog:
  ///   Only include success logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] deletionLog:
  ///   Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<HistoricExternalTaskLogDto>?> getHistoricExternalTaskLogs({ String? logId, String? externalTaskId, String? topicName, String? workerId, String? errorMessage, String? activityIdIn, String? activityInstanceIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? tenantIdIn, bool? withoutTenantId, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricExternalTaskLogsWithHttpInfo( logId: logId, externalTaskId: externalTaskId, topicName: topicName, workerId: workerId, errorMessage: errorMessage, activityIdIn: activityIdIn, activityInstanceIdIn: activityInstanceIdIn, executionIdIn: executionIdIn, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, priorityLowerThanOrEquals: priorityLowerThanOrEquals, priorityHigherThanOrEquals: priorityHigherThanOrEquals, creationLog: creationLog, failureLog: failureLog, successLog: successLog, deletionLog: deletionLog, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricExternalTaskLogDto>') as List)
        .cast<HistoricExternalTaskLogDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get External Task Log Count
  ///
  /// Queries for the number of historic external task logs that fulfill the given parameters. Takes the same parameters as the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic external task log id.
  ///
  /// * [String] externalTaskId:
  ///   Filter by external task id.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [String] errorMessage:
  ///   Filter by external task exception message.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic external task logs which belong to one of the passed execution ids.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [bool] creationLog:
  ///   Only include creation logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] failureLog:
  ///   Only include failure logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] successLog:
  ///   Only include success logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] deletionLog:
  ///   Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricExternalTaskLogsCountWithHttpInfo({ String? logId, String? externalTaskId, String? topicName, String? workerId, String? errorMessage, String? activityIdIn, String? activityInstanceIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? tenantIdIn, bool? withoutTenantId, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (logId != null) {
      queryParams.addAll(_queryParams('', 'logId', logId));
    }
    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (topicName != null) {
      queryParams.addAll(_queryParams('', 'topicName', topicName));
    }
    if (workerId != null) {
      queryParams.addAll(_queryParams('', 'workerId', workerId));
    }
    if (errorMessage != null) {
      queryParams.addAll(_queryParams('', 'errorMessage', errorMessage));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (creationLog != null) {
      queryParams.addAll(_queryParams('', 'creationLog', creationLog));
    }
    if (failureLog != null) {
      queryParams.addAll(_queryParams('', 'failureLog', failureLog));
    }
    if (successLog != null) {
      queryParams.addAll(_queryParams('', 'successLog', successLog));
    }
    if (deletionLog != null) {
      queryParams.addAll(_queryParams('', 'deletionLog', deletionLog));
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

  /// Get External Task Log Count
  ///
  /// Queries for the number of historic external task logs that fulfill the given parameters. Takes the same parameters as the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic external task log id.
  ///
  /// * [String] externalTaskId:
  ///   Filter by external task id.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [String] errorMessage:
  ///   Filter by external task exception message.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic external task logs which belong to one of the passed activity instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic external task logs which belong to one of the passed execution ids.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [bool] creationLog:
  ///   Only include creation logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] failureLog:
  ///   Only include failure logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] successLog:
  ///   Only include success logs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] deletionLog:
  ///   Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getHistoricExternalTaskLogsCount({ String? logId, String? externalTaskId, String? topicName, String? workerId, String? errorMessage, String? activityIdIn, String? activityInstanceIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? tenantIdIn, bool? withoutTenantId, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, }) async {
    final response = await getHistoricExternalTaskLogsCountWithHttpInfo( logId: logId, externalTaskId: externalTaskId, topicName: topicName, workerId: workerId, errorMessage: errorMessage, activityIdIn: activityIdIn, activityInstanceIdIn: activityInstanceIdIn, executionIdIn: executionIdIn, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, priorityLowerThanOrEquals: priorityLowerThanOrEquals, priorityHigherThanOrEquals: priorityHigherThanOrEquals, creationLog: creationLog, failureLog: failureLog, successLog: successLog, deletionLog: deletionLog, );
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

  /// Get External Task Logs (POST)
  ///
  /// Queries for historic external task logs that fulfill the given parameters. This method is slightly more powerful than the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method because it allows filtering by historic external task logs values of the different types `String`, `Number` or `Boolean`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricExternalTaskLogQueryDto] historicExternalTaskLogQueryDto:
  Future<Response> queryHistoricExternalTaskLogsWithHttpInfo({ HistoricExternalTaskLogQueryDto? historicExternalTaskLogQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log';

    // ignore: prefer_final_locals
    Object? postBody = historicExternalTaskLogQueryDto;

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

  /// Get External Task Logs (POST)
  ///
  /// Queries for historic external task logs that fulfill the given parameters. This method is slightly more powerful than the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method because it allows filtering by historic external task logs values of the different types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [HistoricExternalTaskLogQueryDto] historicExternalTaskLogQueryDto:
  Future<List<HistoricExternalTaskLogDto>?> queryHistoricExternalTaskLogs({ HistoricExternalTaskLogQueryDto? historicExternalTaskLogQueryDto, }) async {
    final response = await queryHistoricExternalTaskLogsWithHttpInfo( historicExternalTaskLogQueryDto: historicExternalTaskLogQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricExternalTaskLogDto>') as List)
        .cast<HistoricExternalTaskLogDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get External Task Log Count (POST)
  ///
  /// Queries for the number of historic external task logs that fulfill the given parameters. This method takes the same message body as the [Get External Task Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/post-external-task-log-query/) method and therefore it is slightly more powerful than the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricExternalTaskLogQueryDto] historicExternalTaskLogQueryDto:
  Future<Response> queryHistoricExternalTaskLogsCountWithHttpInfo({ HistoricExternalTaskLogQueryDto? historicExternalTaskLogQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/external-task-log/count';

    // ignore: prefer_final_locals
    Object? postBody = historicExternalTaskLogQueryDto;

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

  /// Get External Task Log Count (POST)
  ///
  /// Queries for the number of historic external task logs that fulfill the given parameters. This method takes the same message body as the [Get External Task Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/post-external-task-log-query/) method and therefore it is slightly more powerful than the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [HistoricExternalTaskLogQueryDto] historicExternalTaskLogQueryDto:
  Future<CountResultDto?> queryHistoricExternalTaskLogsCount({ HistoricExternalTaskLogQueryDto? historicExternalTaskLogQueryDto, }) async {
    final response = await queryHistoricExternalTaskLogsCountWithHttpInfo( historicExternalTaskLogQueryDto: historicExternalTaskLogQueryDto, );
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
}
