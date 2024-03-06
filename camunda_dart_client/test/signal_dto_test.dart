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

// tests for SignalDto
void main() {
  // final instance = SignalDto();

  group('test SignalDto', () {
    // The name of the signal to deliver.  **Note**: This property is mandatory.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Optionally specifies a single execution which is notified by the signal.  **Note**: If no execution id is defined the signal is broadcasted to all subscribed handlers. 
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // A JSON object containing variable key-value pairs. Each key is a variable name and each value a JSON variable value object.
    // Map<String, VariableValueDto> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });

    // Specifies a tenant to deliver the signal. The signal can only be received on executions or process definitions which belongs to the given tenant.  **Note**: Cannot be used in combination with executionId.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // If true the signal can only be received on executions or process definitions which belongs to no tenant. Value may not be false as this is the default behavior.  **Note**: Cannot be used in combination with `executionId`.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });


  });

}
