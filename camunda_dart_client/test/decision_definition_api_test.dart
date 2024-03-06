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


/// tests for DecisionDefinitionApi
void main() {
  // final instance = DecisionDefinitionApi();

  group('tests for DecisionDefinitionApi', () {
    // Evaluate By Id
    //
    // Evaluates a given decision and returns the result. The input values of the decision have to be supplied in the request body.
    //
    //Future<List<Map<String, VariableValueDto>>> evaluateDecisionById(String id, { EvaluateDecisionDto evaluateDecisionDto }) async
    test('test evaluateDecisionById', () async {
      // TODO
    });

    // Evaluate By Key
    //
    // Evaluates the latest version of the decision definition which belongs to no tenant. The input values of the decision have to be supplied in the request body.
    //
    //Future<List<Map<String, VariableValueDto>>> evaluateDecisionByKey(String key, { EvaluateDecisionDto evaluateDecisionDto }) async
    test('test evaluateDecisionByKey', () async {
      // TODO
    });

    // Evaluate By Key And Tenant
    //
    // Evaluates the latest version of the decision definition for tenant. The input values of the decision have to be supplied in the request body.
    //
    //Future<List<Map<String, VariableValueDto>>> evaluateDecisionByKeyAndTenant(String key, String tenantId, { EvaluateDecisionDto evaluateDecisionDto }) async
    test('test evaluateDecisionByKeyAndTenant', () async {
      // TODO
    });

    // Get Decision Definition By Id
    //
    // Retrieves a decision definition by id, according to the `DecisionDefinition` interface in the engine.
    //
    //Future<DecisionDefinitionDto> getDecisionDefinitionById(String id) async
    test('test getDecisionDefinitionById', () async {
      // TODO
    });

    // Get Decision Definition By Key
    //
    // Retrieves the latest version of the decision definition which belongs to no tenant.
    //
    //Future<DecisionDefinitionDto> getDecisionDefinitionByKey(String key) async
    test('test getDecisionDefinitionByKey', () async {
      // TODO
    });

    // Get Decision Definition By Key And Tenant Id
    //
    // Retrieves the latest version of the decision definition for tenant
    //
    //Future<DecisionDefinitionDto> getDecisionDefinitionByKeyAndTenantId(String key, String tenantId) async
    test('test getDecisionDefinitionByKeyAndTenantId', () async {
      // TODO
    });

    // Get Diagram
    //
    // Retrieves the diagram of a decision definition.
    //
    //Future<MultipartFile> getDecisionDefinitionDiagram(String id) async
    test('test getDecisionDefinitionDiagram', () async {
      // TODO
    });

    // Get Diagram By Key
    //
    // Returns the diagram for the latest version of the decision definition which belongs to no tenant
    //
    //Future<MultipartFile> getDecisionDefinitionDiagramByKey(String key) async
    test('test getDecisionDefinitionDiagramByKey', () async {
      // TODO
    });

    // Get Diagram By Key And Tenant
    //
    // Returns the XML of the latest version of the decision definition for tenant.
    //
    //Future<MultipartFile> getDecisionDefinitionDiagramByKeyAndTenant(String key, String tenantId) async
    test('test getDecisionDefinitionDiagramByKeyAndTenant', () async {
      // TODO
    });

    // Get XML By Id
    //
    // Retrieves the DMN XML of a decision definition.
    //
    //Future<DecisionDefinitionDiagramDto> getDecisionDefinitionDmnXmlById(String id) async
    test('test getDecisionDefinitionDmnXmlById', () async {
      // TODO
    });

    // Get XML By Key
    //
    // Retrieves the XML for the latest version of the decision definition which belongs to no tenant.
    //
    //Future<DecisionDefinitionDiagramDto> getDecisionDefinitionDmnXmlByKey(String key) async
    test('test getDecisionDefinitionDmnXmlByKey', () async {
      // TODO
    });

    // Get XML By Key and Tenant
    //
    // Retrieves the XML of the latest version of the decision definition for tenant
    //
    //Future<DecisionDefinitionDiagramDto> getDecisionDefinitionDmnXmlByKeyAndTenant(String key, String tenantId) async
    test('test getDecisionDefinitionDmnXmlByKeyAndTenant', () async {
      // TODO
    });

    // Get List
    //
    // Queries for decision definitions that fulfill given parameters. Parameters may be the properties of decision definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Decision Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query-count/) method.
    //
    //Future<List<DecisionDefinitionDto>> getDecisionDefinitions({ String sortBy, String sortOrder, int firstResult, int maxResults, String decisionDefinitionId, String decisionDefinitionIdIn, String name, String nameLike, String deploymentId, DateTime deployedAfter, DateTime deployedAt, String key, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionKey, bool withoutDecisionRequirementsDefinition, String tenantIdIn, bool withoutTenantId, bool includeDecisionDefinitionsWithoutTenantId, String versionTag, String versionTagLike }) async
    test('test getDecisionDefinitions', () async {
      // TODO
    });

    // Get List Count
    //
    // Requests the number of decision definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Definition](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query/) method.
    //
    //Future<CountResultDto> getDecisionDefinitionsCount({ String decisionDefinitionId, String decisionDefinitionIdIn, String name, String nameLike, String deploymentId, DateTime deployedAfter, DateTime deployedAt, String key, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionKey, bool withoutDecisionRequirementsDefinition, String tenantIdIn, bool withoutTenantId, bool includeDecisionDefinitionsWithoutTenantId, String versionTag, String versionTagLike }) async
    test('test getDecisionDefinitionsCount', () async {
      // TODO
    });

    // Update History Time to Live
    //
    // Updates history time to live for decision definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
    //
    //Future updateHistoryTimeToLiveByDecisionDefinitionId(String id, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByDecisionDefinitionId', () async {
      // TODO
    });

    // Update History Time to Live By Key
    //
    // Updates the latest version of the decision definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
    //
    //Future updateHistoryTimeToLiveByDecisionDefinitionKey(String key, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByDecisionDefinitionKey', () async {
      // TODO
    });

    // Update History Time to Live By Key And Tenant
    //
    // Updates the latest version of the decision definition for tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
    //
    //Future updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant(String key, String tenantId, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant', () async {
      // TODO
    });

  });
}
