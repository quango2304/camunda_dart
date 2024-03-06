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

// tests for StartProcessInstanceDto
void main() {
  // final instance = StartProcessInstanceDto();

  group('test StartProcessInstanceDto', () {
    // The business key of the process instance.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // 
    // Map<String, VariableValueDto> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });

    // The case instance id the process instance is to be initialized with.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event.
    // List<ProcessInstanceModificationInstructionDto> startInstructions (default value: const [])
    test('to test the property `startInstructions`', () async {
      // TODO
    });

    // Skip execution listener invocation for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property.
    // bool skipCustomListeners
    test('to test the property `skipCustomListeners`', () async {
      // TODO
    });

    // Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started or ended as part of this request. **Note**: This option is currently only respected when start instructions are submitted via the `startInstructions` property.
    // bool skipIoMappings
    test('to test the property `skipIoMappings`', () async {
      // TODO
    });

    // Indicates if the variables, which was used by the process instance during execution, should be returned. Default value: `false`
    // bool withVariablesInReturn
    test('to test the property `withVariablesInReturn`', () async {
      // TODO
    });


  });

}
