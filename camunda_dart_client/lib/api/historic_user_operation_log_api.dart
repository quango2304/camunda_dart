//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricUserOperationLogApi {
  HistoricUserOperationLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clear Annotation of an User Operation Log (Historic)
  ///
  /// Clear the annotation which was previously set for auditing reasons.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] operationId (required):
  ///   The operation id of the operation log to be updated.
  Future<Response> clearAnnotationUserOperationLogWithHttpInfo(String operationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/user-operation/{operationId}/clear-annotation'
      .replaceAll('{operationId}', operationId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Clear Annotation of an User Operation Log (Historic)
  ///
  /// Clear the annotation which was previously set for auditing reasons.
  ///
  /// Parameters:
  ///
  /// * [String] operationId (required):
  ///   The operation id of the operation log to be updated.
  Future<void> clearAnnotationUserOperationLog(String operationId,) async {
    final response = await clearAnnotationUserOperationLogWithHttpInfo(operationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get User Operation Log Count
  ///
  /// Queries for the number of user operation log entries that fulfill the given parameters. Takes the same parameters as the [Get User Operation Log (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] taskId:
  ///   Only include operations on this task.
  ///
  /// * [String] externalTaskId:
  ///   Only include operations on this external task.
  ///
  /// * [String] batchId:
  ///   Only include operations on this batch.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] userId:
  ///   Only include operations of this user.
  ///
  /// * [String] operationId:
  ///   Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
  ///
  /// * [String] operationType:
  ///   Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
  ///
  /// * [String] entityType:
  ///   Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] entityTypeIn:
  ///   Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] category:
  ///   Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] categoryIn:
  ///   Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] property:
  ///   Only include operations that changed this property, e.g., `owner` or `assignee`.
  ///
  /// * [DateTime] afterTimestamp:
  ///   Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] beforeTimestamp:
  ///   Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  Future<Response> queryUserOperationCountWithHttpInfo({ String? deploymentId, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? executionId, String? caseDefinitionId, String? caseInstanceId, String? caseExecutionId, String? taskId, String? externalTaskId, String? batchId, String? jobId, String? jobDefinitionId, String? userId, String? operationId, String? operationType, String? entityType, String? entityTypeIn, String? category, String? categoryIn, String? property, DateTime? afterTimestamp, DateTime? beforeTimestamp, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/user-operation/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (operationId != null) {
      queryParams.addAll(_queryParams('', 'operationId', operationId));
    }
    if (operationType != null) {
      queryParams.addAll(_queryParams('', 'operationType', operationType));
    }
    if (entityType != null) {
      queryParams.addAll(_queryParams('', 'entityType', entityType));
    }
    if (entityTypeIn != null) {
      queryParams.addAll(_queryParams('', 'entityTypeIn', entityTypeIn));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryIn != null) {
      queryParams.addAll(_queryParams('', 'categoryIn', categoryIn));
    }
    if (property != null) {
      queryParams.addAll(_queryParams('', 'property', property));
    }
    if (afterTimestamp != null) {
      queryParams.addAll(_queryParams('', 'afterTimestamp', afterTimestamp));
    }
    if (beforeTimestamp != null) {
      queryParams.addAll(_queryParams('', 'beforeTimestamp', beforeTimestamp));
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

  /// Get User Operation Log Count
  ///
  /// Queries for the number of user operation log entries that fulfill the given parameters. Takes the same parameters as the [Get User Operation Log (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] taskId:
  ///   Only include operations on this task.
  ///
  /// * [String] externalTaskId:
  ///   Only include operations on this external task.
  ///
  /// * [String] batchId:
  ///   Only include operations on this batch.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] userId:
  ///   Only include operations of this user.
  ///
  /// * [String] operationId:
  ///   Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
  ///
  /// * [String] operationType:
  ///   Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
  ///
  /// * [String] entityType:
  ///   Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] entityTypeIn:
  ///   Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] category:
  ///   Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] categoryIn:
  ///   Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] property:
  ///   Only include operations that changed this property, e.g., `owner` or `assignee`.
  ///
  /// * [DateTime] afterTimestamp:
  ///   Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] beforeTimestamp:
  ///   Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  Future<CountResultDto?> queryUserOperationCount({ String? deploymentId, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? executionId, String? caseDefinitionId, String? caseInstanceId, String? caseExecutionId, String? taskId, String? externalTaskId, String? batchId, String? jobId, String? jobDefinitionId, String? userId, String? operationId, String? operationType, String? entityType, String? entityTypeIn, String? category, String? categoryIn, String? property, DateTime? afterTimestamp, DateTime? beforeTimestamp, }) async {
    final response = await queryUserOperationCountWithHttpInfo( deploymentId: deploymentId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, executionId: executionId, caseDefinitionId: caseDefinitionId, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, taskId: taskId, externalTaskId: externalTaskId, batchId: batchId, jobId: jobId, jobDefinitionId: jobDefinitionId, userId: userId, operationId: operationId, operationType: operationType, entityType: entityType, entityTypeIn: entityTypeIn, category: category, categoryIn: categoryIn, property: property, afterTimestamp: afterTimestamp, beforeTimestamp: beforeTimestamp, );
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

  /// Get User Operation Log (Historic)
  ///
  /// Queries for user operation log entries that fulfill the given parameters. The size of the result set can be retrieved by using the [Get User Operation Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query-count/) method.  Note that the properties of operation log entries are interpreted as restrictions on the entities they apply to. That means, if a single process instance is updated, the field `processInstanceId` is populated. If a single operation updates all process instances of the same process definition, the field `processInstanceId` is `null` (a `null` restriction is viewed as a wildcard, i.e., matches a process instance with any id) and the field `processDefinitionId` is populated. This way, which entities were changed by a user operation can easily be reconstructed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] taskId:
  ///   Only include operations on this task.
  ///
  /// * [String] externalTaskId:
  ///   Only include operations on this external task.
  ///
  /// * [String] batchId:
  ///   Only include operations on this batch.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] userId:
  ///   Only include operations of this user.
  ///
  /// * [String] operationId:
  ///   Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
  ///
  /// * [String] operationType:
  ///   Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
  ///
  /// * [String] entityType:
  ///   Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] entityTypeIn:
  ///   Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] category:
  ///   Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] categoryIn:
  ///   Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] property:
  ///   Only include operations that changed this property, e.g., `owner` or `assignee`.
  ///
  /// * [DateTime] afterTimestamp:
  ///   Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] beforeTimestamp:
  ///   Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
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
  Future<Response> queryUserOperationEntriesWithHttpInfo({ String? deploymentId, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? executionId, String? caseDefinitionId, String? caseInstanceId, String? caseExecutionId, String? taskId, String? externalTaskId, String? batchId, String? jobId, String? jobDefinitionId, String? userId, String? operationId, String? operationType, String? entityType, String? entityTypeIn, String? category, String? categoryIn, String? property, DateTime? afterTimestamp, DateTime? beforeTimestamp, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/user-operation';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (externalTaskId != null) {
      queryParams.addAll(_queryParams('', 'externalTaskId', externalTaskId));
    }
    if (batchId != null) {
      queryParams.addAll(_queryParams('', 'batchId', batchId));
    }
    if (jobId != null) {
      queryParams.addAll(_queryParams('', 'jobId', jobId));
    }
    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (operationId != null) {
      queryParams.addAll(_queryParams('', 'operationId', operationId));
    }
    if (operationType != null) {
      queryParams.addAll(_queryParams('', 'operationType', operationType));
    }
    if (entityType != null) {
      queryParams.addAll(_queryParams('', 'entityType', entityType));
    }
    if (entityTypeIn != null) {
      queryParams.addAll(_queryParams('', 'entityTypeIn', entityTypeIn));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryIn != null) {
      queryParams.addAll(_queryParams('', 'categoryIn', categoryIn));
    }
    if (property != null) {
      queryParams.addAll(_queryParams('', 'property', property));
    }
    if (afterTimestamp != null) {
      queryParams.addAll(_queryParams('', 'afterTimestamp', afterTimestamp));
    }
    if (beforeTimestamp != null) {
      queryParams.addAll(_queryParams('', 'beforeTimestamp', beforeTimestamp));
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

  /// Get User Operation Log (Historic)
  ///
  /// Queries for user operation log entries that fulfill the given parameters. The size of the result set can be retrieved by using the [Get User Operation Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/get-user-operation-log-query-count/) method.  Note that the properties of operation log entries are interpreted as restrictions on the entities they apply to. That means, if a single process instance is updated, the field `processInstanceId` is populated. If a single operation updates all process instances of the same process definition, the field `processInstanceId` is `null` (a `null` restriction is viewed as a wildcard, i.e., matches a process instance with any id) and the field `processDefinitionId` is populated. This way, which entities were changed by a user operation can easily be reconstructed.
  ///
  /// Parameters:
  ///
  /// * [String] deploymentId:
  ///   Filter by deployment id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by process definition key.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] taskId:
  ///   Only include operations on this task.
  ///
  /// * [String] externalTaskId:
  ///   Only include operations on this external task.
  ///
  /// * [String] batchId:
  ///   Only include operations on this batch.
  ///
  /// * [String] jobId:
  ///   Filter by job id.
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] userId:
  ///   Only include operations of this user.
  ///
  /// * [String] operationId:
  ///   Filter by the id of the operation. This allows fetching of multiple entries which are part of a composite operation.
  ///
  /// * [String] operationType:
  ///   Filter by the type of the operation like `Claim` or `Delegate`. See the [Javadoc](https://docs.camunda.org/manual/7.20/reference/javadoc/?org/camunda/bpm/engine/history/UserOperationLogEntry.html) for a list of available operation types.
  ///
  /// * [String] entityType:
  ///   Filter by the type of the entity that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] entityTypeIn:
  ///   Filter by a comma-separated list of types of the entities that was affected by this operation, possible values are `Task`, `Attachment` or `IdentityLink`.
  ///
  /// * [String] category:
  ///   Filter by the category that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] categoryIn:
  ///   Filter by a comma-separated list of categories that this operation is associated with, possible values are `TaskWorker`, `Admin` or `Operator`.
  ///
  /// * [String] property:
  ///   Only include operations that changed this property, e.g., `owner` or `assignee`.
  ///
  /// * [DateTime] afterTimestamp:
  ///   Restrict to entries that were created after the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] beforeTimestamp:
  ///   Restrict to entries that were created before the given timestamp. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the timestamp must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
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
  Future<List<UserOperationLogEntryDto>?> queryUserOperationEntries({ String? deploymentId, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? executionId, String? caseDefinitionId, String? caseInstanceId, String? caseExecutionId, String? taskId, String? externalTaskId, String? batchId, String? jobId, String? jobDefinitionId, String? userId, String? operationId, String? operationType, String? entityType, String? entityTypeIn, String? category, String? categoryIn, String? property, DateTime? afterTimestamp, DateTime? beforeTimestamp, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await queryUserOperationEntriesWithHttpInfo( deploymentId: deploymentId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, executionId: executionId, caseDefinitionId: caseDefinitionId, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, taskId: taskId, externalTaskId: externalTaskId, batchId: batchId, jobId: jobId, jobDefinitionId: jobDefinitionId, userId: userId, operationId: operationId, operationType: operationType, entityType: entityType, entityTypeIn: entityTypeIn, category: category, categoryIn: categoryIn, property: property, afterTimestamp: afterTimestamp, beforeTimestamp: beforeTimestamp, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserOperationLogEntryDto>') as List)
        .cast<UserOperationLogEntryDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Set Annotation to an User Operation Log (Historic)
  ///
  /// Set an annotation for auditing reasons.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] operationId (required):
  ///   The operation id of the operation log to be updated.
  ///
  /// * [AnnotationDto] annotationDto:
  Future<Response> setAnnotationUserOperationLogWithHttpInfo(String operationId, { AnnotationDto? annotationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/user-operation/{operationId}/set-annotation'
      .replaceAll('{operationId}', operationId);

    // ignore: prefer_final_locals
    Object? postBody = annotationDto;

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

  /// Set Annotation to an User Operation Log (Historic)
  ///
  /// Set an annotation for auditing reasons.
  ///
  /// Parameters:
  ///
  /// * [String] operationId (required):
  ///   The operation id of the operation log to be updated.
  ///
  /// * [AnnotationDto] annotationDto:
  Future<void> setAnnotationUserOperationLog(String operationId, { AnnotationDto? annotationDto, }) async {
    final response = await setAnnotationUserOperationLogWithHttpInfo(operationId,  annotationDto: annotationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
