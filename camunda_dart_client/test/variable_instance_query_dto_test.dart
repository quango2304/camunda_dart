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

// tests for VariableInstanceQueryDto
void main() {
  // final instance = VariableInstanceQueryDto();

  group('test VariableInstanceQueryDto', () {
    // Filter by variable instance name.
    // String variableName
    test('to test the property `variableName`', () async {
      // TODO
    });

    // Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
    // String variableNameLike
    test('to test the property `variableNameLike`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  process instance ids.
    // List<String> processInstanceIdIn (default value: const [])
    test('to test the property `processInstanceIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  execution ids.
    // List<String> executionIdIn (default value: const [])
    test('to test the property `executionIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  case instance ids.
    // List<String> caseInstanceIdIn (default value: const [])
    test('to test the property `caseInstanceIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  case execution ids.
    // List<String> caseExecutionIdIn (default value: const [])
    test('to test the property `caseExecutionIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  task ids.
    // List<String> taskIdIn (default value: const [])
    test('to test the property `taskIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  batch ids.
    // List<String> batchIdIn (default value: const [])
    test('to test the property `batchIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  activity instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of the passed  tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // An array to only include variable instances that have the certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`
    // List<VariableQueryParameterDto> variableValues (default value: const [])
    test('to test the property `variableValues`', () async {
      // TODO
    });

    // Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // Only include variable instances which belong to one of passed scope ids.
    // List<String> variableScopeIdIn (default value: const [])
    test('to test the property `variableScopeIdIn`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is an object that specifies one ordering.                       The position in the array identifies the rank of an ordering, i.e., whether it is primary, secondary, etc.                       Sorting has no effect for `count` endpoints
    // List<VariableInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
