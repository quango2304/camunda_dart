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

// tests for HistoricExternalTaskLogQueryDto
void main() {
  // final instance = HistoricExternalTaskLogQueryDto();

  group('test HistoricExternalTaskLogQueryDto', () {
    // Filter by historic external task log id.
    // String logId
    test('to test the property `logId`', () async {
      // TODO
    });

    // Filter by external task id.
    // String externalTaskId
    test('to test the property `externalTaskId`', () async {
      // TODO
    });

    // Filter by an external task topic.
    // String topicName
    test('to test the property `topicName`', () async {
      // TODO
    });

    // Filter by the id of the worker that the task was most recently locked by.
    // String workerId
    test('to test the property `workerId`', () async {
      // TODO
    });

    // Filter by external task exception message.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // Only include historic external task logs which belong to one of the passed activity ids.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Only include historic external task logs which belong to one of the passed activity instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Only include historic external task logs which belong to one of the passed execution ids.
    // List<String> executionIdIn (default value: const [])
    test('to test the property `executionIdIn`', () async {
      // TODO
    });

    // Filter by process instance id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by process definition id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by process definition key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value.
    // int priorityLowerThanOrEquals
    test('to test the property `priorityLowerThanOrEquals`', () async {
      // TODO
    });

    // Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value.
    // int priorityHigherThanOrEquals
    test('to test the property `priorityHigherThanOrEquals`', () async {
      // TODO
    });

    // Only include creation logs. Value may only be `true`, as `false` is the default behavior.
    // bool creationLog
    test('to test the property `creationLog`', () async {
      // TODO
    });

    // Only include failure logs. Value may only be `true`, as `false` is the default behavior.
    // bool failureLog
    test('to test the property `failureLog`', () async {
      // TODO
    });

    // Only include success logs. Value may only be `true`, as `false` is the default behavior.
    // bool successLog
    test('to test the property `successLog`', () async {
      // TODO
    });

    // Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
    // bool deletionLog
    test('to test the property `deletionLog`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints.
    // List<HistoricExternalTaskLogQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
