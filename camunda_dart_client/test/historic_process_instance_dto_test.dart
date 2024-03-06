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

// tests for HistoricProcessInstanceDto
void main() {
  // final instance = HistoricProcessInstanceDto();

  group('test HistoricProcessInstanceDto', () {
    // The id of the process instance.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The id of the parent process instance, if it exists.
    // String superProcessInstanceId
    test('to test the property `superProcessInstanceId`', () async {
      // TODO
    });

    // The id of the parent case instance, if it exists.
    // String superCaseInstanceId
    test('to test the property `superCaseInstanceId`', () async {
      // TODO
    });

    // The id of the parent case instance, if it exists.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // The name of the process definition that this process instance belongs to.
    // String processDefinitionName
    test('to test the property `processDefinitionName`', () async {
      // TODO
    });

    // The key of the process definition that this process instance belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The version of the process definition that this process instance belongs to.
    // int processDefinitionVersion
    test('to test the property `processDefinitionVersion`', () async {
      // TODO
    });

    // The id of the process definition that this process instance belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The business key of the process instance.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // The time the instance was started. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The time the instance ended. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // The time after which the instance should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The time the instance took to finish (in milliseconds).
    // int durationInMillis
    test('to test the property `durationInMillis`', () async {
      // TODO
    });

    // The id of the user who started the process instance.
    // String startUserId
    test('to test the property `startUserId`', () async {
      // TODO
    });

    // The id of the initial activity that was executed (e.g., a start event).
    // String startActivityId
    test('to test the property `startActivityId`', () async {
      // TODO
    });

    // The provided delete reason in case the process instance was canceled during execution.
    // String deleteReason
    test('to test the property `deleteReason`', () async {
      // TODO
    });

    // The tenant id of the process instance.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // Last state of the process instance, possible values are:  `ACTIVE` - running process instance  `SUSPENDED` - suspended process instances  `COMPLETED` - completed through normal end event  `EXTERNALLY_TERMINATED` - terminated externally, for instance through REST API  `INTERNALLY_TERMINATED` - terminated internally, for instance by terminating boundary event
    // String state
    test('to test the property `state`', () async {
      // TODO
    });


  });

}
