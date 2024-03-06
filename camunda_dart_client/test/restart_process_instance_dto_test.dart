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

// tests for RestartProcessInstanceDto
void main() {
  // final instance = RestartProcessInstanceDto();

  group('test RestartProcessInstanceDto', () {
    // A list of process instance ids to restart.
    // List<String> processInstanceIds (default value: const [])
    test('to test the property `processInstanceIds`', () async {
      // TODO
    });

    // HistoricProcessInstanceQueryDto historicProcessInstanceQuery
    test('to test the property `historicProcessInstanceQuery`', () async {
      // TODO
    });

    // Skip execution listener invocation for activities that are started as part of this request.
    // bool skipCustomListeners
    test('to test the property `skipCustomListeners`', () async {
      // TODO
    });

    // Skip execution of [input/output variable mappings](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#input-output-variable-mapping) for activities that are started as part of this request.
    // bool skipIoMappings
    test('to test the property `skipIoMappings`', () async {
      // TODO
    });

    // Set the initial set of variables during restart. By default, the last set of variables is used.
    // bool initialVariables
    test('to test the property `initialVariables`', () async {
      // TODO
    });

    // Do not take over the business key of the historic process instance.
    // bool withoutBusinessKey
    test('to test the property `withoutBusinessKey`', () async {
      // TODO
    });

    // **Optional**. A JSON array of instructions that specify which activities to start the process instance at. If this property is omitted, the process instance starts at its default blank start event.
    // List<RestartProcessInstanceModificationInstructionDto> instructions (default value: const [])
    test('to test the property `instructions`', () async {
      // TODO
    });


  });

}
