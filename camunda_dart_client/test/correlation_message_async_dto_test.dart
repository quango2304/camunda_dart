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

// tests for CorrelationMessageAsyncDto
void main() {
  // final instance = CorrelationMessageAsyncDto();

  group('test CorrelationMessageAsyncDto', () {
    // The name of the message to correlate. Corresponds to the 'name' element of the message defined in BPMN 2.0 XML. Can be null to correlate by other criteria only.
    // String messageName
    test('to test the property `messageName`', () async {
      // TODO
    });

    // A list of process instance ids that define a group of process instances to which the operation will correlate a message.  Please note that if `processInstanceIds`, `processInstanceQuery` and `historicProcessInstanceQuery` are defined, the resulting operation will be performed on the union of these sets.
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

    // All variables the operation will set in the root scope of the process instances the message is correlated to.
    // Map<String, VariableValueDto> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });


  });

}
