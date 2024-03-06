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


/// tests for JobApi
void main() {
  // final instance = JobApi();

  group('tests for JobApi', () {
    // Delete Job
    //
    // Deletes a job by id.
    //
    //Future deleteJob(String id) async
    test('test deleteJob', () async {
      // TODO
    });

    // Execute Job
    //
    // Executes a job by id. **Note:** The execution of the job happens synchronously in the same thread.
    //
    //Future executeJob(String id) async
    test('test executeJob', () async {
      // TODO
    });

    // Get Job
    //
    // Retrieves a job by id, according to the `Job` interface in the engine.
    //
    //Future<JobDto> getJob(String id) async
    test('test getJob', () async {
      // TODO
    });

    // Get Jobs
    //
    // Queries for jobs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
    //
    //Future<List<JobDto>> getJobs({ String jobId, String jobIds, String jobDefinitionId, String processInstanceId, String processInstanceIds, String executionId, String processDefinitionId, String processDefinitionKey, String activityId, bool withRetriesLeft, bool executable, bool timers, bool messages, String dueDates, String createTimes, bool withException, String exceptionMessage, String failedActivityId, bool noRetriesLeft, bool active, bool suspended, int priorityLowerThanOrEquals, int priorityHigherThanOrEquals, String tenantIdIn, bool withoutTenantId, bool includeJobsWithoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getJobs', () async {
      // TODO
    });

    // Get Job Count
    //
    // Queries for the number of jobs that fulfill given parameters. Takes the same parameters as the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method.
    //
    //Future<CountResultDto> getJobsCount({ String jobId, String jobIds, String jobDefinitionId, String processInstanceId, String processInstanceIds, String executionId, String processDefinitionId, String processDefinitionKey, String activityId, bool withRetriesLeft, bool executable, bool timers, bool messages, String dueDates, String createTimes, bool withException, String exceptionMessage, String failedActivityId, bool noRetriesLeft, bool active, bool suspended, int priorityLowerThanOrEquals, int priorityHigherThanOrEquals, String tenantIdIn, bool withoutTenantId, bool includeJobsWithoutTenantId }) async
    test('test getJobsCount', () async {
      // TODO
    });

    // Get Exception Stacktrace
    //
    // Retrieves the exception stacktrace corresponding to the passed job id.
    //
    //Future<Object> getStacktrace(String id) async
    test('test getStacktrace', () async {
      // TODO
    });

    // Get Jobs (POST)
    //
    // Queries for jobs that fulfill given parameters. This method is slightly more powerful than the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method because it allows filtering by multiple jobs of types `String`, `Number` or `Boolean`.
    //
    //Future<List<JobDto>> queryJobs({ int firstResult, int maxResults, JobQueryDto jobQueryDto }) async
    test('test queryJobs', () async {
      // TODO
    });

    // Get Job Count (POST)
    //
    // Queries for jobs that fulfill given parameters. This method takes the same message body as the [Get Jobs POST](https://docs.camunda.org/manual/7.20/reference/rest/job/post- query/) method and therefore it is slightly more powerful than the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.
    //
    //Future<CountResultDto> queryJobsCount({ JobQueryDto jobQueryDto }) async
    test('test queryJobsCount', () async {
      // TODO
    });

    // Recalculate Job Due Date
    //
    // Recalculates the due date of a job by id.
    //
    //Future recalculateDuedate(String id, { bool creationDateBased }) async
    test('test recalculateDuedate', () async {
      // TODO
    });

    // Set Job Due Date
    //
    // Updates the due date of a job by id.
    //
    //Future setJobDuedate(String id, { JobDuedateDto jobDuedateDto }) async
    test('test setJobDuedate', () async {
      // TODO
    });

    // Set Job Priority
    //
    // Sets the execution priority of a job by id.
    //
    //Future setJobPriority(String id, { PriorityDto priorityDto }) async
    test('test setJobPriority', () async {
      // TODO
    });

    // Set Job Retries
    //
    // Sets the retries of the job to the given number of retries by id.
    //
    //Future setJobRetries(String id, { JobRetriesDto jobRetriesDto }) async
    test('test setJobRetries', () async {
      // TODO
    });

    // Set Job Retries Async (POST)
    //
    // Create a batch to set retries of jobs asynchronously.
    //
    //Future<BatchDto> setJobRetriesAsyncOperation({ SetJobRetriesDto setJobRetriesDto }) async
    test('test setJobRetriesAsyncOperation', () async {
      // TODO
    });

    // Activate/Suspend Job By Id
    //
    // Activates or suspends a given job by id.
    //
    //Future updateJobSuspensionState(String id, { SuspensionStateDto suspensionStateDto }) async
    test('test updateJobSuspensionState', () async {
      // TODO
    });

    // Activate/Suspend Jobs
    //
    // Activates or suspends jobs matching the given criterion. This can only be on of: * `jobDefinitionId` * `processDefinitionId` * `processInstanceId` * `processDefinitionKey`
    //
    //Future updateSuspensionStateBy({ JobSuspensionStateDto jobSuspensionStateDto }) async
    test('test updateSuspensionStateBy', () async {
      // TODO
    });

  });
}
