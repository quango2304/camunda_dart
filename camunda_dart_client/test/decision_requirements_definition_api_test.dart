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


/// tests for DecisionRequirementsDefinitionApi
void main() {
  // final instance = DecisionRequirementsDefinitionApi();

  group('tests for DecisionRequirementsDefinitionApi', () {
    // Get Decision Requirements Definition by ID
    //
    // Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.
    //
    //Future<DecisionRequirementsDefinitionDto> getDecisionRequirementsDefinitionById(String id) async
    test('test getDecisionRequirementsDefinitionById', () async {
      // TODO
    });

    // Get Decision Requirements Definition by Key
    //
    // Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.  Returns the latest version of the decision requirements definition  which belongs to no tenant.
    //
    //Future<DecisionRequirementsDefinitionDto> getDecisionRequirementsDefinitionByKey(String key) async
    test('test getDecisionRequirementsDefinitionByKey', () async {
      // TODO
    });

    // Get Decision Requirements Definition by Key and Tenant ID
    //
    // Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine. Returns the latest version of the decision requirements definition  for a tenant.
    //
    //Future<DecisionRequirementsDefinitionDto> getDecisionRequirementsDefinitionByKeyAndTenantId(String key, String tenantId) async
    test('test getDecisionRequirementsDefinitionByKeyAndTenantId', () async {
      // TODO
    });

    // Get Decision Requirements Diagram by ID
    //
    // Retrieves the diagram of a decision requirements definition.
    //
    //Future<MultipartFile> getDecisionRequirementsDefinitionDiagramById(String id) async
    test('test getDecisionRequirementsDefinitionDiagramById', () async {
      // TODO
    });

    // Get Decision Requirements Diagram by Key
    //
    // Retrieves the diagram of a decision requirements definition. Returns the diagram for the latest version of the decision requirements  definition which belongs to no tenant.
    //
    //Future<MultipartFile> getDecisionRequirementsDefinitionDiagramByKey(String key) async
    test('test getDecisionRequirementsDefinitionDiagramByKey', () async {
      // TODO
    });

    // Get Decision Requirements Diagram by Key and Tenant ID
    //
    // Retrieves the diagram of a decision requirements definition. Returns the diagram of the latest version of the decision requirements  definition for a tenant.
    //
    //Future<MultipartFile> getDecisionRequirementsDefinitionDiagramByKeyAndTenantId(String key, String tenantId) async
    test('test getDecisionRequirementsDefinitionDiagramByKeyAndTenantId', () async {
      // TODO
    });

    // Get DMN XML by ID
    //
    // Retrieves the DMN XML of a decision requirements definition.
    //
    //Future<DecisionRequirementsDefinitionXmlDto> getDecisionRequirementsDefinitionDmnXmlById(String id) async
    test('test getDecisionRequirementsDefinitionDmnXmlById', () async {
      // TODO
    });

    // Get DMN XML by Key
    //
    // Retrieves the DMN XML of a decision requirements definition. Returns the XML for the latest version of the decision requirements  definition which belongs to no tenant.
    //
    //Future<DecisionRequirementsDefinitionXmlDto> getDecisionRequirementsDefinitionDmnXmlByKey(String key) async
    test('test getDecisionRequirementsDefinitionDmnXmlByKey', () async {
      // TODO
    });

    // Get DMN XML by Key and Tenant ID
    //
    // Retrieves the DMN XML of a decision requirements definition. Returns the XML of the latest version of the decision requirements  definition for a tenant.
    //
    //Future<DecisionRequirementsDefinitionXmlDto> getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId(String key, String tenantId) async
    test('test getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId', () async {
      // TODO
    });

    // Get Decision Requirements Definitions
    //
    // Queries for decision requirements definitions that fulfill given parameters. Parameters may be the properties of decision requirements definitions, such as the name, key or version.  The size of the result set can be retrieved by using the [Get Decision Requirements Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query-count/) method.
    //
    //Future<List<DecisionRequirementsDefinitionDto>> getDecisionRequirementsDefinitions({ String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionIdIn, String name, String nameLike, String deploymentId, String key, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String tenantIdIn, bool withoutTenantId, bool includeDecisionRequirementsDefinitionsWithoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getDecisionRequirementsDefinitions', () async {
      // TODO
    });

    // Get Decision Requirements Definition Count
    //
    // Requests the number of decision requirements definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Requirements Definitions](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query/) method.
    //
    //Future<CountResultDto> getDecisionRequirementsDefinitionsCount({ String decisionRequirementsDefinitionId, String decisionRequirementsDefinitionIdIn, String name, String nameLike, String deploymentId, String key, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String tenantIdIn, bool withoutTenantId, bool includeDecisionRequirementsDefinitionsWithoutTenantId }) async
    test('test getDecisionRequirementsDefinitionsCount', () async {
      // TODO
    });

  });
}
