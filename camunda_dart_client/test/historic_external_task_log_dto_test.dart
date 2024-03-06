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

// tests for HistoricExternalTaskLogDto
void main() {
  // final instance = HistoricExternalTaskLogDto();

  group('test HistoricExternalTaskLogDto', () {
    // The id of the log entry.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the external task.
    // String externalTaskId
    test('to test the property `externalTaskId`', () async {
      // TODO
    });

    // The time when the log entry has been written.
    // DateTime timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // The topic name of the associated external task.
    // String topicName
    test('to test the property `topicName`', () async {
      // TODO
    });

    // The id of the worker that posessed the most recent lock.
    // String workerId
    test('to test the property `workerId`', () async {
      // TODO
    });

    // The number of retries the associated external task has left.
    // int retries
    test('to test the property `retries`', () async {
      // TODO
    });

    // The execution priority the external task had when the log entry was created.
    // int priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // The message of the error that occurred by executing the associated external task.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // The id of the activity on which the associated external task was created.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The id of the activity instance on which the associated external task was created.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // The execution id on which the associated external task was created.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The id of the process instance on which the associated external task was created.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the process definition which the associated external task belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The key of the process definition which the associated external task belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the tenant that this historic external task log entry belongs to.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the creation of the associated external task.
    // bool creationLog
    test('to test the property `creationLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the failed execution of the associated external task.
    // bool failureLog
    test('to test the property `failureLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the successful execution of the associated external task.
    // bool successLog
    test('to test the property `successLog`', () async {
      // TODO
    });

    // A flag indicating whether this log represents the deletion of the associated external task.
    // bool deletionLog
    test('to test the property `deletionLog`', () async {
      // TODO
    });

    // The time after which this log should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.  For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/)
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this log.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });


  });

}
