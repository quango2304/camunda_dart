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

// tests for CorrelationMessageDto
void main() {
  // final instance = CorrelationMessageDto();

  group('test CorrelationMessageDto', () {
    // The name of the message to deliver.
    // String messageName
    test('to test the property `messageName`', () async {
      // TODO
    });

    // Used for correlation of process instances that wait for incoming messages. Will only correlate to executions that belong to a process instance with the provided business key.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // Used to correlate the message for a tenant with the given id. Will only correlate to executions and process definitions which belong to the tenant. Must not be supplied in conjunction with a `withoutTenantId`.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // A Boolean value that indicates whether the message should only be correlated to executions and process definitions which belong to no tenant or not. Value may only be `true`, as `false` is the default behavior. Must not be supplied in conjunction with a `tenantId`.
    // bool withoutTenantId (default value: false)
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Used to correlate the message to the process instance with the given id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Used for correlation of process instances that wait for incoming messages. Has to be a JSON object containing key-value pairs that are matched against process instance variables during correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> correlationKeys (default value: const {})
    test('to test the property `correlationKeys`', () async {
      // TODO
    });

    // Local variables used for correlation of executions (process instances) that wait for incoming messages. Has to be a JSON object containing key-value pairs that are matched against local variables during correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> localCorrelationKeys (default value: const {})
    test('to test the property `localCorrelationKeys`', () async {
      // TODO
    });

    // A map of variables that is injected into the triggered execution or process instance after the message has been delivered. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> processVariables (default value: const {})
    test('to test the property `processVariables`', () async {
      // TODO
    });

    // A map of local variables that is injected into the execution waiting on the message. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> processVariablesLocal (default value: const {})
    test('to test the property `processVariablesLocal`', () async {
      // TODO
    });

    // A map of variables that is injected into the new scope triggered by message correlation. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> processVariablesToTriggeredScope (default value: const {})
    test('to test the property `processVariablesToTriggeredScope`', () async {
      // TODO
    });

    // A Boolean value that indicates whether the message should be correlated to exactly one entity or multiple entities. If the value is set to `false`, the message will be correlated to exactly one entity (execution or process definition). If the value is set to `true`, the message will be correlated to multiple executions and a process definition that can be instantiated by this message in one go.
    // bool all (default value: false)
    test('to test the property `all`', () async {
      // TODO
    });

    // A Boolean value that indicates whether the result of the correlation should be returned or not. If this property is set to `true`, there will be returned a list of message correlation result objects. Depending on the all property, there will be either one ore more returned results in the list.  The default value is `false`, which means no result will be returned.
    // bool resultEnabled (default value: false)
    test('to test the property `resultEnabled`', () async {
      // TODO
    });

    // A Boolean value that indicates whether the result of the correlation should contain process variables or not. The parameter resultEnabled should be set to `true` in order to use this it.  The default value is `false`, which means the variables will not be returned.
    // bool variablesInResultEnabled (default value: false)
    test('to test the property `variablesInResultEnabled`', () async {
      // TODO
    });


  });

}
