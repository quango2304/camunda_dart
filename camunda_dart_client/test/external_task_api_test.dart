//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ExternalTaskApi
void main() {
  // final instance = ExternalTaskApi();

  group('tests for ExternalTaskApi', () {
    // Complete
    //
    // Completes an external task by id and updates process variables.
    //
    //Future completeExternalTaskResource(String id, { CompleteExternalTaskDto completeExternalTaskDto }) async
    test('test completeExternalTaskResource', () async {
      // TODO
    });

    // Extend Lock
    //
    // Extends the timeout of the lock by a given amount of time.
    //
    //Future extendLock(String id, { ExtendLockOnExternalTaskDto extendLockOnExternalTaskDto }) async
    test('test extendLock', () async {
      // TODO
    });

    // Fetch and Lock
    //
    // Fetches and locks a specific number of external tasks for execution by a worker. Query can be restricted to specific task topics and for each task topic an individual lock time can be provided.
    //
    //Future<List<LockedExternalTaskDto>> fetchAndLock({ FetchExternalTasksDto fetchExternalTasksDto }) async
    test('test fetchAndLock', () async {
      // TODO
    });

    // Get
    //
    // Retrieves an external task by id, corresponding to the `ExternalTask` interface in the engine.
    //
    //Future<ExternalTaskDto> getExternalTask(String id) async
    test('test getExternalTask', () async {
      // TODO
    });

    // Get Error Details
    //
    // Retrieves the error details in the context of a running external task by id.
    //
    //Future<String> getExternalTaskErrorDetails(String id) async
    test('test getExternalTaskErrorDetails', () async {
      // TODO
    });

    // Get List
    //
    // Queries for the external tasks that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get External Task Count](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query-count/) method.
    //
    //Future<List<ExternalTaskDto>> getExternalTasks({ String externalTaskId, String externalTaskIdIn, String topicName, String workerId, bool locked, bool notLocked, bool withRetriesLeft, bool noRetriesLeft, DateTime lockExpirationAfter, DateTime lockExpirationBefore, String activityId, String activityIdIn, String executionId, String processInstanceId, String processInstanceIdIn, String processDefinitionId, String tenantIdIn, bool active, bool suspended, int priorityHigherThanOrEquals, int priorityLowerThanOrEquals, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getExternalTasks', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of external tasks that fulfill given parameters. Takes the same parameters as the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method.
    //
    //Future<CountResultDto> getExternalTasksCount({ String externalTaskId, String externalTaskIdIn, String topicName, String workerId, bool locked, bool notLocked, bool withRetriesLeft, bool noRetriesLeft, DateTime lockExpirationAfter, DateTime lockExpirationBefore, String activityId, String activityIdIn, String executionId, String processInstanceId, String processInstanceIdIn, String processDefinitionId, String tenantIdIn, bool active, bool suspended, int priorityHigherThanOrEquals, int priorityLowerThanOrEquals }) async
    test('test getExternalTasksCount', () async {
      // TODO
    });

    // Get External Task Topic Names
    //
    // Queries for distinct topic names of external tasks that fulfill given parameters. Query can be restricted to only tasks with retries left, tasks that are locked, or tasks that are unlocked. The parameters withLockedTasks and withUnlockedTasks are exclusive. Setting them both to true will return an empty list. Providing no parameters will return a list of all distinct topic names with external tasks.
    //
    //Future<List<String>> getTopicNames({ bool withLockedTasks, bool withUnlockedTasks, bool withRetriesLeft }) async
    test('test getTopicNames', () async {
      // TODO
    });

    // Handle BPMN Error
    //
    // Reports a business error in the context of a running external task by id. The error code must be specified to identify the BPMN error handler.
    //
    //Future handleExternalTaskBpmnError(String id, { ExternalTaskBpmnError externalTaskBpmnError }) async
    test('test handleExternalTaskBpmnError', () async {
      // TODO
    });

    // Handle Failure
    //
    // Reports a failure to execute an external task by id. A number of retries and a timeout until the task can be retried can be specified. If retries are set to 0, an incident for this task is created.
    //
    //Future handleFailure(String id, { ExternalTaskFailureDto externalTaskFailureDto }) async
    test('test handleFailure', () async {
      // TODO
    });

    // Lock an external task by a given id for a specified worker and amount of time.
    //
    //Future lock(String id, { LockExternalTaskDto lockExternalTaskDto }) async
    test('test lock', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for external tasks that fulfill given parameters in the form of a JSON object.  This method is slightly more powerful than the [Get External Tasks](https://docs.camunda.org/manual/7.20/reference/rest/external-task/get-query/) method because it allows to specify a hierarchical result sorting.
    //
    //Future<List<ExternalTaskDto>> queryExternalTasks({ int firstResult, int maxResults, ExternalTaskQueryDto externalTaskQueryDto }) async
    test('test queryExternalTasks', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Queries for the number of external tasks that fulfill given parameters. This method takes the same message body as the [Get External Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/external-task/post-query/) method.
    //
    //Future<CountResultDto> queryExternalTasksCount({ ExternalTaskQueryDto externalTaskQueryDto }) async
    test('test queryExternalTasksCount', () async {
      // TODO
    });

    // Set Priority
    //
    // Sets the priority of an existing external task by id. The default value of a priority is 0.
    //
    //Future setExternalTaskResourcePriority(String id, { PriorityDto priorityDto }) async
    test('test setExternalTaskResourcePriority', () async {
      // TODO
    });

    // Set Retries
    //
    // Sets the number of retries left to execute an external task by id. If retries are set to 0, an  incident is created.
    //
    //Future setExternalTaskResourceRetries(String id, { RetriesDto retriesDto }) async
    test('test setExternalTaskResourceRetries', () async {
      // TODO
    });

    // Set Retries Sync
    //
    // Sets the number of retries left to execute external tasks by id synchronously. If retries are set to 0,  an incident is created.
    //
    //Future setExternalTaskRetries({ SetRetriesForExternalTasksDto setRetriesForExternalTasksDto }) async
    test('test setExternalTaskRetries', () async {
      // TODO
    });

    // Set Retries Async
    //
    // Sets the number of retries left to execute external tasks by id asynchronously. If retries are set to 0, an incident is created.
    //
    //Future<BatchDto> setExternalTaskRetriesAsyncOperation({ SetRetriesForExternalTasksDto setRetriesForExternalTasksDto }) async
    test('test setExternalTaskRetriesAsyncOperation', () async {
      // TODO
    });

    // Unlock
    //
    // Unlocks an external task by id. Clears the task's lock expiration time and worker id.
    //
    //Future unlock(String id) async
    test('test unlock', () async {
      // TODO
    });

  });
}
