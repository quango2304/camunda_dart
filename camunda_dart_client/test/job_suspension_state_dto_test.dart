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

// tests for JobSuspensionStateDto
void main() {
  // final instance = JobSuspensionStateDto();

  group('test JobSuspensionStateDto', () {
    // A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // The job definition id of the jobs to activate or suspend.
    // String jobDefinitionId
    test('to test the property `jobDefinitionId`', () async {
      // TODO
    });

    // The process definition id of the jobs to activate or suspend.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The process instance id of the jobs to activate or suspend.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The process definition key of the jobs to activate or suspend.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only activate or suspend jobs of a process definition which belongs to a tenant with the given id. Works only when selecting with `processDefinitionKey`.
    // String processDefinitionTenantId
    test('to test the property `processDefinitionTenantId`', () async {
      // TODO
    });

    // Only activate or suspend jobs of a process definition which belongs to no tenant. Value may only be `true`, as `false` is the default behavior. Works only when selecting with `processDefinitionKey`.
    // bool processDefinitionWithoutTenantId
    test('to test the property `processDefinitionWithoutTenantId`', () async {
      // TODO
    });


  });

}
