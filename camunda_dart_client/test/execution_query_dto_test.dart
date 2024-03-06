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

// tests for ExecutionQueryDto
void main() {
  // final instance = ExecutionQueryDto();

  group('test ExecutionQueryDto', () {
    // Filter by the business key of the process instances the executions belong to.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // Filter by the process definition the executions run on.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the process definition the executions run on.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Filter by the id of the process instance the execution belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by the id of the activity the execution currently executes.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Select only those executions that expect a signal of the given name.
    // String signalEventSubscriptionName
    test('to test the property `signalEventSubscriptionName`', () async {
      // TODO
    });

    // Select only those executions that expect a message of the given name.
    // String messageEventSubscriptionName
    test('to test the property `messageEventSubscriptionName`', () async {
      // TODO
    });

    // Only include active executions. Value may only be `true`, as `false` is the default behavior.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Filter by the incident id.
    // String incidentId
    test('to test the property `incidentId`', () async {
      // TODO
    });

    // Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
    // String incidentType
    test('to test the property `incidentType`', () async {
      // TODO
    });

    // Filter by the incident message. Exact match.
    // String incidentMessage
    test('to test the property `incidentMessage`', () async {
      // TODO
    });

    // Filter by the incident message that the parameter is a substring of.
    // String incidentMessageLike
    test('to test the property `incidentMessageLike`', () async {
      // TODO
    });

    // Filter by a  list of tenant ids. An execution must have one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // An array to only include executions that have variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.
    // List<VariableQueryParameterDto> variables (default value: const [])
    test('to test the property `variables`', () async {
      // TODO
    });

    // An array to only include executions that belong to a process instance with variables with certain values.  The array consists of objects with the three properties `name`, `operator` and `value`. `name (String)` is the variable name, `operator (String)` is the comparison operator to be used and `value` the variable value. `value` may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to.
    // List<VariableQueryParameterDto> processVariables (default value: const [])
    test('to test the property `processVariables`', () async {
      // TODO
    });

    // Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint
    // List<ExecutionQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
