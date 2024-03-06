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

// tests for JobDefinitionDto
void main() {
  // final instance = JobDefinitionDto();

  group('test JobDefinitionDto', () {
    // The id of the job definition.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the process definition this job definition is associated with.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The key of the process definition this job definition is associated with.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the activity this job definition is associated with.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The type of the job which is running for this job definition. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
    // String jobType
    test('to test the property `jobType`', () async {
      // TODO
    });

    // The configuration of a job definition provides details about the jobs which will be created. For example: for timer jobs it is the timer configuration.
    // String jobConfiguration
    test('to test the property `jobConfiguration`', () async {
      // TODO
    });

    // The execution priority defined for jobs that are created based on this definition. May be `null` when the priority has not been overridden on the job definition level.
    // int overridingJobPriority
    test('to test the property `overridingJobPriority`', () async {
      // TODO
    });

    // Indicates whether this job definition is suspended or not.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // The id of the tenant this job definition is associated with.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The id of the deployment this job definition is related to. In a deployment-aware setup, this leads to all jobs of the same definition being executed on the same node.
    // String deploymentId
    test('to test the property `deploymentId`', () async {
      // TODO
    });


  });

}
