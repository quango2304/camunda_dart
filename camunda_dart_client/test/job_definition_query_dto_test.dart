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

// tests for JobDefinitionQueryDto
void main() {
  // final instance = JobDefinitionQueryDto();

  group('test JobDefinitionQueryDto', () {
    // Filter by job definition id.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // Only include job definitions which belong to one of the passed activity ids.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Only include job definitions which exist for the given process definition id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Only include job definitions which exist for the given process definition key.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
    // String jobType
    test('to test the property `jobType`', () async {
      // TODO
    });

    // Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
    // String jobConfiguration
    test('to test the property `jobConfiguration`', () async {
      // TODO
    });

    // Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
    // bool withOverridingJobPriority
    test('to test the property `withOverridingJobPriority`', () async {
      // TODO
    });

    // Only include job definitions which belong to one of the passed tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
    // bool includeJobDefinitionsWithoutTenantId
    test('to test the property `includeJobDefinitionsWithoutTenantId`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints.
    // List<JobDefinitionQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
