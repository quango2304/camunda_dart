//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricJobLogApi {
  HistoricJobLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Job Log
  ///
  /// Retrieves a historic job log by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the log entry.
  Future<Response> getHistoricJobLogWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log/{id}'
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

  /// Get Job Log
  ///
  /// Retrieves a historic job log by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the log entry.
  Future<HistoricJobLogDto?> getHistoricJobLog(String id,) async {
    final response = await getHistoricJobLogWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricJobLogDto',) as HistoricJobLogDto;
    
    }
    return null;
  }

  /// Get Job Logs
  ///
  /// Queries for historic job logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic job log id.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobExceptionMessage:
  ///   Filter by job exception message.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] jobDefinitionType:
  ///   Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  ///
  /// * [String] jobDefinitionConfiguration:
  ///   Filter by job definition configuration.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic job logs which belong to one of the passed activity ids.
  ///
  /// * [String] failedActivityIdIn:
  ///   Only include historic job logs which belong to failures of one of the passed activity ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic job logs which belong to one of the passed execution ids.
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
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] hostname:
  ///   Filter by hostname.
  ///
  /// * [int] jobPriorityLowerThanOrEquals:
  ///   Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] jobPriorityHigherThanOrEquals:
  ///   Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
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
  Future<Response> getHistoricJobLogsWithHttpInfo({ String? logId, String? jobId, String? jobExceptionMessage, String? jobDefinitionId, String? jobDefinitionType, String? jobDefinitionConfiguration, String? activityIdIn, String? failedActivityIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? deploymentId, String? tenantIdIn, bool? withoutTenantId, String? hostname, int? jobPriorityLowerThanOrEquals, int? jobPriorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (logId != null) {
      queryParams.addAll(_queryParams('', 'logId', logId));
    }
    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobExceptionMessage != null) {
      queryParams.addAll(_queryParams('', 'jobExceptionMessage', jobExceptionMessage));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (jobDefinitionType != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionType', jobDefinitionType));
    }
    if (jobDefinitionConfiguration != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionConfiguration', jobDefinitionConfiguration));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (failedActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'failedActivityIdIn', failedActivityIdIn));
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
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (jobPriorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'jobPriorityLowerThanOrEquals', jobPriorityLowerThanOrEquals));
    }
    if (jobPriorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'jobPriorityHigherThanOrEquals', jobPriorityHigherThanOrEquals));
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

  /// Get Job Logs
  ///
  /// Queries for historic job logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic job log id.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobExceptionMessage:
  ///   Filter by job exception message.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] jobDefinitionType:
  ///   Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  ///
  /// * [String] jobDefinitionConfiguration:
  ///   Filter by job definition configuration.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic job logs which belong to one of the passed activity ids.
  ///
  /// * [String] failedActivityIdIn:
  ///   Only include historic job logs which belong to failures of one of the passed activity ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic job logs which belong to one of the passed execution ids.
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
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] hostname:
  ///   Filter by hostname.
  ///
  /// * [int] jobPriorityLowerThanOrEquals:
  ///   Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] jobPriorityHigherThanOrEquals:
  ///   Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
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
  Future<List<HistoricJobLogDto>?> getHistoricJobLogs({ String? logId, String? jobId, String? jobExceptionMessage, String? jobDefinitionId, String? jobDefinitionType, String? jobDefinitionConfiguration, String? activityIdIn, String? failedActivityIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? deploymentId, String? tenantIdIn, bool? withoutTenantId, String? hostname, int? jobPriorityLowerThanOrEquals, int? jobPriorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricJobLogsWithHttpInfo( logId: logId, jobId: jobId, jobExceptionMessage: jobExceptionMessage, jobDefinitionId: jobDefinitionId, jobDefinitionType: jobDefinitionType, jobDefinitionConfiguration: jobDefinitionConfiguration, activityIdIn: activityIdIn, failedActivityIdIn: failedActivityIdIn, executionIdIn: executionIdIn, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, deploymentId: deploymentId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, hostname: hostname, jobPriorityLowerThanOrEquals: jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals: jobPriorityHigherThanOrEquals, creationLog: creationLog, failureLog: failureLog, successLog: successLog, deletionLog: deletionLog, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricJobLogDto>') as List)
        .cast<HistoricJobLogDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Job Log Count
  ///
  /// Queries for the number of historic job logs that fulfill the given parameters. Takes the same parameters as the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic job log id.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobExceptionMessage:
  ///   Filter by job exception message.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] jobDefinitionType:
  ///   Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  ///
  /// * [String] jobDefinitionConfiguration:
  ///   Filter by job definition configuration.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic job logs which belong to one of the passed activity ids.
  ///
  /// * [String] failedActivityIdIn:
  ///   Only include historic job logs which belong to failures of one of the passed activity ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic job logs which belong to one of the passed execution ids.
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
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] hostname:
  ///   Filter by hostname.
  ///
  /// * [int] jobPriorityLowerThanOrEquals:
  ///   Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] jobPriorityHigherThanOrEquals:
  ///   Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
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
  Future<Response> getHistoricJobLogsCountWithHttpInfo({ String? logId, String? jobId, String? jobExceptionMessage, String? jobDefinitionId, String? jobDefinitionType, String? jobDefinitionConfiguration, String? activityIdIn, String? failedActivityIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? deploymentId, String? tenantIdIn, bool? withoutTenantId, String? hostname, int? jobPriorityLowerThanOrEquals, int? jobPriorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (logId != null) {
      queryParams.addAll(_queryParams('', 'logId', logId));
    }
    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobExceptionMessage != null) {
      queryParams.addAll(_queryParams('', 'jobExceptionMessage', jobExceptionMessage));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (jobDefinitionType != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionType', jobDefinitionType));
    }
    if (jobDefinitionConfiguration != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionConfiguration', jobDefinitionConfiguration));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (failedActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'failedActivityIdIn', failedActivityIdIn));
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
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (hostname != null) {
      queryParams.addAll(_queryParams('', 'hostname', hostname));
    }
    if (jobPriorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'jobPriorityLowerThanOrEquals', jobPriorityLowerThanOrEquals));
    }
    if (jobPriorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'jobPriorityHigherThanOrEquals', jobPriorityHigherThanOrEquals));
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

  /// Get Job Log Count
  ///
  /// Queries for the number of historic job logs that fulfill the given parameters. Takes the same parameters as the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] logId:
  ///   Filter by historic job log id.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobExceptionMessage:
  ///   Filter by job exception message.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] jobDefinitionType:
  ///   Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
  ///
  /// * [String] jobDefinitionConfiguration:
  ///   Filter by job definition configuration.
  ///
  /// * [String] activityIdIn:
  ///   Only include historic job logs which belong to one of the passed activity ids.
  ///
  /// * [String] failedActivityIdIn:
  ///   Only include historic job logs which belong to failures of one of the passed activity ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic job logs which belong to one of the passed execution ids.
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
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] hostname:
  ///   Filter by hostname.
  ///
  /// * [int] jobPriorityLowerThanOrEquals:
  ///   Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] jobPriorityHigherThanOrEquals:
  ///   Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
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
  Future<CountResultDto?> getHistoricJobLogsCount({ String? logId, String? jobId, String? jobExceptionMessage, String? jobDefinitionId, String? jobDefinitionType, String? jobDefinitionConfiguration, String? activityIdIn, String? failedActivityIdIn, String? executionIdIn, String? processInstanceId, String? processDefinitionId, String? processDefinitionKey, String? deploymentId, String? tenantIdIn, bool? withoutTenantId, String? hostname, int? jobPriorityLowerThanOrEquals, int? jobPriorityHigherThanOrEquals, bool? creationLog, bool? failureLog, bool? successLog, bool? deletionLog, }) async {
    final response = await getHistoricJobLogsCountWithHttpInfo( logId: logId, jobId: jobId, jobExceptionMessage: jobExceptionMessage, jobDefinitionId: jobDefinitionId, jobDefinitionType: jobDefinitionType, jobDefinitionConfiguration: jobDefinitionConfiguration, activityIdIn: activityIdIn, failedActivityIdIn: failedActivityIdIn, executionIdIn: executionIdIn, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, deploymentId: deploymentId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, hostname: hostname, jobPriorityLowerThanOrEquals: jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals: jobPriorityHigherThanOrEquals, creationLog: creationLog, failureLog: failureLog, successLog: successLog, deletionLog: deletionLog, );
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

  /// Get Job Log Exception Stacktrace
  ///
  /// Retrieves the corresponding exception stacktrace to the passed historic job log by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic job log to get the exception stacktrace for.
  Future<Response> getStacktraceHistoricJobLogWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log/{id}/stacktrace'
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

  /// Get Job Log Exception Stacktrace
  ///
  /// Retrieves the corresponding exception stacktrace to the passed historic job log by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic job log to get the exception stacktrace for.
  Future<Object?> getStacktraceHistoricJobLog(String id,) async {
    final response = await getStacktraceHistoricJobLogWithHttpInfo(id,);
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

  /// Get Job Logs (POST)
  ///
  /// Queries for historic job logs that fulfill the given parameters. This method is slightly more powerful than the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method because it allows filtering by historic job logs values of the different types `String`, `Number` or `Boolean`.
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
  /// * [HistoricJobLogQueryDto] historicJobLogQueryDto:
  Future<Response> queryHistoricJobLogsWithHttpInfo({ int? firstResult, int? maxResults, HistoricJobLogQueryDto? historicJobLogQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log';

    // ignore: prefer_final_locals
    Object? postBody = historicJobLogQueryDto;

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

  /// Get Job Logs (POST)
  ///
  /// Queries for historic job logs that fulfill the given parameters. This method is slightly more powerful than the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method because it allows filtering by historic job logs values of the different types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricJobLogQueryDto] historicJobLogQueryDto:
  Future<List<HistoricJobLogDto>?> queryHistoricJobLogs({ int? firstResult, int? maxResults, HistoricJobLogQueryDto? historicJobLogQueryDto, }) async {
    final response = await queryHistoricJobLogsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, historicJobLogQueryDto: historicJobLogQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricJobLogDto>') as List)
        .cast<HistoricJobLogDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Job Log Count (POST)
  ///
  /// Queries for the number of historic job logs that fulfill the given parameters. This method takes the same message body as the [Get Job Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/post-job-log-query/) method and therefore it is slightly more powerful than the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricJobLogQueryDto] historicJobLogQueryDto:
  Future<Response> queryHistoricJobLogsCountWithHttpInfo({ HistoricJobLogQueryDto? historicJobLogQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/job-log/count';

    // ignore: prefer_final_locals
    Object? postBody = historicJobLogQueryDto;

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

  /// Get Job Log Count (POST)
  ///
  /// Queries for the number of historic job logs that fulfill the given parameters. This method takes the same message body as the [Get Job Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/post-job-log-query/) method and therefore it is slightly more powerful than the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [HistoricJobLogQueryDto] historicJobLogQueryDto:
  Future<CountResultDto?> queryHistoricJobLogsCount({ HistoricJobLogQueryDto? historicJobLogQueryDto, }) async {
    final response = await queryHistoricJobLogsCountWithHttpInfo( historicJobLogQueryDto: historicJobLogQueryDto, );
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
