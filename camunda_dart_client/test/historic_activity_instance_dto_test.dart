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

// tests for HistoricActivityInstanceDto
void main() {
  // final instance = HistoricActivityInstanceDto();

  group('test HistoricActivityInstanceDto', () {
    // The id of the activity instance.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the parent activity instance, for example a sub process instance.
    // String parentActivityInstanceId
    test('to test the property `parentActivityInstanceId`', () async {
      // TODO
    });

    // The id of the activity that this object is an instance of.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The name of the activity that this object is an instance of.
    // String activityName
    test('to test the property `activityName`', () async {
      // TODO
    });

    // The type of the activity that this object is an instance of.
    // String activityType
    test('to test the property `activityType`', () async {
      // TODO
    });

    // The key of the process definition that this activity instance belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the process definition that this activity instance belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The id of the process instance that this activity instance belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the execution that executed this activity instance.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The id of the task that is associated to this activity instance. Is only set if the activity is a user task.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // The assignee of the task that is associated to this activity instance. Is only set if the activity is a user task.
    // String assignee
    test('to test the property `assignee`', () async {
      // TODO
    });

    // The id of the called process instance. Is only set if the activity is a call activity and the called instance a process instance.
    // String calledProcessInstanceId
    test('to test the property `calledProcessInstanceId`', () async {
      // TODO
    });

    // The id of the called case instance. Is only set if the activity is a call activity and the called instance a case instance.
    // String calledCaseInstanceId
    test('to test the property `calledCaseInstanceId`', () async {
      // TODO
    });

    // The time the instance was started. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The time the instance ended. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // The time the instance took to finish (in milliseconds).
    // int durationInMillis
    test('to test the property `durationInMillis`', () async {
      // TODO
    });

    // If `true`, this activity instance is canceled.
    // bool canceled
    test('to test the property `canceled`', () async {
      // TODO
    });

    // If `true`, this activity instance did complete a BPMN 2.0 scope.
    // bool completeScope
    test('to test the property `completeScope`', () async {
      // TODO
    });

    // The tenant id of the activity instance.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The time after which the activity instance should be removed by the History Cleanup job. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this activity instance.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });


  });

}
