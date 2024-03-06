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

// tests for JobDefinitionsSuspensionStateDto
void main() {
  // final instance = JobDefinitionsSuspensionStateDto();

  group('test JobDefinitionsSuspensionStateDto', () {
    // A `Boolean` value which indicates whether to activate or suspend also all jobs of the referenced job definitions. When the value is set to `true`, all jobs of the provided job definitions will be activated or suspended and when the value is set to `false`, the suspension state of all jobs of the provided job definitions will not be updated.
    // bool includeJobs
    test('to test the property `includeJobs`', () async {
      // TODO
    });

    // The date on which the referenced job definitions will be activated or suspended. If null, the suspension state of the given job definitions is updated immediately. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // String executionDate
    test('to test the property `executionDate`', () async {
      // TODO
    });

    // A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // The process definition id of the job definitions to activate or suspend.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The process definition key of the job definitions to activate or suspend.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only activate or suspend job definitions of a process definition which belongs to a tenant with the given id.  Note that this parameter will only be considered  in combination with `processDefinitionKey`.
    // String processDefinitionTenantId
    test('to test the property `processDefinitionTenantId`', () async {
      // TODO
    });

    // Only activate or suspend job definitions of a process definition which belongs to no tenant. Value may only be `true`, as `false` is the default behavior.  Note that this parameter will only be considered  in combination with `processDefinitionKey`.
    // bool processDefinitionWithoutTenantId
    test('to test the property `processDefinitionWithoutTenantId`', () async {
      // TODO
    });


  });

}
