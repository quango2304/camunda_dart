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


/// tests for HistoricDecisionInstanceApi
void main() {
  // final instance = HistoricDecisionInstanceApi();

  group('tests for HistoricDecisionInstanceApi', () {
    // Delete Async (POST)
    //
    // Delete multiple historic decision instances asynchronously (batch). At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery`  has to be provided. If both are provided then all instances matching query  criterion and instances from the list will be deleted.
    //
    //Future<BatchDto> deleteAsync({ DeleteHistoricDecisionInstancesDto deleteHistoricDecisionInstancesDto }) async
    test('test deleteAsync', () async {
      // TODO
    });

    // Get Historic Decision Instance
    //
    // Retrieves a historic decision instance by id, according to the  `HistoricDecisionInstance` interface in the engine.
    //
    //Future<HistoricDecisionInstanceDto> getHistoricDecisionInstance(String id, { bool includeInputs, bool includeOutputs, bool disableBinaryFetching, bool disableCustomObjectDeserialization }) async
    test('test getHistoricDecisionInstance', () async {
      // TODO
    });

    // Get Historic Decision Instances
    //
    // Queries for historic decision instances that fulfill the given parameters.  The size of the result set can be retrieved by using the  [Get Historic Decision Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query-count/)  method.
    //
    //Future<List<HistoricDecisionInstanceDto>> getHistoricDecisionInstances({ String decisionInstanceId, String decisionInstanceIdIn, String decisionDefinitionId, String decisionDefinitionIdIn, String decisionDefinitionKey, String decisionDefinitionKeyIn, String decisionDefinitionName, String decisionDefinitionNameLike, String processDefinitionId, String processDefinitionKey, String processInstanceId, String caseDefinitionId, String caseDefinitionKey, String caseInstanceId, String activityIdIn, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, DateTime evaluatedBefore, DateTime evaluatedAfter, String userId, String rootDecisionInstanceId, bool rootDecisionInstancesOnly, String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionKey, bool includeInputs, bool includeOutputs, bool disableBinaryFetching, bool disableCustomObjectDeserialization, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricDecisionInstances', () async {
      // TODO
    });

    // Get Historic Decision Instance Count
    //
    // Queries for the number of historic decision instances that fulfill the given parameters.  Takes the same parameters as the  [Get Historic Decision Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query/)  method.
    //
    //Future<CountResultDto> getHistoricDecisionInstancesCount({ String decisionInstanceId, String decisionInstanceIdIn, String decisionDefinitionId, String decisionDefinitionIdIn, String decisionDefinitionKey, String decisionDefinitionKeyIn, String decisionDefinitionName, String decisionDefinitionNameLike, String processDefinitionId, String processDefinitionKey, String processInstanceId, String caseDefinitionId, String caseDefinitionKey, String caseInstanceId, String activityIdIn, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, DateTime evaluatedBefore, DateTime evaluatedAfter, String userId, String rootDecisionInstanceId, bool rootDecisionInstancesOnly, String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionKey }) async
    test('test getHistoricDecisionInstancesCount', () async {
      // TODO
    });

    // Set Removal Time Async (POST)
    //
    // Sets the removal time to multiple historic decision instances asynchronously (batch).  At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
    //
    //Future<BatchDto> setRemovalTimeAsyncHistoricDecisionInstance({ SetRemovalTimeToHistoricDecisionInstancesDto setRemovalTimeToHistoricDecisionInstancesDto }) async
    test('test setRemovalTimeAsyncHistoricDecisionInstance', () async {
      // TODO
    });

  });
}
