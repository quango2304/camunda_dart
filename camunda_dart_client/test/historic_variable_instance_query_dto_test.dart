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

// tests for HistoricVariableInstanceQueryDto
void main() {
  // final instance = HistoricVariableInstanceQueryDto();

  group('test HistoricVariableInstanceQueryDto', () {
    // Filter by variable name.
    // String variableName
    test('to test the property `variableName`', () async {
      // TODO
    });

    // Restrict to variables with a name like the parameter.
    // String variableNameLike
    test('to test the property `variableNameLike`', () async {
      // TODO
    });

    // Filter by variable value. May be `String`, `Number` or `Boolean`.
    // Object variableValue
    test('to test the property `variableValue`', () async {
      // TODO
    });

    // Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
    // List<String> variableTypeIn (default value: const [])
    test('to test the property `variableTypeIn`', () async {
      // TODO
    });

    // Include variables that has already been deleted during the execution.
    // bool includeDeleted
    test('to test the property `includeDeleted`', () async {
      // TODO
    });

    // Filter by the process instance the variable belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed  process instance ids.
    // List<String> processInstanceIdIn (default value: const [])
    test('to test the property `processInstanceIdIn`', () async {
      // TODO
    });

    // Filter by the process definition the variable belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by a key of the process definition the variable belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and  execution ids.
    // List<String> executionIdIn (default value: const [])
    test('to test the property `executionIdIn`', () async {
      // TODO
    });

    // Filter by the case instance the variable belongs to.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and  case execution ids.
    // List<String> caseExecutionIdIn (default value: const [])
    test('to test the property `caseExecutionIdIn`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and  case activity ids.
    // List<String> caseActivityIdIn (default value: const [])
    test('to test the property `caseActivityIdIn`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and  task ids.
    // List<String> taskIdIn (default value: const [])
    test('to test the property `taskIdIn`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and  activity instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Only include historic variable instances which belong to one of the passed  variable names.
    // List<String> variableNameIn (default value: const [])
    test('to test the property `variableNameIn`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                      an object that specifies one ordering. The position in the array                      identifies the rank of an ordering, i.e., whether it is primary, secondary,                      etc. Sorting has no effect for `count` endpoints
    // List<HistoricVariableInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
