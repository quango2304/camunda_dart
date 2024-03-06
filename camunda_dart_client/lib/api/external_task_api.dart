//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExternalTaskApi {
  ExternalTaskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Complete
  ///
  /// Completes an external task by id and updates process variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to complete.
  ///
  /// * [CompleteExternalTaskDto] completeExternalTaskDto:
  Future<Response> completeExternalTaskResourceWithHttpInfo(String id, { CompleteExternalTaskDto? completeExternalTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/complete'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = completeExternalTaskDto;

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

  /// Complete
  ///
  /// Completes an external task by id and updates process variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to complete.
  ///
  /// * [CompleteExternalTaskDto] completeExternalTaskDto:
  Future<void> completeExternalTaskResource(String id, { CompleteExternalTaskDto? completeExternalTaskDto, }) async {
    final response = await completeExternalTaskResourceWithHttpInfo(id,  completeExternalTaskDto: completeExternalTaskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Extend Lock
  ///
  /// Extends the timeout of the lock by a given amount of time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task.
  ///
  /// * [ExtendLockOnExternalTaskDto] extendLockOnExternalTaskDto:
  Future<Response> extendLockWithHttpInfo(String id, { ExtendLockOnExternalTaskDto? extendLockOnExternalTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/extendLock'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = extendLockOnExternalTaskDto;

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

  /// Extend Lock
  ///
  /// Extends the timeout of the lock by a given amount of time.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task.
  ///
  /// * [ExtendLockOnExternalTaskDto] extendLockOnExternalTaskDto:
  Future<void> extendLock(String id, { ExtendLockOnExternalTaskDto? extendLockOnExternalTaskDto, }) async {
    final response = await extendLockWithHttpInfo(id,  extendLockOnExternalTaskDto: extendLockOnExternalTaskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch and Lock
  ///
  /// Fetches and locks a specific number of external tasks for execution by a worker. Query can be restricted to specific task topics and for each task topic an individual lock time can be provided.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FetchExternalTasksDto] fetchExternalTasksDto:
  Future<Response> fetchAndLockWithHttpInfo({ FetchExternalTasksDto? fetchExternalTasksDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/fetchAndLock';

    // ignore: prefer_final_locals
    Object? postBody = fetchExternalTasksDto;

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

  /// Fetch and Lock
  ///
  /// Fetches and locks a specific number of external tasks for execution by a worker. Query can be restricted to specific task topics and for each task topic an individual lock time can be provided.
  ///
  /// Parameters:
  ///
  /// * [FetchExternalTasksDto] fetchExternalTasksDto:
  Future<List<LockedExternalTaskDto>?> fetchAndLock({ FetchExternalTasksDto? fetchExternalTasksDto, }) async {
    final response = await fetchAndLockWithHttpInfo( fetchExternalTasksDto: fetchExternalTasksDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LockedExternalTaskDto>') as List)
        .cast<LockedExternalTaskDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get
  ///
  /// Retrieves an external task by id, corresponding to the `ExternalTask` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to be retrieved.
  Future<Response> getExternalTaskWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}'
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
  /// Retrieves an external task by id, corresponding to the `ExternalTask` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to be retrieved.
  Future<ExternalTaskDto?> getExternalTask(String id,) async {
    final response = await getExternalTaskWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExternalTaskDto',) as ExternalTaskDto;
    
    }
    return null;
  }

  /// Get Error Details
  ///
  /// Retrieves the error details in the context of a running external task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task for which the error details should be retrieved.
  Future<Response> getExternalTaskErrorDetailsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/errorDetails'
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

  /// Get Error Details
  ///
  /// Retrieves the error details in the context of a running external task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task for which the error details should be retrieved.
  Future<String?> getExternalTaskErrorDetails(String id,) async {
    final response = await getExternalTaskErrorDetailsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Queries for the external tasks that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get External Task Count](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalTaskId:
  ///   Filter by an external task's id.
  ///
  /// * [String] externalTaskIdIn:
  ///   Filter by the comma-separated list of external task ids.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [bool] locked:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] notLocked:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [DateTime] lockExpirationAfter:
  ///   Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] lockExpirationBefore:
  ///   Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity that an external task is created for.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the comma-separated list of ids of the activities that an external task is created for.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that an external task belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance that an external task belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Filter by a comma-separated list of process instance ids that an external task may belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition that an external task belongs to.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
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
  Future<Response> getExternalTasksWithHttpInfo({ String? externalTaskId, String? externalTaskIdIn, String? topicName, String? workerId, bool? locked, bool? notLocked, bool? withRetriesLeft, bool? noRetriesLeft, DateTime? lockExpirationAfter, DateTime? lockExpirationBefore, String? activityId, String? activityIdIn, String? executionId, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? tenantIdIn, bool? active, bool? suspended, int? priorityHigherThanOrEquals, int? priorityLowerThanOrEquals, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (externalTaskIdIn != null) {
      queryParams.addAll(_queryParams('', 'externalTaskIdIn', externalTaskIdIn));
    }
    if (topicName != null) {
      queryParams.addAll(_queryParams('', 'topicName', topicName));
    }
    if (workerId != null) {
      queryParams.addAll(_queryParams('', 'workerId', workerId));
    }
    if (locked != null) {
      queryParams.addAll(_queryParams('', 'locked', locked));
    }
    if (notLocked != null) {
      queryParams.addAll(_queryParams('', 'notLocked', notLocked));
    }
    if (withRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'withRetriesLeft', withRetriesLeft));
    }
    if (noRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'noRetriesLeft', noRetriesLeft));
    }
    if (lockExpirationAfter != null) {
      queryParams.addAll(_queryParams('', 'lockExpirationAfter', lockExpirationAfter));
    }
    if (lockExpirationBefore != null) {
      queryParams.addAll(_queryParams('', 'lockExpirationBefore', lockExpirationBefore));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
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

  /// Get List
  ///
  /// Queries for the external tasks that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get External Task Count](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] externalTaskId:
  ///   Filter by an external task's id.
  ///
  /// * [String] externalTaskIdIn:
  ///   Filter by the comma-separated list of external task ids.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [bool] locked:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] notLocked:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [DateTime] lockExpirationAfter:
  ///   Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] lockExpirationBefore:
  ///   Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity that an external task is created for.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the comma-separated list of ids of the activities that an external task is created for.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that an external task belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance that an external task belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Filter by a comma-separated list of process instance ids that an external task may belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition that an external task belongs to.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
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
  Future<List<ExternalTaskDto>?> getExternalTasks({ String? externalTaskId, String? externalTaskIdIn, String? topicName, String? workerId, bool? locked, bool? notLocked, bool? withRetriesLeft, bool? noRetriesLeft, DateTime? lockExpirationAfter, DateTime? lockExpirationBefore, String? activityId, String? activityIdIn, String? executionId, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? tenantIdIn, bool? active, bool? suspended, int? priorityHigherThanOrEquals, int? priorityLowerThanOrEquals, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getExternalTasksWithHttpInfo( externalTaskId: externalTaskId, externalTaskIdIn: externalTaskIdIn, topicName: topicName, workerId: workerId, locked: locked, notLocked: notLocked, withRetriesLeft: withRetriesLeft, noRetriesLeft: noRetriesLeft, lockExpirationAfter: lockExpirationAfter, lockExpirationBefore: lockExpirationBefore, activityId: activityId, activityIdIn: activityIdIn, executionId: executionId, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processDefinitionId: processDefinitionId, tenantIdIn: tenantIdIn, active: active, suspended: suspended, priorityHigherThanOrEquals: priorityHigherThanOrEquals, priorityLowerThanOrEquals: priorityLowerThanOrEquals, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExternalTaskDto>') as List)
        .cast<ExternalTaskDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of external tasks that fulfill given parameters. Takes the same parameters as the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] externalTaskId:
  ///   Filter by an external task's id.
  ///
  /// * [String] externalTaskIdIn:
  ///   Filter by the comma-separated list of external task ids.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [bool] locked:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] notLocked:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [DateTime] lockExpirationAfter:
  ///   Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] lockExpirationBefore:
  ///   Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity that an external task is created for.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the comma-separated list of ids of the activities that an external task is created for.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that an external task belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance that an external task belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Filter by a comma-separated list of process instance ids that an external task may belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition that an external task belongs to.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  Future<Response> getExternalTasksCountWithHttpInfo({ String? externalTaskId, String? externalTaskIdIn, String? topicName, String? workerId, bool? locked, bool? notLocked, bool? withRetriesLeft, bool? noRetriesLeft, DateTime? lockExpirationAfter, DateTime? lockExpirationBefore, String? activityId, String? activityIdIn, String? executionId, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? tenantIdIn, bool? active, bool? suspended, int? priorityHigherThanOrEquals, int? priorityLowerThanOrEquals, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (externalTaskIdIn != null) {
      queryParams.addAll(_queryParams('', 'externalTaskIdIn', externalTaskIdIn));
    }
    if (topicName != null) {
      queryParams.addAll(_queryParams('', 'topicName', topicName));
    }
    if (workerId != null) {
      queryParams.addAll(_queryParams('', 'workerId', workerId));
    }
    if (locked != null) {
      queryParams.addAll(_queryParams('', 'locked', locked));
    }
    if (notLocked != null) {
      queryParams.addAll(_queryParams('', 'notLocked', notLocked));
    }
    if (withRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'withRetriesLeft', withRetriesLeft));
    }
    if (noRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'noRetriesLeft', noRetriesLeft));
    }
    if (lockExpirationAfter != null) {
      queryParams.addAll(_queryParams('', 'lockExpirationAfter', lockExpirationAfter));
    }
    if (lockExpirationBefore != null) {
      queryParams.addAll(_queryParams('', 'lockExpirationBefore', lockExpirationBefore));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (priorityHigherThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityHigherThanOrEquals', priorityHigherThanOrEquals));
    }
    if (priorityLowerThanOrEquals != null) {
      queryParams.addAll(_queryParams('', 'priorityLowerThanOrEquals', priorityLowerThanOrEquals));
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
  /// Queries for the number of external tasks that fulfill given parameters. Takes the same parameters as the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] externalTaskId:
  ///   Filter by an external task's id.
  ///
  /// * [String] externalTaskIdIn:
  ///   Filter by the comma-separated list of external task ids.
  ///
  /// * [String] topicName:
  ///   Filter by an external task topic.
  ///
  /// * [String] workerId:
  ///   Filter by the id of the worker that the task was most recently locked by.
  ///
  /// * [bool] locked:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] notLocked:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] noRetriesLeft:
  ///   Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [DateTime] lockExpirationAfter:
  ///   Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] lockExpirationBefore:
  ///   Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity that an external task is created for.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the comma-separated list of ids of the activities that an external task is created for.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that an external task belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance that an external task belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Filter by a comma-separated list of process instance ids that an external task may belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the id of the process definition that an external task belongs to.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
  ///
  /// * [int] priorityHigherThanOrEquals:
  ///   Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
  ///
  /// * [int] priorityLowerThanOrEquals:
  ///   Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
  Future<CountResultDto?> getExternalTasksCount({ String? externalTaskId, String? externalTaskIdIn, String? topicName, String? workerId, bool? locked, bool? notLocked, bool? withRetriesLeft, bool? noRetriesLeft, DateTime? lockExpirationAfter, DateTime? lockExpirationBefore, String? activityId, String? activityIdIn, String? executionId, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? tenantIdIn, bool? active, bool? suspended, int? priorityHigherThanOrEquals, int? priorityLowerThanOrEquals, }) async {
    final response = await getExternalTasksCountWithHttpInfo( externalTaskId: externalTaskId, externalTaskIdIn: externalTaskIdIn, topicName: topicName, workerId: workerId, locked: locked, notLocked: notLocked, withRetriesLeft: withRetriesLeft, noRetriesLeft: noRetriesLeft, lockExpirationAfter: lockExpirationAfter, lockExpirationBefore: lockExpirationBefore, activityId: activityId, activityIdIn: activityIdIn, executionId: executionId, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processDefinitionId: processDefinitionId, tenantIdIn: tenantIdIn, active: active, suspended: suspended, priorityHigherThanOrEquals: priorityHigherThanOrEquals, priorityLowerThanOrEquals: priorityLowerThanOrEquals, );
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

  /// Get External Task Topic Names
  ///
  /// Queries for distinct topic names of external tasks that fulfill given parameters. Query can be restricted to only tasks with retries left, tasks that are locked, or tasks that are unlocked. The parameters withLockedTasks and withUnlockedTasks are exclusive. Setting them both to true will return an empty list. Providing no parameters will return a list of all distinct topic names with external tasks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] withLockedTasks:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withUnlockedTasks:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  Future<Response> getTopicNamesWithHttpInfo({ bool? withLockedTasks, bool? withUnlockedTasks, bool? withRetriesLeft, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/topic-names';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withLockedTasks != null) {
      queryParams.addAll(_queryParams('', 'withLockedTasks', withLockedTasks));
    }
    if (withUnlockedTasks != null) {
      queryParams.addAll(_queryParams('', 'withUnlockedTasks', withUnlockedTasks));
    }
    if (withRetriesLeft != null) {
      queryParams.addAll(_queryParams('', 'withRetriesLeft', withRetriesLeft));
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

  /// Get External Task Topic Names
  ///
  /// Queries for distinct topic names of external tasks that fulfill given parameters. Query can be restricted to only tasks with retries left, tasks that are locked, or tasks that are unlocked. The parameters withLockedTasks and withUnlockedTasks are exclusive. Setting them both to true will return an empty list. Providing no parameters will return a list of all distinct topic names with external tasks.
  ///
  /// Parameters:
  ///
  /// * [bool] withLockedTasks:
  ///   Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withUnlockedTasks:
  ///   Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
  ///
  /// * [bool] withRetriesLeft:
  ///   Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
  Future<List<String>?> getTopicNames({ bool? withLockedTasks, bool? withUnlockedTasks, bool? withRetriesLeft, }) async {
    final response = await getTopicNamesWithHttpInfo( withLockedTasks: withLockedTasks, withUnlockedTasks: withUnlockedTasks, withRetriesLeft: withRetriesLeft, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }

  /// Handle BPMN Error
  ///
  /// Reports a business error in the context of a running external task by id. The error code must be specified to identify the BPMN error handler.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task in which context a BPMN error is reported.
  ///
  /// * [ExternalTaskBpmnError] externalTaskBpmnError:
  Future<Response> handleExternalTaskBpmnErrorWithHttpInfo(String id, { ExternalTaskBpmnError? externalTaskBpmnError, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/bpmnError'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = externalTaskBpmnError;

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

  /// Handle BPMN Error
  ///
  /// Reports a business error in the context of a running external task by id. The error code must be specified to identify the BPMN error handler.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task in which context a BPMN error is reported.
  ///
  /// * [ExternalTaskBpmnError] externalTaskBpmnError:
  Future<void> handleExternalTaskBpmnError(String id, { ExternalTaskBpmnError? externalTaskBpmnError, }) async {
    final response = await handleExternalTaskBpmnErrorWithHttpInfo(id,  externalTaskBpmnError: externalTaskBpmnError, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Handle Failure
  ///
  /// Reports a failure to execute an external task by id. A number of retries and a timeout until the task can be retried can be specified. If retries are set to 0, an incident for this task is created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to report a failure for.
  ///
  /// * [ExternalTaskFailureDto] externalTaskFailureDto:
  Future<Response> handleFailureWithHttpInfo(String id, { ExternalTaskFailureDto? externalTaskFailureDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/failure'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = externalTaskFailureDto;

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

  /// Handle Failure
  ///
  /// Reports a failure to execute an external task by id. A number of retries and a timeout until the task can be retried can be specified. If retries are set to 0, an incident for this task is created.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to report a failure for.
  ///
  /// * [ExternalTaskFailureDto] externalTaskFailureDto:
  Future<void> handleFailure(String id, { ExternalTaskFailureDto? externalTaskFailureDto, }) async {
    final response = await handleFailureWithHttpInfo(id,  externalTaskFailureDto: externalTaskFailureDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Lock an external task by a given id for a specified worker and amount of time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task.
  ///
  /// * [LockExternalTaskDto] lockExternalTaskDto:
  Future<Response> lockWithHttpInfo(String id, { LockExternalTaskDto? lockExternalTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/lock'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = lockExternalTaskDto;

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

  /// Lock an external task by a given id for a specified worker and amount of time.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task.
  ///
  /// * [LockExternalTaskDto] lockExternalTaskDto:
  Future<void> lock(String id, { LockExternalTaskDto? lockExternalTaskDto, }) async {
    final response = await lockWithHttpInfo(id,  lockExternalTaskDto: lockExternalTaskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get List (POST)
  ///
  /// Queries for external tasks that fulfill given parameters in the form of a JSON object.  This method is slightly more powerful than the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method because it allows to specify a hierarchical result sorting.
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
  /// * [ExternalTaskQueryDto] externalTaskQueryDto:
  Future<Response> queryExternalTasksWithHttpInfo({ int? firstResult, int? maxResults, ExternalTaskQueryDto? externalTaskQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task';

    // ignore: prefer_final_locals
    Object? postBody = externalTaskQueryDto;

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
  /// Queries for external tasks that fulfill given parameters in the form of a JSON object.  This method is slightly more powerful than the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method because it allows to specify a hierarchical result sorting.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [ExternalTaskQueryDto] externalTaskQueryDto:
  Future<List<ExternalTaskDto>?> queryExternalTasks({ int? firstResult, int? maxResults, ExternalTaskQueryDto? externalTaskQueryDto, }) async {
    final response = await queryExternalTasksWithHttpInfo( firstResult: firstResult, maxResults: maxResults, externalTaskQueryDto: externalTaskQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExternalTaskDto>') as List)
        .cast<ExternalTaskDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Queries for the number of external tasks that fulfill given parameters. This method takes the same message body as the [Get External Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/external-task/post-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExternalTaskQueryDto] externalTaskQueryDto:
  Future<Response> queryExternalTasksCountWithHttpInfo({ ExternalTaskQueryDto? externalTaskQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/count';

    // ignore: prefer_final_locals
    Object? postBody = externalTaskQueryDto;

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
  /// Queries for the number of external tasks that fulfill given parameters. This method takes the same message body as the [Get External Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/external-task/post-query/) method.
  ///
  /// Parameters:
  ///
  /// * [ExternalTaskQueryDto] externalTaskQueryDto:
  Future<CountResultDto?> queryExternalTasksCount({ ExternalTaskQueryDto? externalTaskQueryDto, }) async {
    final response = await queryExternalTasksCountWithHttpInfo( externalTaskQueryDto: externalTaskQueryDto, );
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

  /// Set Priority
  ///
  /// Sets the priority of an existing external task by id. The default value of a priority is 0.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to set the priority for.
  ///
  /// * [PriorityDto] priorityDto:
  Future<Response> setExternalTaskResourcePriorityWithHttpInfo(String id, { PriorityDto? priorityDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/priority'
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

  /// Set Priority
  ///
  /// Sets the priority of an existing external task by id. The default value of a priority is 0.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to set the priority for.
  ///
  /// * [PriorityDto] priorityDto:
  Future<void> setExternalTaskResourcePriority(String id, { PriorityDto? priorityDto, }) async {
    final response = await setExternalTaskResourcePriorityWithHttpInfo(id,  priorityDto: priorityDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Retries
  ///
  /// Sets the number of retries left to execute an external task by id. If retries are set to 0, an  incident is created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to set the number of retries for.
  ///
  /// * [RetriesDto] retriesDto:
  Future<Response> setExternalTaskResourceRetriesWithHttpInfo(String id, { RetriesDto? retriesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/retries'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = retriesDto;

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

  /// Set Retries
  ///
  /// Sets the number of retries left to execute an external task by id. If retries are set to 0, an  incident is created.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to set the number of retries for.
  ///
  /// * [RetriesDto] retriesDto:
  Future<void> setExternalTaskResourceRetries(String id, { RetriesDto? retriesDto, }) async {
    final response = await setExternalTaskResourceRetriesWithHttpInfo(id,  retriesDto: retriesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Retries Sync
  ///
  /// Sets the number of retries left to execute external tasks by id synchronously. If retries are set to 0,  an incident is created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRetriesForExternalTasksDto] setRetriesForExternalTasksDto:
  Future<Response> setExternalTaskRetriesWithHttpInfo({ SetRetriesForExternalTasksDto? setRetriesForExternalTasksDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/retries';

    // ignore: prefer_final_locals
    Object? postBody = setRetriesForExternalTasksDto;

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

  /// Set Retries Sync
  ///
  /// Sets the number of retries left to execute external tasks by id synchronously. If retries are set to 0,  an incident is created.
  ///
  /// Parameters:
  ///
  /// * [SetRetriesForExternalTasksDto] setRetriesForExternalTasksDto:
  Future<void> setExternalTaskRetries({ SetRetriesForExternalTasksDto? setRetriesForExternalTasksDto, }) async {
    final response = await setExternalTaskRetriesWithHttpInfo( setRetriesForExternalTasksDto: setRetriesForExternalTasksDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Retries Async
  ///
  /// Sets the number of retries left to execute external tasks by id asynchronously. If retries are set to 0, an incident is created.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRetriesForExternalTasksDto] setRetriesForExternalTasksDto:
  Future<Response> setExternalTaskRetriesAsyncOperationWithHttpInfo({ SetRetriesForExternalTasksDto? setRetriesForExternalTasksDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/retries-async';

    // ignore: prefer_final_locals
    Object? postBody = setRetriesForExternalTasksDto;

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

  /// Set Retries Async
  ///
  /// Sets the number of retries left to execute external tasks by id asynchronously. If retries are set to 0, an incident is created.
  ///
  /// Parameters:
  ///
  /// * [SetRetriesForExternalTasksDto] setRetriesForExternalTasksDto:
  Future<BatchDto?> setExternalTaskRetriesAsyncOperation({ SetRetriesForExternalTasksDto? setRetriesForExternalTasksDto, }) async {
    final response = await setExternalTaskRetriesAsyncOperationWithHttpInfo( setRetriesForExternalTasksDto: setRetriesForExternalTasksDto, );
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

  /// Unlock
  ///
  /// Unlocks an external task by id. Clears the task's lock expiration time and worker id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to unlock.
  Future<Response> unlockWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/external-task/{id}/unlock'
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

  /// Unlock
  ///
  /// Unlocks an external task by id. Clears the task's lock expiration time and worker id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the external task to unlock.
  Future<void> unlock(String id,) async {
    final response = await unlockWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
