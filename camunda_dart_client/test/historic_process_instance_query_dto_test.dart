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

// tests for HistoricProcessInstanceQueryDto
void main() {
  // final instance = HistoricProcessInstanceQueryDto();

  group('test HistoricProcessInstanceQueryDto', () {
    // Filter by process instance id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by process instance ids. Must be a JSON array of `Strings`.
    // List<String> processInstanceIds (default value: const [])
    test('to test the property `processInstanceIds`', () async {
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

    // Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Must be a JSON array of `Strings`.
    // List<String> processDefinitionKeyIn (default value: const [])
    test('to test the property `processDefinitionKeyIn`', () async {
      // TODO
    });

    // Filter by the name of the process definition the instances run on.
    // String processDefinitionName
    test('to test the property `processDefinitionName`', () async {
      // TODO
    });

    // Filter by process definition names that the parameter is a substring of.
    // String processDefinitionNameLike
    test('to test the property `processDefinitionNameLike`', () async {
      // TODO
    });

    // Exclude instances that belong to a set of process definitions. Must be a JSON array of `Strings`.
    // List<String> processDefinitionKeyNotIn (default value: const [])
    test('to test the property `processDefinitionKeyNotIn`', () async {
      // TODO
    });

    // Filter by process instance business key.
    // String processInstanceBusinessKey
    test('to test the property `processInstanceBusinessKey`', () async {
      // TODO
    });

    // Filter by a list of business keys. A process instance must have one of the given business keys. Must be a JSON array of `Strings`
    // List<String> processInstanceBusinessKeyIn (default value: const [])
    test('to test the property `processInstanceBusinessKeyIn`', () async {
      // TODO
    });

    // Filter by process instance business key that the parameter is a substring of.
    // String processInstanceBusinessKeyLike
    test('to test the property `processInstanceBusinessKeyLike`', () async {
      // TODO
    });

    // Restrict the query to all process instances that are top level process instances.
    // bool rootProcessInstances
    test('to test the property `rootProcessInstances`', () async {
      // TODO
    });

    // Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior.
    // bool finished
    test('to test the property `finished`', () async {
      // TODO
    });

    // Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior.
    // bool unfinished
    test('to test the property `unfinished`', () async {
      // TODO
    });

    // Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior.
    // bool withIncidents
    test('to test the property `withIncidents`', () async {
      // TODO
    });

    // Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior.
    // bool withRootIncidents
    test('to test the property `withRootIncidents`', () async {
      // TODO
    });

    // Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
    // String incidentType
    test('to test the property `incidentType`', () async {
      // TODO
    });

    // Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents.
    // String incidentStatus
    test('to test the property `incidentStatus`', () async {
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

    // Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedBefore
    test('to test the property `startedBefore`', () async {
      // TODO
    });

    // Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedAfter
    test('to test the property `startedAfter`', () async {
      // TODO
    });

    // Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedBefore
    test('to test the property `finishedBefore`', () async {
      // TODO
    });

    // Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedAfter
    test('to test the property `finishedAfter`', () async {
      // TODO
    });

    // Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime executedActivityAfter
    test('to test the property `executedActivityAfter`', () async {
      // TODO
    });

    // Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime executedActivityBefore
    test('to test the property `executedActivityBefore`', () async {
      // TODO
    });

    // Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime executedJobAfter
    test('to test the property `executedJobAfter`', () async {
      // TODO
    });

    // Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime executedJobBefore
    test('to test the property `executedJobBefore`', () async {
      // TODO
    });

    // Only include process instances that were started by the given user.
    // String startedBy
    test('to test the property `startedBy`', () async {
      // TODO
    });

    // Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
    // String superProcessInstanceId
    test('to test the property `superProcessInstanceId`', () async {
      // TODO
    });

    // Restrict query to one process instance that has a sub process instance with the given id.
    // String subProcessInstanceId
    test('to test the property `subProcessInstanceId`', () async {
      // TODO
    });

    // Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
    // String superCaseInstanceId
    test('to test the property `superCaseInstanceId`', () async {
      // TODO
    });

    // Restrict query to one process instance that has a sub case instance with the given id.
    // String subCaseInstanceId
    test('to test the property `subCaseInstanceId`', () async {
      // TODO
    });

    // Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Must be a JSON array of `Strings`
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Restrict to instances that executed an activity with one of given ids. Must be a JSON array of `Strings`
    // List<String> executedActivityIdIn (default value: const [])
    test('to test the property `executedActivityIdIn`', () async {
      // TODO
    });

    // Restrict to instances that have an active activity with one of given ids. Must be a JSON array of `Strings`
    // List<String> activeActivityIdIn (default value: const [])
    test('to test the property `activeActivityIdIn`', () async {
      // TODO
    });

    // Restrict to instances that are active.
    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Restrict to instances that are suspended.
    // bool suspended
    test('to test the property `suspended`', () async {
      // TODO
    });

    // Restrict to instances that are completed.
    // bool completed
    test('to test the property `completed`', () async {
      // TODO
    });

    // Restrict to instances that are externallyTerminated.
    // bool externallyTerminated
    test('to test the property `externallyTerminated`', () async {
      // TODO
    });

    // Restrict to instances that are internallyTerminated.
    // bool internallyTerminated
    test('to test the property `internallyTerminated`', () async {
      // TODO
    });

    // A JSON array to only include process instances that have/had variables with certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name` (`String`) is the variable name, `operator` (`String`) is the comparison operator to be used and `value` the variable value.  Value may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. 
    // List<VariableQueryParameterDto> variables (default value: const [])
    test('to test the property `variables`', () async {
      // TODO
    });

    // Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal.
    // bool variableNamesIgnoreCase
    test('to test the property `variableNamesIgnoreCase`', () async {
      // TODO
    });

    // Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal.
    // bool variableValuesIgnoreCase
    test('to test the property `variableValuesIgnoreCase`', () async {
      // TODO
    });

    // A JSON array of nested historic process instance queries with OR semantics.  A process instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a process instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All process instance query properties can be used except for: `sorting`  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries.
    // List<HistoricProcessInstanceQueryDto> orQueries (default value: const [])
    test('to test the property `orQueries`', () async {
      // TODO
    });

    // Apply sorting of the result
    // List<HistoricProcessInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
