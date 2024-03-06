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

// tests for HistoricJobLogDto
void main() {
  // final instance = HistoricJobLogDto();

  group('test HistoricJobLogDto', () {
    // The id of the log entry.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The time when the log entry has been written.
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // The time after which the log entry should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further info see the [docs](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The id of the associated job.
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // The date on which the associated job is supposed to be processed.
    // DateTime jobDueDate
    test('to test the property `jobDueDate`', () async {
      // TODO
    });

    // The number of retries the associated job has left.
    // int jobRetries
    test('to test the property `jobRetries`', () async {
      // TODO
    });

    // The execution priority the job had when the log entry was created.
    // int jobPriority
    test('to test the property `jobPriority`', () async {
      // TODO
    });

    // The message of the exception that occurred by executing the associated job.
    // String jobExceptionMessage
    test('to test the property `jobExceptionMessage`', () async {
      // TODO
    });

    // The id of the activity on which the last exception occurred by executing the associated job.
    // String failedActivityId
    test('to test the property `failedActivityId`', () async {
      // TODO
    });

    // The id of the job definition on which the associated job was created.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // The job definition type of the associated job. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
    // String jobDefinitionType
    test('to test the property `jobDefinitionType`', () async {
      // TODO
    });

    // The job definition configuration type of the associated job.
    // String jobDefinitionConfiguration
    test('to test the property `jobDefinitionConfiguration`', () async {
      // TODO
    });

    // The id of the activity on which the associated job was created.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The execution id on which the associated job was created.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The id of the process instance on which the associated job was created.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the process definition which the associated job belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The key of the process definition which the associated job belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the deployment which the associated job belongs to.
    // String deploymentId
    test('to test the property `deploymentId`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process which the associated job belongs to.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The id of the tenant that this historic job log entry belongs to.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    //  The name of the host of the Process Engine where the job of this historic job log entry was executed.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the creation of the associated job.
    // bool creationLog
    test('to test the property `creationLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the failed execution of the associated job.
    // bool failureLog
    test('to test the property `failureLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the successful execution of the associated job.
    // bool successLog
    test('to test the property `successLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the deletion of the associated job.
    // bool deletionLog
    test('to test the property `deletionLog`', () async {
      // TODO
    });


  });

}
