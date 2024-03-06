//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class JobApi {
  JobApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Job
  ///
  /// Deletes a job by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be deleted.
  Future<Response> deleteJobWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}'
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

  /// Delete Job
  ///
  /// Deletes a job by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be deleted.
  Future<void> deleteJob(String id,) async {
    final response = await deleteJobWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute Job
  ///
  /// Executes a job by id. **Note:** The execution of the job happens synchronously in the same thread.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be executed.
  Future<Response> executeJobWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/execute'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Execute Job
  ///
  /// Executes a job by id. **Note:** The execution of the job happens synchronously in the same thread.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be executed.
  Future<void> executeJob(String id,) async {
    final response = await executeJobWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Job
  ///
  /// Retrieves a job by id, according to the `Job` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be retrieved.
  Future<Response> getJobWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}'
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

  /// Get Job
  ///
  /// Retrieves a job by id, according to the `Job` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be retrieved.
  Future<JobDto?> getJob(String id,) async {
    final response = await getJobWithHttpInfo(id,);
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

  /// Get Jobs
  ///
  /// Queries for jobs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobIds:
  ///   Filter by a comma-separated list of job ids.
  ///
  /// * [String] jobDefinitionId:
  ///   Only select jobs which exist for the given job definition.
  ///
  /// * [String] processInstanceId:
  ///   Only select jobs which exist for the given process instance.
  ///
  /// * [String] processInstanceIds:
  ///   Only select jobs which exist for the given comma-separated list of process instance ids.
  ///
  /// * [String] executionId:
  ///   Only select jobs which exist for the given execution.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition the jobs run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the jobs run on.
  ///
  /// * [String] activityId:
  ///   Only select jobs which exist for an activity with the given id.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] executable:
  ///   Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] timers:
  ///   Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] messages:
  ///   Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] dueDates:
  ///   Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [String] createTimes:
  ///   Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [bool] withException:
  ///   Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] exceptionMessage:
  ///   Only select jobs that failed due to an exception with the given message.
  ///
  /// * [String] failedActivityId:
  ///   Only select jobs that failed due to an exception at an activity with the given id.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [String] tenantIdIn:
  ///   Only include jobs which belong to one of the passed comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobsWithoutTenantId:
  ///   Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getJobsWithHttpInfo({ String? jobId, String? jobIds, String? jobDefinitionId, String? processInstanceId, String? processInstanceIds, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? activityId, bool? withRetriesLeft, bool? executable, bool? timers, bool? messages, String? dueDates, String? createTimes, bool? withException, String? exceptionMessage, String? failedActivityId, bool? noRetriesLeft, bool? active, bool? suspended, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, String? tenantIdIn, bool? withoutTenantId, bool? includeJobsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobIds != null) {
      queryParams.addAll(_queryParams('', 'jobIds', jobIds));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (withRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'withRetriesLeft', withRetriesLeft));
    }
    if (executable != null) {
      queryParams.addAll(_queryParams('', 'executable', executable));
    }
    if (timers != null) {
      queryParams.addAll(_queryParams('', 'timers', timers));
    }
    if (messages != null) {
      queryParams.addAll(_queryParams('', 'messages', messages));
    }
    if (dueDates != null) {
      queryParams.addAll(_queryParams('', 'dueDates', dueDates));
    }
    if (createTimes != null) {
      queryParams.addAll(_queryParams('', 'createTimes', createTimes));
    }
    if (withException != null) {
      queryParams.addAll(_queryParams('', 'withException', withException));
    }
    if (exceptionMessage != null) {
      queryParams.addAll(_queryParams('', 'exceptionMessage', exceptionMessage));
    }
    if (failedActivityId != null) {
      queryParams.addAll(_queryParams('', 'failedActivityId', failedActivityId));
    }
    if (noRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'noRetriesLeft', noRetriesLeft));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeJobsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeJobsWithoutTenantId', includeJobsWithoutTenantId));
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

  /// Get Jobs
  ///
  /// Queries for jobs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobIds:
  ///   Filter by a comma-separated list of job ids.
  ///
  /// * [String] jobDefinitionId:
  ///   Only select jobs which exist for the given job definition.
  ///
  /// * [String] processInstanceId:
  ///   Only select jobs which exist for the given process instance.
  ///
  /// * [String] processInstanceIds:
  ///   Only select jobs which exist for the given comma-separated list of process instance ids.
  ///
  /// * [String] executionId:
  ///   Only select jobs which exist for the given execution.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition the jobs run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the jobs run on.
  ///
  /// * [String] activityId:
  ///   Only select jobs which exist for an activity with the given id.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] executable:
  ///   Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] timers:
  ///   Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] messages:
  ///   Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] dueDates:
  ///   Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [String] createTimes:
  ///   Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [bool] withException:
  ///   Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] exceptionMessage:
  ///   Only select jobs that failed due to an exception with the given message.
  ///
  /// * [String] failedActivityId:
  ///   Only select jobs that failed due to an exception at an activity with the given id.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [String] tenantIdIn:
  ///   Only include jobs which belong to one of the passed comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobsWithoutTenantId:
  ///   Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<JobDto>?> getJobs({ String? jobId, String? jobIds, String? jobDefinitionId, String? processInstanceId, String? processInstanceIds, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? activityId, bool? withRetriesLeft, bool? executable, bool? timers, bool? messages, String? dueDates, String? createTimes, bool? withException, String? exceptionMessage, String? failedActivityId, bool? noRetriesLeft, bool? active, bool? suspended, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, String? tenantIdIn, bool? withoutTenantId, bool? includeJobsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getJobsWithHttpInfo( jobId: jobId, jobIds: jobIds, jobDefinitionId: jobDefinitionId, processInstanceId: processInstanceId, processInstanceIds: processInstanceIds, executionId: executionId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, activityId: activityId, withRetriesLeft: withRetriesLeft, executable: executable, timers: timers, messages: messages, dueDates: dueDates, createTimes: createTimes, withException: withException, exceptionMessage: exceptionMessage, failedActivityId: failedActivityId, noRetriesLeft: noRetriesLeft, active: active, suspended: suspended, priorityLowerThanOrEquals: priorityLowerThanOrEquals, priorityHigherThanOrEquals: priorityHigherThanOrEquals, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeJobsWithoutTenantId: includeJobsWithoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
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

  /// Get Job Count
  ///
  /// Queries for the number of jobs that fulfill given parameters. Takes the same parameters as the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobIds:
  ///   Filter by a comma-separated list of job ids.
  ///
  /// * [String] jobDefinitionId:
  ///   Only select jobs which exist for the given job definition.
  ///
  /// * [String] processInstanceId:
  ///   Only select jobs which exist for the given process instance.
  ///
  /// * [String] processInstanceIds:
  ///   Only select jobs which exist for the given comma-separated list of process instance ids.
  ///
  /// * [String] executionId:
  ///   Only select jobs which exist for the given execution.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition the jobs run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the jobs run on.
  ///
  /// * [String] activityId:
  ///   Only select jobs which exist for an activity with the given id.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] executable:
  ///   Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] timers:
  ///   Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] messages:
  ///   Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] dueDates:
  ///   Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [String] createTimes:
  ///   Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [bool] withException:
  ///   Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] exceptionMessage:
  ///   Only select jobs that failed due to an exception with the given message.
  ///
  /// * [String] failedActivityId:
  ///   Only select jobs that failed due to an exception at an activity with the given id.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [String] tenantIdIn:
  ///   Only include jobs which belong to one of the passed comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobsWithoutTenantId:
  ///   Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getJobsCountWithHttpInfo({ String? jobId, String? jobIds, String? jobDefinitionId, String? processInstanceId, String? processInstanceIds, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? activityId, bool? withRetriesLeft, bool? executable, bool? timers, bool? messages, String? dueDates, String? createTimes, bool? withException, String? exceptionMessage, String? failedActivityId, bool? noRetriesLeft, bool? active, bool? suspended, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, String? tenantIdIn, bool? withoutTenantId, bool? includeJobsWithoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobIds != null) {
      queryParams.addAll(_queryParams('', 'jobIds', jobIds));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (withRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'withRetriesLeft', withRetriesLeft));
    }
    if (executable != null) {
      queryParams.addAll(_queryParams('', 'executable', executable));
    }
    if (timers != null) {
      queryParams.addAll(_queryParams('', 'timers', timers));
    }
    if (messages != null) {
      queryParams.addAll(_queryParams('', 'messages', messages));
    }
    if (dueDates != null) {
      queryParams.addAll(_queryParams('', 'dueDates', dueDates));
    }
    if (createTimes != null) {
      queryParams.addAll(_queryParams('', 'createTimes', createTimes));
    }
    if (withException != null) {
      queryParams.addAll(_queryParams('', 'withException', withException));
    }
    if (exceptionMessage != null) {
      queryParams.addAll(_queryParams('', 'exceptionMessage', exceptionMessage));
    }
    if (failedActivityId != null) {
      queryParams.addAll(_queryParams('', 'failedActivityId', failedActivityId));
    }
    if (noRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'noRetriesLeft', noRetriesLeft));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeJobsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeJobsWithoutTenantId', includeJobsWithoutTenantId));
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

  /// Get Job Count
  ///
  /// Queries for the number of jobs that fulfill given parameters. Takes the same parameters as the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobIds:
  ///   Filter by a comma-separated list of job ids.
  ///
  /// * [String] jobDefinitionId:
  ///   Only select jobs which exist for the given job definition.
  ///
  /// * [String] processInstanceId:
  ///   Only select jobs which exist for the given process instance.
  ///
  /// * [String] processInstanceIds:
  ///   Only select jobs which exist for the given comma-separated list of process instance ids.
  ///
  /// * [String] executionId:
  ///   Only select jobs which exist for the given execution.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition the jobs run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the jobs run on.
  ///
  /// * [String] activityId:
  ///   Only select jobs which exist for an activity with the given id.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] executable:
  ///   Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] timers:
  ///   Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] messages:
  ///   Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] dueDates:
  ///   Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [String] createTimes:
  ///   Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
  ///
  /// * [bool] withException:
  ///   Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] exceptionMessage:
  ///   Only select jobs that failed due to an exception with the given message.
  ///
  /// * [String] failedActivityId:
  ///   Only select jobs that failed due to an exception at an activity with the given id.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [String] tenantIdIn:
  ///   Only include jobs which belong to one of the passed comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobsWithoutTenantId:
  ///   Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getJobsCount({ String? jobId, String? jobIds, String? jobDefinitionId, String? processInstanceId, String? processInstanceIds, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? activityId, bool? withRetriesLeft, bool? executable, bool? timers, bool? messages, String? dueDates, String? createTimes, bool? withException, String? exceptionMessage, String? failedActivityId, bool? noRetriesLeft, bool? active, bool? suspended, int? priorityLowerThanOrEquals, int? priorityHigherThanOrEquals, String? tenantIdIn, bool? withoutTenantId, bool? includeJobsWithoutTenantId, }) async {
    final response = await getJobsCountWithHttpInfo( jobId: jobId, jobIds: jobIds, jobDefinitionId: jobDefinitionId, processInstanceId: processInstanceId, processInstanceIds: processInstanceIds, executionId: executionId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, activityId: activityId, withRetriesLeft: withRetriesLeft, executable: executable, timers: timers, messages: messages, dueDates: dueDates, createTimes: createTimes, withException: withException, exceptionMessage: exceptionMessage, failedActivityId: failedActivityId, noRetriesLeft: noRetriesLeft, active: active, suspended: suspended, priorityLowerThanOrEquals: priorityLowerThanOrEquals, priorityHigherThanOrEquals: priorityHigherThanOrEquals, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeJobsWithoutTenantId: includeJobsWithoutTenantId, );
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

  /// Get Exception Stacktrace
  ///
  /// Retrieves the exception stacktrace corresponding to the passed job id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to get the exception stacktrace for.
  Future<Response> getStacktraceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/stacktrace'
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

  /// Get Exception Stacktrace
  ///
  /// Retrieves the exception stacktrace corresponding to the passed job id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to get the exception stacktrace for.
  Future<Object?> getStacktrace(String id,) async {
    final response = await getStacktraceWithHttpInfo(id,);
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

  /// Get Jobs (POST)
  ///
  /// Queries for jobs that fulfill given parameters. This method is slightly more powerful than the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method because it allows filtering by multiple jobs of types `String`, `Number` or `Boolean`.
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
  /// * [JobQueryDto] jobQueryDto:
  Future<Response> queryJobsWithHttpInfo({ int? firstResult, int? maxResults, JobQueryDto? jobQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job';

    // ignore: prefer_final_locals
    Object? postBody = jobQueryDto;

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

  /// Get Jobs (POST)
  ///
  /// Queries for jobs that fulfill given parameters. This method is slightly more powerful than the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method because it allows filtering by multiple jobs of types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [JobQueryDto] jobQueryDto:
  Future<List<JobDto>?> queryJobs({ int? firstResult, int? maxResults, JobQueryDto? jobQueryDto, }) async {
    final response = await queryJobsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, jobQueryDto: jobQueryDto, );
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

  /// Get Job Count (POST)
  ///
  /// Queries for jobs that fulfill given parameters. This method takes the same message body as the [Get Jobs POST](https://docs.camunda.org/manual/7.20/reference/rest/job/post- query/) method and therefore it is slightly more powerful than the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JobQueryDto] jobQueryDto:
  Future<Response> queryJobsCountWithHttpInfo({ JobQueryDto? jobQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/count';

    // ignore: prefer_final_locals
    Object? postBody = jobQueryDto;

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

  /// Get Job Count (POST)
  ///
  /// Queries for jobs that fulfill given parameters. This method takes the same message body as the [Get Jobs POST](https://docs.camunda.org/manual/7.20/reference/rest/job/post- query/) method and therefore it is slightly more powerful than the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [JobQueryDto] jobQueryDto:
  Future<CountResultDto?> queryJobsCount({ JobQueryDto? jobQueryDto, }) async {
    final response = await queryJobsCountWithHttpInfo( jobQueryDto: jobQueryDto, );
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

  /// Recalculate Job Due Date
  ///
  /// Recalculates the due date of a job by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [bool] creationDateBased:
  ///   Recalculate the due date based on the creation date of the job or the current date. Value may only be `false`, as `true` is the default behavior. 
  Future<Response> recalculateDuedateWithHttpInfo(String id, { bool? creationDateBased, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/duedate/recalculate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (creationDateBased != null) {
      queryParams.addAll(_queryParams('', 'creationDateBased', creationDateBased));
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

  /// Recalculate Job Due Date
  ///
  /// Recalculates the due date of a job by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [bool] creationDateBased:
  ///   Recalculate the due date based on the creation date of the job or the current date. Value may only be `false`, as `true` is the default behavior. 
  Future<void> recalculateDuedate(String id, { bool? creationDateBased, }) async {
    final response = await recalculateDuedateWithHttpInfo(id,  creationDateBased: creationDateBased, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Due Date
  ///
  /// Updates the due date of a job by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [JobDuedateDto] jobDuedateDto:
  Future<Response> setJobDuedateWithHttpInfo(String id, { JobDuedateDto? jobDuedateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/duedate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobDuedateDto;

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

  /// Set Job Due Date
  ///
  /// Updates the due date of a job by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [JobDuedateDto] jobDuedateDto:
  Future<void> setJobDuedate(String id, { JobDuedateDto? jobDuedateDto, }) async {
    final response = await setJobDuedateWithHttpInfo(id,  jobDuedateDto: jobDuedateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Priority
  ///
  /// Sets the execution priority of a job by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [PriorityDto] priorityDto:
  Future<Response> setJobPriorityWithHttpInfo(String id, { PriorityDto? priorityDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/priority'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = priorityDto;

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

  /// Set Job Priority
  ///
  /// Sets the execution priority of a job by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [PriorityDto] priorityDto:
  Future<void> setJobPriority(String id, { PriorityDto? priorityDto, }) async {
    final response = await setJobPriorityWithHttpInfo(id,  priorityDto: priorityDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Retries
  ///
  /// Sets the retries of the job to the given number of retries by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [JobRetriesDto] jobRetriesDto:
  Future<Response> setJobRetriesWithHttpInfo(String id, { JobRetriesDto? jobRetriesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/retries'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobRetriesDto;

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

  /// Set Job Retries
  ///
  /// Sets the retries of the job to the given number of retries by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to be updated.
  ///
  /// * [JobRetriesDto] jobRetriesDto:
  Future<void> setJobRetries(String id, { JobRetriesDto? jobRetriesDto, }) async {
    final response = await setJobRetriesWithHttpInfo(id,  jobRetriesDto: jobRetriesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Retries Async (POST)
  ///
  /// Create a batch to set retries of jobs asynchronously.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesDto] setJobRetriesDto:
  Future<Response> setJobRetriesAsyncOperationWithHttpInfo({ SetJobRetriesDto? setJobRetriesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/retries';

    // ignore: prefer_final_locals
    Object? postBody = setJobRetriesDto;

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

  /// Set Job Retries Async (POST)
  ///
  /// Create a batch to set retries of jobs asynchronously.
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesDto] setJobRetriesDto:
  Future<BatchDto?> setJobRetriesAsyncOperation({ SetJobRetriesDto? setJobRetriesDto, }) async {
    final response = await setJobRetriesAsyncOperationWithHttpInfo( setJobRetriesDto: setJobRetriesDto, );
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

  /// Activate/Suspend Job By Id
  ///
  /// Activates or suspends a given job by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<Response> updateJobSuspensionStateWithHttpInfo(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/{id}/suspended'
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

  /// Activate/Suspend Job By Id
  ///
  /// Activates or suspends a given job by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<void> updateJobSuspensionState(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    final response = await updateJobSuspensionStateWithHttpInfo(id,  suspensionStateDto: suspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend Jobs
  ///
  /// Activates or suspends jobs matching the given criterion. This can only be on of: * `jobDefinitionId` * `processDefinitionId` * `processInstanceId` * `processDefinitionKey`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JobSuspensionStateDto] jobSuspensionStateDto:
  Future<Response> updateSuspensionStateByWithHttpInfo({ JobSuspensionStateDto? jobSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job/suspended';

    // ignore: prefer_final_locals
    Object? postBody = jobSuspensionStateDto;

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

  /// Activate/Suspend Jobs
  ///
  /// Activates or suspends jobs matching the given criterion. This can only be on of: * `jobDefinitionId` * `processDefinitionId` * `processInstanceId` * `processDefinitionKey`
  ///
  /// Parameters:
  ///
  /// * [JobSuspensionStateDto] jobSuspensionStateDto:
  Future<void> updateSuspensionStateBy({ JobSuspensionStateDto? jobSuspensionStateDto, }) async {
    final response = await updateSuspensionStateByWithHttpInfo( jobSuspensionStateDto: jobSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
