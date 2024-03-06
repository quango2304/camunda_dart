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

// tests for HistoricDecisionInstanceQueryDto
void main() {
  // final instance = HistoricDecisionInstanceQueryDto();

  group('test HistoricDecisionInstanceQueryDto', () {
    // Filter by decision instance id.
    // String decisionInstanceId
    test('to test the property `decisionInstanceId`', () async {
      // TODO
    });

    // Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
    // List<String> decisionInstanceIdIn (default value: const [])
    test('to test the property `decisionInstanceIdIn`', () async {
      // TODO
    });

    // Filter by the decision definition the instances belongs to.
    // String decisionDefinitionId
    test('to test the property `decisionDefinitionId`', () async {
      // TODO
    });

    // Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
    // List<String> decisionDefinitionIdIn (default value: const [])
    test('to test the property `decisionDefinitionIdIn`', () async {
      // TODO
    });

    // Filter by the key of the decision definition the instances belongs to.
    // String decisionDefinitionKey
    test('to test the property `decisionDefinitionKey`', () async {
      // TODO
    });

    // Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
    // List<String> decisionDefinitionKeyIn (default value: const [])
    test('to test the property `decisionDefinitionKeyIn`', () async {
      // TODO
    });

    // Filter by the name of the decision definition the instances belongs to.
    // String decisionDefinitionName
    test('to test the property `decisionDefinitionName`', () async {
      // TODO
    });

    // Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
    // String decisionDefinitionNameLike
    test('to test the property `decisionDefinitionNameLike`', () async {
      // TODO
    });

    // Filter by the process definition the instances belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the process definition the instances belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // Filter by the process instance the instances belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by the case definition the instances belongs to.
    // String caseDefinitionId
    test('to test the property `caseDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the case definition the instances belongs to.
    // String caseDefinitionKey
    test('to test the property `caseDefinitionKey`', () async {
      // TODO
    });

    // Filter by the case instance the instances belongs to.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
    // List<String> activityIdIn (default value: const [])
    test('to test the property `activityIdIn`', () async {
      // TODO
    });

    // Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
    // List<String> activityInstanceIdIn (default value: const [])
    test('to test the property `activityInstanceIdIn`', () async {
      // TODO
    });

    // Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime evaluatedBefore
    test('to test the property `evaluatedBefore`', () async {
      // TODO
    });

    // Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime evaluatedAfter
    test('to test the property `evaluatedAfter`', () async {
      // TODO
    });

    // Restrict to instances that were evaluated by the given user.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
    // String rootDecisionInstanceId
    test('to test the property `rootDecisionInstanceId`', () async {
      // TODO
    });

    // Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
    // bool rootDecisionInstancesOnly
    test('to test the property `rootDecisionInstancesOnly`', () async {
      // TODO
    });

    // Filter by the decision requirements definition the instances belongs to.
    // String decisionRequirementsDefinitionId
    test('to test the property `decisionRequirementsDefinitionId`', () async {
      // TODO
    });

    // Filter by the key of the decision requirements definition the instances belongs to.
    // String decisionRequirementsDefinitionKey
    test('to test the property `decisionRequirementsDefinitionKey`', () async {
      // TODO
    });

    // Include input values in the result. Value may only be `true`, as `false` is the default behavior.
    // bool includeInputs
    test('to test the property `includeInputs`', () async {
      // TODO
    });

    // Include output values in the result. Value may only be `true`, as `false` is the default behavior.
    // bool includeOutputs
    test('to test the property `includeOutputs`', () async {
      // TODO
    });

    // Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
    // bool disableBinaryFetching
    test('to test the property `disableBinaryFetching`', () async {
      // TODO
    });

    // Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
    // bool disableCustomObjectDeserialization
    test('to test the property `disableCustomObjectDeserialization`', () async {
      // TODO
    });


  });

}
