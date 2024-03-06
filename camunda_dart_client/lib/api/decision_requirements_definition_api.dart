//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DecisionRequirementsDefinitionApi {
  DecisionRequirementsDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Decision Requirements Definition by ID
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition to be retrieved.
  Future<Response> getDecisionRequirementsDefinitionByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Definition by ID
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition to be retrieved.
  Future<DecisionRequirementsDefinitionDto?> getDecisionRequirementsDefinitionById(String id,) async {
    final response = await getDecisionRequirementsDefinitionByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionDto',) as DecisionRequirementsDefinitionDto;
    
    }
    return null;
  }

  /// Get Decision Requirements Definition by Key
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.  Returns the latest version of the decision requirements definition  which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<Response> getDecisionRequirementsDefinitionByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Definition by Key
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.  Returns the latest version of the decision requirements definition  which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<DecisionRequirementsDefinitionDto?> getDecisionRequirementsDefinitionByKey(String key,) async {
    final response = await getDecisionRequirementsDefinitionByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionDto',) as DecisionRequirementsDefinitionDto;
    
    }
    return null;
  }

  /// Get Decision Requirements Definition by Key and Tenant ID
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine. Returns the latest version of the decision requirements definition  for a tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<Response> getDecisionRequirementsDefinitionByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}/tenant-id/{tenant-id}'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Definition by Key and Tenant ID
  ///
  /// Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine. Returns the latest version of the decision requirements definition  for a tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<DecisionRequirementsDefinitionDto?> getDecisionRequirementsDefinitionByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getDecisionRequirementsDefinitionByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionDto',) as DecisionRequirementsDefinitionDto;
    
    }
    return null;
  }

  /// Get Decision Requirements Diagram by ID
  ///
  /// Retrieves the diagram of a decision requirements definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  Future<Response> getDecisionRequirementsDefinitionDiagramByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/{id}/diagram'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Diagram by ID
  ///
  /// Retrieves the diagram of a decision requirements definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  Future<MultipartFile?> getDecisionRequirementsDefinitionDiagramById(String id,) async {
    final response = await getDecisionRequirementsDefinitionDiagramByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Decision Requirements Diagram by Key
  ///
  /// Retrieves the diagram of a decision requirements definition. Returns the diagram for the latest version of the decision requirements  definition which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<Response> getDecisionRequirementsDefinitionDiagramByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}/diagram'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Diagram by Key
  ///
  /// Retrieves the diagram of a decision requirements definition. Returns the diagram for the latest version of the decision requirements  definition which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<MultipartFile?> getDecisionRequirementsDefinitionDiagramByKey(String key,) async {
    final response = await getDecisionRequirementsDefinitionDiagramByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Decision Requirements Diagram by Key and Tenant ID
  ///
  /// Retrieves the diagram of a decision requirements definition. Returns the diagram of the latest version of the decision requirements  definition for a tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<Response> getDecisionRequirementsDefinitionDiagramByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}/tenant-id/{tenant-id}/diagram'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Diagram by Key and Tenant ID
  ///
  /// Retrieves the diagram of a decision requirements definition. Returns the diagram of the latest version of the decision requirements  definition for a tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<MultipartFile?> getDecisionRequirementsDefinitionDiagramByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getDecisionRequirementsDefinitionDiagramByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get DMN XML by ID
  ///
  /// Retrieves the DMN XML of a decision requirements definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  Future<Response> getDecisionRequirementsDefinitionDmnXmlByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/{id}/xml'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get DMN XML by ID
  ///
  /// Retrieves the DMN XML of a decision requirements definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  Future<DecisionRequirementsDefinitionXmlDto?> getDecisionRequirementsDefinitionDmnXmlById(String id,) async {
    final response = await getDecisionRequirementsDefinitionDmnXmlByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionXmlDto',) as DecisionRequirementsDefinitionXmlDto;
    
    }
    return null;
  }

  /// Get DMN XML by Key
  ///
  /// Retrieves the DMN XML of a decision requirements definition. Returns the XML for the latest version of the decision requirements  definition which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<Response> getDecisionRequirementsDefinitionDmnXmlByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}/xml'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get DMN XML by Key
  ///
  /// Retrieves the DMN XML of a decision requirements definition. Returns the XML for the latest version of the decision requirements  definition which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  Future<DecisionRequirementsDefinitionXmlDto?> getDecisionRequirementsDefinitionDmnXmlByKey(String key,) async {
    final response = await getDecisionRequirementsDefinitionDmnXmlByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionXmlDto',) as DecisionRequirementsDefinitionXmlDto;
    
    }
    return null;
  }

  /// Get DMN XML by Key and Tenant ID
  ///
  /// Retrieves the DMN XML of a decision requirements definition. Returns the XML of the latest version of the decision requirements  definition for a tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<Response> getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/key/{key}/tenant-id/{tenant-id}/xml'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get DMN XML by Key and Tenant ID
  ///
  /// Retrieves the DMN XML of a decision requirements definition. Returns the XML of the latest version of the decision requirements  definition for a tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision requirements definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant to which the decision requirements definition belongs to.
  Future<DecisionRequirementsDefinitionXmlDto?> getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionRequirementsDefinitionXmlDto',) as DecisionRequirementsDefinitionXmlDto;
    
    }
    return null;
  }

  /// Get Decision Requirements Definitions
  ///
  /// Queries for decision requirements definitions that fulfill given parameters. Parameters may be the properties of decision requirements definitions, such as the name, key or version.  The size of the result set can be retrieved by using the [Get Decision Requirements Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by decision requirements definition id.
  ///
  /// * [String] decisionRequirementsDefinitionIdIn:
  ///   Filter by decision requirements definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision requirements definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision requirements definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the id of the deployment a decision requirement definition belongs to.
  ///
  /// * [String] key:
  ///   Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision requirements definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision requirements definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision requirements definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision requirements definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision requirements definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision requirements definition resources that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionRequirementsDefinitionsWithoutTenantId:
  ///   Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<Response> getDecisionRequirementsDefinitionsWithHttpInfo({ String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionIdIn, String? name, String? nameLike, String? deploymentId, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionRequirementsDefinitionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionIdIn', decisionRequirementsDefinitionIdIn));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (keyLike != null) {
      queryParams.addAll(_queryParams('', 'keyLike', keyLike));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryLike != null) {
      queryParams.addAll(_queryParams('', 'categoryLike', categoryLike));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (latestVersion != null) {
      queryParams.addAll(_queryParams('', 'latestVersion', latestVersion));
    }
    if (resourceName != null) {
      queryParams.addAll(_queryParams('', 'resourceName', resourceName));
    }
    if (resourceNameLike != null) {
      queryParams.addAll(_queryParams('', 'resourceNameLike', resourceNameLike));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDecisionRequirementsDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDecisionRequirementsDefinitionsWithoutTenantId', includeDecisionRequirementsDefinitionsWithoutTenantId));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
    }
    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Definitions
  ///
  /// Queries for decision requirements definitions that fulfill given parameters. Parameters may be the properties of decision requirements definitions, such as the name, key or version.  The size of the result set can be retrieved by using the [Get Decision Requirements Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by decision requirements definition id.
  ///
  /// * [String] decisionRequirementsDefinitionIdIn:
  ///   Filter by decision requirements definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision requirements definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision requirements definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the id of the deployment a decision requirement definition belongs to.
  ///
  /// * [String] key:
  ///   Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision requirements definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision requirements definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision requirements definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision requirements definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision requirements definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision requirements definition resources that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionRequirementsDefinitionsWithoutTenantId:
  ///   Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<List<DecisionRequirementsDefinitionDto>?> getDecisionRequirementsDefinitions({ String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionIdIn, String? name, String? nameLike, String? deploymentId, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionRequirementsDefinitionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getDecisionRequirementsDefinitionsWithHttpInfo( decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn: decisionRequirementsDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, key: key, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId: includeDecisionRequirementsDefinitionsWithoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DecisionRequirementsDefinitionDto>') as List)
        .cast<DecisionRequirementsDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Decision Requirements Definition Count
  ///
  /// Requests the number of decision requirements definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Requirements Definitions](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by decision requirements definition id.
  ///
  /// * [String] decisionRequirementsDefinitionIdIn:
  ///   Filter by decision requirements definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision requirements definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision requirements definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the id of the deployment a decision requirement definition belongs to.
  ///
  /// * [String] key:
  ///   Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision requirements definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision requirements definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision requirements definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision requirements definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision requirements definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision requirements definition resources that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionRequirementsDefinitionsWithoutTenantId:
  ///   Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getDecisionRequirementsDefinitionsCountWithHttpInfo({ String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionIdIn, String? name, String? nameLike, String? deploymentId, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionRequirementsDefinitionsWithoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-requirements-definition/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionIdIn', decisionRequirementsDefinitionIdIn));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (keyLike != null) {
      queryParams.addAll(_queryParams('', 'keyLike', keyLike));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryLike != null) {
      queryParams.addAll(_queryParams('', 'categoryLike', categoryLike));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (latestVersion != null) {
      queryParams.addAll(_queryParams('', 'latestVersion', latestVersion));
    }
    if (resourceName != null) {
      queryParams.addAll(_queryParams('', 'resourceName', resourceName));
    }
    if (resourceNameLike != null) {
      queryParams.addAll(_queryParams('', 'resourceNameLike', resourceNameLike));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDecisionRequirementsDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDecisionRequirementsDefinitionsWithoutTenantId', includeDecisionRequirementsDefinitionsWithoutTenantId));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Decision Requirements Definition Count
  ///
  /// Requests the number of decision requirements definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Requirements Definitions](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by decision requirements definition id.
  ///
  /// * [String] decisionRequirementsDefinitionIdIn:
  ///   Filter by decision requirements definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision requirements definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision requirements definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the id of the deployment a decision requirement definition belongs to.
  ///
  /// * [String] key:
  ///   Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision requirements definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision requirements definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision requirements definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision requirements definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision requirements definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision requirements definition resources that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionRequirementsDefinitionsWithoutTenantId:
  ///   Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getDecisionRequirementsDefinitionsCount({ String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionIdIn, String? name, String? nameLike, String? deploymentId, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionRequirementsDefinitionsWithoutTenantId, }) async {
    final response = await getDecisionRequirementsDefinitionsCountWithHttpInfo( decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn: decisionRequirementsDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, key: key, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId: includeDecisionRequirementsDefinitionsWithoutTenantId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResultDto',) as CountResultDto;
    
    }
    return null;
  }
}
