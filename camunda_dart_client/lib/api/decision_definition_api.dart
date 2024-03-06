//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DecisionDefinitionApi {
  DecisionDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Evaluate By Id
  ///
  /// Evaluates a given decision and returns the result. The input values of the decision have to be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to be evaluated.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<Response> evaluateDecisionByIdWithHttpInfo(String id, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/{id}/evaluate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = evaluateDecisionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Evaluate By Id
  ///
  /// Evaluates a given decision and returns the result. The input values of the decision have to be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to be evaluated.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<List<Map<String, VariableValueDto>>?> evaluateDecisionById(String id, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    final response = await evaluateDecisionByIdWithHttpInfo(id,  evaluateDecisionDto: evaluateDecisionDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Map<String, VariableValueDto>>'))
        .cast<Map>()
        .toList(growable: false);

    }
    return null;
  }

  /// Evaluate By Key
  ///
  /// Evaluates the latest version of the decision definition which belongs to no tenant. The input values of the decision have to be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be evaluated.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<Response> evaluateDecisionByKeyWithHttpInfo(String key, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/evaluate'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = evaluateDecisionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Evaluate By Key
  ///
  /// Evaluates the latest version of the decision definition which belongs to no tenant. The input values of the decision have to be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be evaluated.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<List<Map<String, VariableValueDto>>?> evaluateDecisionByKey(String key, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    final response = await evaluateDecisionByKeyWithHttpInfo(key,  evaluateDecisionDto: evaluateDecisionDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Map<String, VariableValueDto>>'))
        .cast<Map>()
        .toList(growable: false);

    }
    return null;
  }

  /// Evaluate By Key And Tenant
  ///
  /// Evaluates the latest version of the decision definition for tenant. The input values of the decision have to be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be evaluated.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<Response> evaluateDecisionByKeyAndTenantWithHttpInfo(String key, String tenantId, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/tenant-id/{tenant-id}/evaluate'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = evaluateDecisionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Evaluate By Key And Tenant
  ///
  /// Evaluates the latest version of the decision definition for tenant. The input values of the decision have to be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be evaluated.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  ///
  /// * [EvaluateDecisionDto] evaluateDecisionDto:
  Future<List<Map<String, VariableValueDto>>?> evaluateDecisionByKeyAndTenant(String key, String tenantId, { EvaluateDecisionDto? evaluateDecisionDto, }) async {
    final response = await evaluateDecisionByKeyAndTenantWithHttpInfo(key, tenantId,  evaluateDecisionDto: evaluateDecisionDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Map<String, VariableValueDto>>'))
        .cast<Map>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Decision Definition By Id
  ///
  /// Retrieves a decision definition by id, according to the `DecisionDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to be retrieved.
  Future<Response> getDecisionDefinitionByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/{id}'
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

  /// Get Decision Definition By Id
  ///
  /// Retrieves a decision definition by id, according to the `DecisionDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to be retrieved.
  Future<DecisionDefinitionDto?> getDecisionDefinitionById(String id,) async {
    final response = await getDecisionDefinitionByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDto',) as DecisionDefinitionDto;
    
    }
    return null;
  }

  /// Get Decision Definition By Key
  ///
  /// Retrieves the latest version of the decision definition which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  Future<Response> getDecisionDefinitionByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}'
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

  /// Get Decision Definition By Key
  ///
  /// Retrieves the latest version of the decision definition which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  Future<DecisionDefinitionDto?> getDecisionDefinitionByKey(String key,) async {
    final response = await getDecisionDefinitionByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDto',) as DecisionDefinitionDto;
    
    }
    return null;
  }

  /// Get Decision Definition By Key And Tenant Id
  ///
  /// Retrieves the latest version of the decision definition for tenant
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<Response> getDecisionDefinitionByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/tenant-id/{tenant-id}'
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

  /// Get Decision Definition By Key And Tenant Id
  ///
  /// Retrieves the latest version of the decision definition for tenant
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<DecisionDefinitionDto?> getDecisionDefinitionByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getDecisionDefinitionByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDto',) as DecisionDefinitionDto;
    
    }
    return null;
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram of a decision definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<Response> getDecisionDefinitionDiagramWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/{id}/diagram'
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

  /// Get Diagram
  ///
  /// Retrieves the diagram of a decision definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<MultipartFile?> getDecisionDefinitionDiagram(String id,) async {
    final response = await getDecisionDefinitionDiagramWithHttpInfo(id,);
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

  /// Get Diagram By Key
  ///
  /// Returns the diagram for the latest version of the decision definition which belongs to no tenant
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  Future<Response> getDecisionDefinitionDiagramByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/diagram'
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

  /// Get Diagram By Key
  ///
  /// Returns the diagram for the latest version of the decision definition which belongs to no tenant
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  Future<MultipartFile?> getDecisionDefinitionDiagramByKey(String key,) async {
    final response = await getDecisionDefinitionDiagramByKeyWithHttpInfo(key,);
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

  /// Get Diagram By Key And Tenant
  ///
  /// Returns the XML of the latest version of the decision definition for tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<Response> getDecisionDefinitionDiagramByKeyAndTenantWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/tenant-id/{tenant-id}/diagram'
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

  /// Get Diagram By Key And Tenant
  ///
  /// Returns the XML of the latest version of the decision definition for tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<MultipartFile?> getDecisionDefinitionDiagramByKeyAndTenant(String key, String tenantId,) async {
    final response = await getDecisionDefinitionDiagramByKeyAndTenantWithHttpInfo(key, tenantId,);
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

  /// Get XML By Id
  ///
  /// Retrieves the DMN XML of a decision definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition.
  Future<Response> getDecisionDefinitionDmnXmlByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/{id}/xml'
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

  /// Get XML By Id
  ///
  /// Retrieves the DMN XML of a decision definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition.
  Future<DecisionDefinitionDiagramDto?> getDecisionDefinitionDmnXmlById(String id,) async {
    final response = await getDecisionDefinitionDmnXmlByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDiagramDto',) as DecisionDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get XML By Key
  ///
  /// Retrieves the XML for the latest version of the decision definition which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof).
  Future<Response> getDecisionDefinitionDmnXmlByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/xml'
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

  /// Get XML By Key
  ///
  /// Retrieves the XML for the latest version of the decision definition which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof).
  Future<DecisionDefinitionDiagramDto?> getDecisionDefinitionDmnXmlByKey(String key,) async {
    final response = await getDecisionDefinitionDmnXmlByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDiagramDto',) as DecisionDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get XML By Key and Tenant
  ///
  /// Retrieves the XML of the latest version of the decision definition for tenant
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof).
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<Response> getDecisionDefinitionDmnXmlByKeyAndTenantWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/tenant-id/{tenant-id}/xml'
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

  /// Get XML By Key and Tenant
  ///
  /// Retrieves the XML of the latest version of the decision definition for tenant
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definition (the latest version thereof).
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  Future<DecisionDefinitionDiagramDto?> getDecisionDefinitionDmnXmlByKeyAndTenant(String key, String tenantId,) async {
    final response = await getDecisionDefinitionDmnXmlByKeyAndTenantWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecisionDefinitionDiagramDto',) as DecisionDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Queries for decision definitions that fulfill given parameters. Parameters may be the properties of decision definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Decision Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by decision definition id.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
  ///
  /// * [String] key:
  ///   Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision definition resources that the parameter is a substring of.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the id of the decision requirements definition this decision definition belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition this decision definition belongs to.
  ///
  /// * [bool] withoutDecisionRequirementsDefinition:
  ///   Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionDefinitionsWithoutTenantId:
  ///   Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tags of those decision definition resources that the parameter is a substring of.
  Future<Response> getDecisionDefinitionsWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? withoutDecisionRequirementsDefinition, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
    if (decisionDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionId', decisionDefinitionId));
    }
    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
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
    if (deployedAfter != null) {
      queryParams.addAll(_queryParams('', 'deployedAfter', deployedAfter));
    }
    if (deployedAt != null) {
      queryParams.addAll(_queryParams('', 'deployedAt', deployedAt));
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
    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionKey', decisionRequirementsDefinitionKey));
    }
    if (withoutDecisionRequirementsDefinition != null) {
      queryParams.addAll(_queryParams('', 'withoutDecisionRequirementsDefinition', withoutDecisionRequirementsDefinition));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDecisionDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDecisionDefinitionsWithoutTenantId', includeDecisionDefinitionsWithoutTenantId));
    }
    if (versionTag != null) {
      queryParams.addAll(_queryParams('', 'versionTag', versionTag));
    }
    if (versionTagLike != null) {
      queryParams.addAll(_queryParams('', 'versionTagLike', versionTagLike));
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

  /// Get List
  ///
  /// Queries for decision definitions that fulfill given parameters. Parameters may be the properties of decision definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Decision Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query-count/) method.
  ///
  /// Parameters:
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
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by decision definition id.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
  ///
  /// * [String] key:
  ///   Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision definition resources that the parameter is a substring of.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the id of the decision requirements definition this decision definition belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition this decision definition belongs to.
  ///
  /// * [bool] withoutDecisionRequirementsDefinition:
  ///   Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionDefinitionsWithoutTenantId:
  ///   Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tags of those decision definition resources that the parameter is a substring of.
  Future<List<DecisionDefinitionDto>?> getDecisionDefinitions({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? withoutDecisionRequirementsDefinition, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, }) async {
    final response = await getDecisionDefinitionsWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, decisionDefinitionId: decisionDefinitionId, decisionDefinitionIdIn: decisionDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, deployedAfter: deployedAfter, deployedAt: deployedAt, key: key, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey: decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition: withoutDecisionRequirementsDefinition, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDecisionDefinitionsWithoutTenantId: includeDecisionDefinitionsWithoutTenantId, versionTag: versionTag, versionTagLike: versionTagLike, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DecisionDefinitionDto>') as List)
        .cast<DecisionDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Requests the number of decision definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Definition](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by decision definition id.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
  ///
  /// * [String] key:
  ///   Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision definition resources that the parameter is a substring of.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the id of the decision requirements definition this decision definition belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition this decision definition belongs to.
  ///
  /// * [bool] withoutDecisionRequirementsDefinition:
  ///   Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionDefinitionsWithoutTenantId:
  ///   Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tags of those decision definition resources that the parameter is a substring of.
  Future<Response> getDecisionDefinitionsCountWithHttpInfo({ String? decisionDefinitionId, String? decisionDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? withoutDecisionRequirementsDefinition, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionId', decisionDefinitionId));
    }
    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
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
    if (deployedAfter != null) {
      queryParams.addAll(_queryParams('', 'deployedAfter', deployedAfter));
    }
    if (deployedAt != null) {
      queryParams.addAll(_queryParams('', 'deployedAt', deployedAt));
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
    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionKey', decisionRequirementsDefinitionKey));
    }
    if (withoutDecisionRequirementsDefinition != null) {
      queryParams.addAll(_queryParams('', 'withoutDecisionRequirementsDefinition', withoutDecisionRequirementsDefinition));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDecisionDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDecisionDefinitionsWithoutTenantId', includeDecisionDefinitionsWithoutTenantId));
    }
    if (versionTag != null) {
      queryParams.addAll(_queryParams('', 'versionTag', versionTag));
    }
    if (versionTagLike != null) {
      queryParams.addAll(_queryParams('', 'versionTagLike', versionTagLike));
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

  /// Get List Count
  ///
  /// Requests the number of decision definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Definition](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by decision definition id.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids.
  ///
  /// * [String] name:
  ///   Filter by decision definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by decision definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
  ///
  /// * [String] key:
  ///   Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
  ///
  /// * [String] keyLike:
  ///   Filter by decision definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by decision definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by decision definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by decision definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the decision definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those decision definition resources that the parameter is a substring of.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the id of the decision requirements definition this decision definition belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition this decision definition belongs to.
  ///
  /// * [bool] withoutDecisionRequirementsDefinition:
  ///   Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDecisionDefinitionsWithoutTenantId:
  ///   Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tags of those decision definition resources that the parameter is a substring of.
  Future<CountResultDto?> getDecisionDefinitionsCount({ String? decisionDefinitionId, String? decisionDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? withoutDecisionRequirementsDefinition, String? tenantIdIn, bool? withoutTenantId, bool? includeDecisionDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, }) async {
    final response = await getDecisionDefinitionsCountWithHttpInfo( decisionDefinitionId: decisionDefinitionId, decisionDefinitionIdIn: decisionDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, deployedAfter: deployedAfter, deployedAt: deployedAt, key: key, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey: decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition: withoutDecisionRequirementsDefinition, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDecisionDefinitionsWithoutTenantId: includeDecisionDefinitionsWithoutTenantId, versionTag: versionTag, versionTagLike: versionTagLike, );
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

  /// Update History Time to Live
  ///
  /// Updates history time to live for decision definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByDecisionDefinitionIdWithHttpInfo(String id, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/{id}/history-time-to-live'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for decision definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByDecisionDefinitionId(String id, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByDecisionDefinitionIdWithHttpInfo(id,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update History Time to Live By Key
  ///
  /// Updates the latest version of the decision definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definitions to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByDecisionDefinitionKeyWithHttpInfo(String key, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/history-time-to-live'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live By Key
  ///
  /// Updates the latest version of the decision definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definitions to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByDecisionDefinitionKey(String key, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByDecisionDefinitionKeyWithHttpInfo(key,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update History Time to Live By Key And Tenant
  ///
  /// Updates the latest version of the decision definition for tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definitions to change history time to live.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenantWithHttpInfo(String key, String tenantId, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/decision-definition/key/{key}/tenant-id/{tenant-id}/history-time-to-live'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live By Key And Tenant
  ///
  /// Updates the latest version of the decision definition for tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the decision definitions to change history time to live.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the decision definition belongs to.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant(String key, String tenantId, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenantWithHttpInfo(key, tenantId,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
