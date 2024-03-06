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

// tests for ExternalTaskFailureDto
void main() {
  // final instance = ExternalTaskFailureDto();

  group('test ExternalTaskFailureDto', () {
    // **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task.
    // String workerId
    test('to test the property `workerId`', () async {
      // TODO
    });

    // An message indicating the reason of the failure.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // A detailed error description.
    // String errorDetails
    test('to test the property `errorDetails`', () async {
      // TODO
    });

    // A number of how often the task should be retried. Must be >= 0. If this is 0, an incident is created and the task cannot be fetched anymore unless the retries are increased again. The incident's message is set to the `errorMessage` parameter.
    // int retries
    test('to test the property `retries`', () async {
      // TODO
    });

    // A timeout in milliseconds before the external task becomes available again for fetching. Must be >= 0.
    // int retryTimeout
    test('to test the property `retryTimeout`', () async {
      // TODO
    });

    // A JSON object containing variable key-value pairs. Each key is a variable name and each value a JSON variable value object with the following properties:
    // Map<String, VariableValueDto> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });

    // A JSON object containing local variable key-value pairs. Local variables are set only in the scope of external task. Each key is a variable name and each value a JSON variable value object with the following properties:
    // Map<String, VariableValueDto> localVariables (default value: const {})
    test('to test the property `localVariables`', () async {
      // TODO
    });


  });

}
