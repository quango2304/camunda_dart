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

// tests for ProcessInstanceQueryDto
void main() {
  // final instance = ProcessInstanceQueryDto();

  group('test ProcessInstanceQueryDto', () {
    // Filter by the deployment the id belongs to.
    // String deploymentId
    test('to test the property `deploymentId`', () async {
      // TODO
    });

    // Filter by the process definition the instances run on.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the process definition the instances run on.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Must be a JSON array of Strings.
    // List<String> processDefinitionKeyIn (default value: const [])
    test('to test the property `processDefinitionKeyIn`', () async {
      // TODO
    });

    // Exclude instances by a list of process definition keys. A process instance must not have one of the given process definition keys. Must be a JSON array of Strings.
    // List<String> processDefinitionKeyNotIn (default value: const [])
    test('to test the property `processDefinitionKeyNotIn`', () async {
      // TODO
    });

    // Filter by process instance business key.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // Filter by process instance business key that the parameter is a substring of.
    // String businessKeyLike
    test('to test the property `businessKeyLike`', () async {
      // TODO
    });

    // Filter by case instance id.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
    // String superProcessInstance
    test('to test the property `superProcessInstance`', () async {
      // TODO
    });

    // Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
    // String subProcessInstance
    test('to test the property `subProcessInstance`', () async {
      // TODO
    });

    // Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
    // String superCaseInstance
    test('to test the property `superCaseInstance`', () async {
      // TODO
    });

    // Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
    // String subCaseInstance
    test('to test the property `subCaseInstance`', () async {
      // TODO
    });

    // Only include active process instances. Value may only be true, as false is the default behavior.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Only include suspended process instances. Value may only be true, as false is the default behavior.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Filter by a list of process instance ids. Must be a JSON array of Strings.
    // List<String> processInstanceIds (default value: const [])
    test('to test the property `processInstanceIds`', () async {
      // TODO
    });

    // Filter by presence of incidents. Selects only process instances that have an incident.
    // bool withIncident
    test('to test the property `withIncident`', () async {
      // TODO
    });

    // Filter by the incident id.
    // String incidentId
    test('to test the property `incidentId`', () async {
      // TODO
    });

    // Filter by the incident type. See the User Guide for a list of incident types.
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

    // Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Must be a JSON array of Strings.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include process instances which belong to no tenant. Value may only be true, as false is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Only include process instances which process definition has no tenant id.
    // bool processDefinitionWithoutTenantId
    test('to test the property `processDefinitionWithoutTenantId`', () async {
      // TODO
    });

    // Filter by a list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Restrict the query to all process instances that are top level process instances.
    // bool rootProcessInstances
    test('to test the property `rootProcessInstances`', () async {
      // TODO
    });

    // Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances)
    // bool leafProcessInstances
    test('to test the property `leafProcessInstances`', () async {
      // TODO
    });

    // A JSON array to only include process instances that have variables with certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name` (String) is the variable name, `operator` (String) is the comparison operator to be used and `value` the variable value. The `value` may be String, Number or Boolean.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.
    // List<VariableQueryParameterDto> variables (default value: const [])
    test('to test the property `variables`', () async {
      // TODO
    });

    // Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // A JSON array of nested process instance queries with OR semantics. A process instance matches a nested query if it fulfills at least one of the query's predicates. With multiple nested queries, a process instance must fulfill at least one predicate of each query (Conjunctive Normal Form). All process instance query properties can be used except for: `sorting` See the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
    // List<ProcessInstanceQueryDto> orQueries (default value: const [])
    test('to test the property `orQueries`', () async {
      // TODO
    });

    // Apply sorting of the result
    // List<ProcessInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
