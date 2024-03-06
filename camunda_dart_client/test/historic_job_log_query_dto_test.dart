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

// tests for HistoricJobLogQueryDto
void main() {
  // final instance = HistoricJobLogQueryDto();

  group('test HistoricJobLogQueryDto', () {
    // Filter by historic job log id.
    // String logId
    test('to test the property `logId`', () async {
      // TODO
    });

    // Filter by job id.
    // String jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // Filter by job exception message.
    // String jobExceptionMessage
    test('to test the property `jobExceptionMessage`', () async {
      // TODO
    });

    // Filter by job definition id.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
    // String jobDefinitionType
    test('to test the property `jobDefinitionType`', () async {
      // TODO
    });

    // Filter by job definition configuration.
    // String jobDefinitionConfiguration
    test('to test the property `jobDefinitionConfiguration`', () async {
      // TODO
    });

    // Only include historic job logs which belong to one of the passed activity ids.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Only include historic job logs which belong to failures of one of the passed activity ids.
    // List<String> failedActivityIdIn (default value: const [])
    test('to test the property `failedActivityIdIn`', () async {
      // TODO
    });

    // Only include historic job logs which belong to one of the passed execution ids.
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

    // Filter by deployment id.
    // String deploymentId
    test('to test the property `deploymentId`', () async {
      // TODO
    });

    // Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Filter by hostname.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
    // int jobPriorityLowerThanOrEquals
    test('to test the property `jobPriorityLowerThanOrEquals`', () async {
      // TODO
    });

    // Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
    // int jobPriorityHigherThanOrEquals
    test('to test the property `jobPriorityHigherThanOrEquals`', () async {
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

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints
    // List<HistoricJobLogQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
