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

// tests for JobQueryDto
void main() {
  // final instance = JobQueryDto();

  group('test JobQueryDto', () {
    // Filter by job id.
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Filter by a  list of job ids.
    // List<String> jobIds (default value: const [])
    test('to test the property `jobIds`', () async {
      // TODO
    });

    // Only select jobs which exist for the given job definition.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // Only select jobs which exist for the given process instance.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Only select jobs which exist for the given  list of process instance ids.
    // List<String> processInstanceIds (default value: const [])
    test('to test the property `processInstanceIds`', () async {
      // TODO
    });

    // Only select jobs which exist for the given execution.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Filter by the id of the process definition the jobs run on.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the process definition the jobs run on.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only select jobs which exist for an activity with the given id.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
    // bool withRetriesLeft
    test('to test the property `withRetriesLeft`', () async {
      // TODO
    });

    // Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
    // bool executable
    test('to test the property `executable`', () async {
      // TODO
    });

    // Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
    // bool timers
    test('to test the property `timers`', () async {
      // TODO
    });

    // Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
    // bool messages
    test('to test the property `messages`', () async {
      // TODO
    });

    // Only select jobs where the due date is lower or higher than the given date. 
    // List<JobConditionQueryParameterDto> dueDates (default value: const [])
    test('to test the property `dueDates`', () async {
      // TODO
    });

    // Only select jobs created before or after the given date. 
    // List<JobConditionQueryParameterDto> createTimes (default value: const [])
    test('to test the property `createTimes`', () async {
      // TODO
    });

    // Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
    // bool withException
    test('to test the property `withException`', () async {
      // TODO
    });

    // Only select jobs that failed due to an exception with the given message.
    // String exceptionMessage
    test('to test the property `exceptionMessage`', () async {
      // TODO
    });

    // Only select jobs that failed due to an exception at an activity with the given id.
    // String failedActivityId
    test('to test the property `failedActivityId`', () async {
      // TODO
    });

    // Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
    // bool noRetriesLeft
    test('to test the property `noRetriesLeft`', () async {
      // TODO
    });

    // Only include active jobs. Value may only be `true`, as `false` is the default behavior.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
    // int priorityLowerThanOrEquals
    test('to test the property `priorityLowerThanOrEquals`', () async {
      // TODO
    });

    // Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
    // int priorityHigherThanOrEquals
    test('to test the property `priorityHigherThanOrEquals`', () async {
      // TODO
    });

    // Only include jobs which belong to one of the passed  tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
    // bool includeJobsWithoutTenantId
    test('to test the property `includeJobsWithoutTenantId`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Does not have an effect for the `count` endpoint.
    // List<JobQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
