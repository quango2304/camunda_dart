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

// tests for ExternalTaskQueryDto
void main() {
  // final instance = ExternalTaskQueryDto();

  group('test ExternalTaskQueryDto', () {
    // Filter by an external task's id.
    // String externalTaskId
    test('to test the property `externalTaskId`', () async {
      // TODO
    });

    // Filter by the comma-separated list of external task ids.
    // List<String> externalTaskIdIn (default value: const [])
    test('to test the property `externalTaskIdIn`', () async {
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

    // Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task.
    // bool locked
    test('to test the property `locked`', () async {
      // TODO
    });

    // Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task.
    // bool notLocked
    test('to test the property `notLocked`', () async {
      // TODO
    });

    // Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task.
    // bool withRetriesLeft
    test('to test the property `withRetriesLeft`', () async {
      // TODO
    });

    // Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task.
    // bool noRetriesLeft
    test('to test the property `noRetriesLeft`', () async {
      // TODO
    });

    // Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime lockExpirationAfter
    test('to test the property `lockExpirationAfter`', () async {
      // TODO
    });

    // Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime lockExpirationBefore
    test('to test the property `lockExpirationBefore`', () async {
      // TODO
    });

    // Filter by the id of the activity that an external task is created for.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Filter by the comma-separated list of ids of the activities that an external task is created for.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Filter by the id of the execution that an external task belongs to.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Filter by the id of the process instance that an external task belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by a comma-separated list of process instance ids that an external task may belong to.
    // List<String> processInstanceIdIn (default value: const [])
    test('to test the property `processInstanceIdIn`', () async {
      // TODO
    });

    // Filter by the id of the process definition that an external task belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include active tasks. Value may only be `true`, as `false` matches any external task.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended tasks. Value may only be `true`, as `false` matches any external task.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
    // int priorityHigherThanOrEquals
    test('to test the property `priorityHigherThanOrEquals`', () async {
      // TODO
    });

    // Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
    // int priorityLowerThanOrEquals
    test('to test the property `priorityLowerThanOrEquals`', () async {
      // TODO
    });

    // A JSON array of criteria to sort the result by. Each element of the array is a JSON object that                     specifies one ordering. The position in the array identifies the rank of an ordering, i.e., whether                     it is primary, secondary, etc. The ordering objects have the following properties:                      **Note:** The `sorting` properties will not be applied to the External Task count query.
    // List<ExternalTaskQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
