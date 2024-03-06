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

// tests for ProcessInstanceSuspensionStateDto
void main() {
  // final instance = ProcessInstanceSuspensionStateDto();

  group('test ProcessInstanceSuspensionStateDto', () {
    // A Boolean value which indicates whether to activate or suspend a given instance  (e.g. process instance, job, job definition, or batch). When the value is set to true,  the given instance will be suspended and when the value is set to false,  the given instance will be activated.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // The process definition id of the process instances to activate or suspend.  **Note**: This parameter can be used only with combination of `suspended`.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The process definition key of the process instances to activate or suspend.  **Note**: This parameter can be used only with combination of `suspended`, `processDefinitionTenantId`, and `processDefinitionWithoutTenantId`.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only activate or suspend process instances of a process definition which belongs to a tenant with the given id.  **Note**: This parameter can be used only with combination of `suspended`, `processDefinitionKey`, and `processDefinitionWithoutTenantId`.
    // String processDefinitionTenantId
    test('to test the property `processDefinitionTenantId`', () async {
      // TODO
    });

    // Only activate or suspend process instances of a process definition which belongs to no tenant. Value may only be true, as false is the default behavior.  **Note**: This parameter can be used only with combination of `suspended`, `processDefinitionKey`, and `processDefinitionTenantId`.
    // bool processDefinitionWithoutTenantId
    test('to test the property `processDefinitionWithoutTenantId`', () async {
      // TODO
    });

    // A list of process instance ids which defines a group of process instances which will be activated or suspended by the operation.  **Note**: This parameter can be used only with combination of `suspended`, `processInstanceQuery`, and `historicProcessInstanceQuery`.
    // List<String> processInstanceIds (default value: const [])
    test('to test the property `processInstanceIds`', () async {
      // TODO
    });

    // ProcessInstanceQueryDto processInstanceQuery
    test('to test the property `processInstanceQuery`', () async {
      // TODO
    });

    // HistoricProcessInstanceQueryDto historicProcessInstanceQuery
    test('to test the property `historicProcessInstanceQuery`', () async {
      // TODO
    });


  });

}
