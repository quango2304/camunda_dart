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


/// tests for JobDefinitionApi
void main() {
  // final instance = JobDefinitionApi();

  group('tests for JobDefinitionApi', () {
    // Get Job Definition
    //
    // Retrieves a job definition by id, according to the `JobDefinition` interface in the engine.
    //
    //Future<JobDefinitionDto> getJobDefinition(String id) async
    test('test getJobDefinition', () async {
      // TODO
    });

    // Get Job Definitions
    //
    // Queries for job definitions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
    //
    //Future<List<JobDefinitionDto>> getJobDefinitions({ String jobDefinitionId, String activityIdIn, String processDefinitionId, String processDefinitionKey, String jobType, String jobConfiguration, bool active, bool suspended, bool withOverridingJobPriority, String tenantIdIn, bool withoutTenantId, bool includeJobDefinitionsWithoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getJobDefinitions', () async {
      // TODO
    });

    // Get Job Definition Count
    //
    // Queries for the number of job definitions that fulfill given parameters. Takes the same parameters as the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method.
    //
    //Future<CountResultDto> getJobDefinitionsCount({ String jobDefinitionId, String activityIdIn, String processDefinitionId, String processDefinitionKey, String jobType, String jobConfiguration, bool active, bool suspended, bool withOverridingJobPriority, String tenantIdIn, bool withoutTenantId, bool includeJobDefinitionsWithoutTenantId }) async
    test('test getJobDefinitionsCount', () async {
      // TODO
    });

    // Get Job Definitions (POST)
    //
    // Queries for job definitions that fulfill given parameters. This method is slightly more powerful than the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method because it allows filtering by multiple job definitions of types `String`, `Number` or `Boolean`.
    //
    //Future<List<JobDefinitionDto>> queryJobDefinitions({ int firstResult, int maxResults, JobDefinitionQueryDto jobDefinitionQueryDto }) async
    test('test queryJobDefinitions', () async {
      // TODO
    });

    // Get Job Definition Count (POST)
    //
    // Queries for the number of job definitions that fulfill given parameters. This method takes the same message body as the [Get Job Definitions (POST)](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/post-query/) method and therefore it is slightly more powerful than the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
    //
    //Future<CountResultDto> queryJobDefinitionsCount({ JobDefinitionQueryDto jobDefinitionQueryDto }) async
    test('test queryJobDefinitionsCount', () async {
      // TODO
    });

    // Set Job Definition Priority by Id
    //
    // Sets an overriding execution priority for jobs with the given definition id. Optionally, the priorities of all the definitions' existing jobs are updated accordingly. The priority can be reset by setting it to `null`, meaning that a new job's priority will not be determined based on its definition's priority any longer. See the [user guide on job prioritization](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#set-job-definition-priorities-via-managementservice-api) for details.
    //
    //Future setJobPriorityJobDefinition(String id, { JobDefinitionPriorityDto jobDefinitionPriorityDto }) async
    test('test setJobPriorityJobDefinition', () async {
      // TODO
    });

    // Set Job Retries By Job Definition Id
    //
    // Sets the number of retries of all **failed** jobs associated with the given job definition id.
    //
    //Future setJobRetriesJobDefinition(String id, { RetriesDto retriesDto }) async
    test('test setJobRetriesJobDefinition', () async {
      // TODO
    });

    // Activate/Suspend Job Definition By Id
    //
    // Activates or suspends a given job definition by id.
    //
    //Future updateSuspensionStateJobDefinition(String id, { JobDefinitionSuspensionStateDto jobDefinitionSuspensionStateDto }) async
    test('test updateSuspensionStateJobDefinition', () async {
      // TODO
    });

    // Activate/Suspend Job Definitions
    //
    // Activates or suspends job definitions with the given process definition id or process definition key.
    //
    //Future updateSuspensionStateJobDefinitions({ JobDefinitionsSuspensionStateDto jobDefinitionsSuspensionStateDto }) async
    test('test updateSuspensionStateJobDefinitions', () async {
      // TODO
    });

  });
}
