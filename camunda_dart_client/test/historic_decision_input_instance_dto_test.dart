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

// tests for HistoricDecisionInputInstanceDto
void main() {
  // final instance = HistoricDecisionInputInstanceDto();

  group('test HistoricDecisionInputInstanceDto', () {
    // The id of the decision input value.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the decision instance the input value belongs to.
    // String decisionInstanceId
    test('to test the property `decisionInstanceId`', () async {
      // TODO
    });

    // The id of the clause the input value belongs to.
    // String clauseId
    test('to test the property `clauseId`', () async {
      // TODO
    });

    // The name of the clause the input value belongs to.
    // String clauseName
    test('to test the property `clauseName`', () async {
      // TODO
    });

    // An error message in case a Java Serialized Object could not be de-serialized.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // The value type of the variable.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The time the variable was inserted.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime createTime
    test('to test the property `createTime`', () async {
      // TODO
    });

    // The time after which the entry should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this entry.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The variable's value. Value differs depending on the variable's type and on the `disableCustomObjectDeserialization` parameter.
    // Object value
    test('to test the property `value`', () async {
      // TODO
    });

    // A JSON object containing additional, value-type-dependent properties.  For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name.  * `serializationDataFormat`: The serialization format used to store the variable.
    // Map<String, Object> valueInfo (default value: const {})
    test('to test the property `valueInfo`', () async {
      // TODO
    });


  });

}
