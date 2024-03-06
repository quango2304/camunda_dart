//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricDecisionInstanceApi {
  HistoricDecisionInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Async (POST)
  ///
  /// Delete multiple historic decision instances asynchronously (batch). At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery`  has to be provided. If both are provided then all instances matching query  criterion and instances from the list will be deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteHistoricDecisionInstancesDto] deleteHistoricDecisionInstancesDto:
  Future<Response> deleteAsyncWithHttpInfo({ DeleteHistoricDecisionInstancesDto? deleteHistoricDecisionInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-instance/delete';

    // ignore: prefer_final_locals
    Object? postBody = deleteHistoricDecisionInstancesDto;

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

  /// Delete Async (POST)
  ///
  /// Delete multiple historic decision instances asynchronously (batch). At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery`  has to be provided. If both are provided then all instances matching query  criterion and instances from the list will be deleted.
  ///
  /// Parameters:
  ///
  /// * [DeleteHistoricDecisionInstancesDto] deleteHistoricDecisionInstancesDto:
  Future<BatchDto?> deleteAsync({ DeleteHistoricDecisionInstancesDto? deleteHistoricDecisionInstancesDto, }) async {
    final response = await deleteAsyncWithHttpInfo( deleteHistoricDecisionInstancesDto: deleteHistoricDecisionInstancesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchDto',) as BatchDto;
    
    }
    return null;
  }

  /// Get Historic Decision Instance
  ///
  /// Retrieves a historic decision instance by id, according to the  `HistoricDecisionInstance` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic decision instance to be retrieved.
  ///
  /// * [bool] includeInputs:
  ///   Include input values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeOutputs:
  ///   Include output values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableBinaryFetching:
  ///   Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableCustomObjectDeserialization:
  ///   Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricDecisionInstanceWithHttpInfo(String id, { bool? includeInputs, bool? includeOutputs, bool? disableBinaryFetching, bool? disableCustomObjectDeserialization, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-instance/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (includeInputs != null) {
      queryParams.addAll(_queryParams('', 'includeInputs', includeInputs));
    }
    if (includeOutputs != null) {
      queryParams.addAll(_queryParams('', 'includeOutputs', includeOutputs));
    }
    if (disableBinaryFetching != null) {
      queryParams.addAll(_queryParams('', 'disableBinaryFetching', disableBinaryFetching));
    }
    if (disableCustomObjectDeserialization != null) {
      queryParams.addAll(_queryParams('', 'disableCustomObjectDeserialization', disableCustomObjectDeserialization));
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

  /// Get Historic Decision Instance
  ///
  /// Retrieves a historic decision instance by id, according to the  `HistoricDecisionInstance` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic decision instance to be retrieved.
  ///
  /// * [bool] includeInputs:
  ///   Include input values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeOutputs:
  ///   Include output values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableBinaryFetching:
  ///   Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableCustomObjectDeserialization:
  ///   Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
  Future<HistoricDecisionInstanceDto?> getHistoricDecisionInstance(String id, { bool? includeInputs, bool? includeOutputs, bool? disableBinaryFetching, bool? disableCustomObjectDeserialization, }) async {
    final response = await getHistoricDecisionInstanceWithHttpInfo(id,  includeInputs: includeInputs, includeOutputs: includeOutputs, disableBinaryFetching: disableBinaryFetching, disableCustomObjectDeserialization: disableCustomObjectDeserialization, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricDecisionInstanceDto',) as HistoricDecisionInstanceDto;
    
    }
    return null;
  }

  /// Get Historic Decision Instances
  ///
  /// Queries for historic decision instances that fulfill the given parameters.  The size of the result set can be retrieved by using the  [Get Historic Decision Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query-count/)  method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionInstanceId:
  ///   Filter by decision instance id.
  ///
  /// * [String] decisionInstanceIdIn:
  ///   Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKey:
  ///   Filter by the key of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
  ///
  /// * [String] decisionDefinitionName:
  ///   Filter by the name of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionNameLike:
  ///   Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the instances belongs to.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by the case definition the instances belongs to.
  ///
  /// * [String] caseDefinitionKey:
  ///   Filter by the key of the case definition the instances belongs to.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the instances belongs to.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] evaluatedBefore:
  ///   Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] evaluatedAfter:
  ///   Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] userId:
  ///   Restrict to instances that were evaluated by the given user.
  ///
  /// * [String] rootDecisionInstanceId:
  ///   Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
  ///
  /// * [bool] rootDecisionInstancesOnly:
  ///   Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the decision requirements definition the instances belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition the instances belongs to.
  ///
  /// * [bool] includeInputs:
  ///   Include input values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeOutputs:
  ///   Include output values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableBinaryFetching:
  ///   Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableCustomObjectDeserialization:
  ///   Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getHistoricDecisionInstancesWithHttpInfo({ String? decisionInstanceId, String? decisionInstanceIdIn, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? decisionDefinitionKey, String? decisionDefinitionKeyIn, String? decisionDefinitionName, String? decisionDefinitionNameLike, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? caseDefinitionId, String? caseDefinitionKey, String? caseInstanceId, String? activityIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, DateTime? evaluatedBefore, DateTime? evaluatedAfter, String? userId, String? rootDecisionInstanceId, bool? rootDecisionInstancesOnly, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? includeInputs, bool? includeOutputs, bool? disableBinaryFetching, bool? disableCustomObjectDeserialization, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-instance';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionInstanceId != null) {
      queryParams.addAll(_queryParams('', 'decisionInstanceId', decisionInstanceId));
    }
    if (decisionInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionInstanceIdIn', decisionInstanceIdIn));
    }
    if (decisionDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionId', decisionDefinitionId));
    }
    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
    }
    if (decisionDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKey', decisionDefinitionKey));
    }
    if (decisionDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKeyIn', decisionDefinitionKeyIn));
    }
    if (decisionDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionName', decisionDefinitionName));
    }
    if (decisionDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionNameLike', decisionDefinitionNameLike));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (evaluatedBefore != null) {
      queryParams.addAll(_queryParams('', 'evaluatedBefore', evaluatedBefore));
    }
    if (evaluatedAfter != null) {
      queryParams.addAll(_queryParams('', 'evaluatedAfter', evaluatedAfter));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (rootDecisionInstanceId != null) {
      queryParams.addAll(_queryParams('', 'rootDecisionInstanceId', rootDecisionInstanceId));
    }
    if (rootDecisionInstancesOnly != null) {
      queryParams.addAll(_queryParams('', 'rootDecisionInstancesOnly', rootDecisionInstancesOnly));
    }
    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionKey', decisionRequirementsDefinitionKey));
    }
    if (includeInputs != null) {
      queryParams.addAll(_queryParams('', 'includeInputs', includeInputs));
    }
    if (includeOutputs != null) {
      queryParams.addAll(_queryParams('', 'includeOutputs', includeOutputs));
    }
    if (disableBinaryFetching != null) {
      queryParams.addAll(_queryParams('', 'disableBinaryFetching', disableBinaryFetching));
    }
    if (disableCustomObjectDeserialization != null) {
      queryParams.addAll(_queryParams('', 'disableCustomObjectDeserialization', disableCustomObjectDeserialization));
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

  /// Get Historic Decision Instances
  ///
  /// Queries for historic decision instances that fulfill the given parameters.  The size of the result set can be retrieved by using the  [Get Historic Decision Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query-count/)  method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionInstanceId:
  ///   Filter by decision instance id.
  ///
  /// * [String] decisionInstanceIdIn:
  ///   Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKey:
  ///   Filter by the key of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
  ///
  /// * [String] decisionDefinitionName:
  ///   Filter by the name of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionNameLike:
  ///   Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the instances belongs to.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by the case definition the instances belongs to.
  ///
  /// * [String] caseDefinitionKey:
  ///   Filter by the key of the case definition the instances belongs to.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the instances belongs to.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] evaluatedBefore:
  ///   Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] evaluatedAfter:
  ///   Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] userId:
  ///   Restrict to instances that were evaluated by the given user.
  ///
  /// * [String] rootDecisionInstanceId:
  ///   Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
  ///
  /// * [bool] rootDecisionInstancesOnly:
  ///   Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the decision requirements definition the instances belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition the instances belongs to.
  ///
  /// * [bool] includeInputs:
  ///   Include input values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeOutputs:
  ///   Include output values in the result. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableBinaryFetching:
  ///   Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] disableCustomObjectDeserialization:
  ///   Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<HistoricDecisionInstanceDto>?> getHistoricDecisionInstances({ String? decisionInstanceId, String? decisionInstanceIdIn, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? decisionDefinitionKey, String? decisionDefinitionKeyIn, String? decisionDefinitionName, String? decisionDefinitionNameLike, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? caseDefinitionId, String? caseDefinitionKey, String? caseInstanceId, String? activityIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, DateTime? evaluatedBefore, DateTime? evaluatedAfter, String? userId, String? rootDecisionInstanceId, bool? rootDecisionInstancesOnly, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, bool? includeInputs, bool? includeOutputs, bool? disableBinaryFetching, bool? disableCustomObjectDeserialization, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricDecisionInstancesWithHttpInfo( decisionInstanceId: decisionInstanceId, decisionInstanceIdIn: decisionInstanceIdIn, decisionDefinitionId: decisionDefinitionId, decisionDefinitionIdIn: decisionDefinitionIdIn, decisionDefinitionKey: decisionDefinitionKey, decisionDefinitionKeyIn: decisionDefinitionKeyIn, decisionDefinitionName: decisionDefinitionName, decisionDefinitionNameLike: decisionDefinitionNameLike, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseInstanceId: caseInstanceId, activityIdIn: activityIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, evaluatedBefore: evaluatedBefore, evaluatedAfter: evaluatedAfter, userId: userId, rootDecisionInstanceId: rootDecisionInstanceId, rootDecisionInstancesOnly: rootDecisionInstancesOnly, decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey: decisionRequirementsDefinitionKey, includeInputs: includeInputs, includeOutputs: includeOutputs, disableBinaryFetching: disableBinaryFetching, disableCustomObjectDeserialization: disableCustomObjectDeserialization, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricDecisionInstanceDto>') as List)
        .cast<HistoricDecisionInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Historic Decision Instance Count
  ///
  /// Queries for the number of historic decision instances that fulfill the given parameters.  Takes the same parameters as the  [Get Historic Decision Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query/)  method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionInstanceId:
  ///   Filter by decision instance id.
  ///
  /// * [String] decisionInstanceIdIn:
  ///   Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKey:
  ///   Filter by the key of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
  ///
  /// * [String] decisionDefinitionName:
  ///   Filter by the name of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionNameLike:
  ///   Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the instances belongs to.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by the case definition the instances belongs to.
  ///
  /// * [String] caseDefinitionKey:
  ///   Filter by the key of the case definition the instances belongs to.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the instances belongs to.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] evaluatedBefore:
  ///   Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] evaluatedAfter:
  ///   Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] userId:
  ///   Restrict to instances that were evaluated by the given user.
  ///
  /// * [String] rootDecisionInstanceId:
  ///   Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
  ///
  /// * [bool] rootDecisionInstancesOnly:
  ///   Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the decision requirements definition the instances belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition the instances belongs to.
  Future<Response> getHistoricDecisionInstancesCountWithHttpInfo({ String? decisionInstanceId, String? decisionInstanceIdIn, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? decisionDefinitionKey, String? decisionDefinitionKeyIn, String? decisionDefinitionName, String? decisionDefinitionNameLike, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? caseDefinitionId, String? caseDefinitionKey, String? caseInstanceId, String? activityIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, DateTime? evaluatedBefore, DateTime? evaluatedAfter, String? userId, String? rootDecisionInstanceId, bool? rootDecisionInstancesOnly, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-instance/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionInstanceId != null) {
      queryParams.addAll(_queryParams('', 'decisionInstanceId', decisionInstanceId));
    }
    if (decisionInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionInstanceIdIn', decisionInstanceIdIn));
    }
    if (decisionDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionId', decisionDefinitionId));
    }
    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
    }
    if (decisionDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKey', decisionDefinitionKey));
    }
    if (decisionDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKeyIn', decisionDefinitionKeyIn));
    }
    if (decisionDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionName', decisionDefinitionName));
    }
    if (decisionDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionNameLike', decisionDefinitionNameLike));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (evaluatedBefore != null) {
      queryParams.addAll(_queryParams('', 'evaluatedBefore', evaluatedBefore));
    }
    if (evaluatedAfter != null) {
      queryParams.addAll(_queryParams('', 'evaluatedAfter', evaluatedAfter));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (rootDecisionInstanceId != null) {
      queryParams.addAll(_queryParams('', 'rootDecisionInstanceId', rootDecisionInstanceId));
    }
    if (rootDecisionInstancesOnly != null) {
      queryParams.addAll(_queryParams('', 'rootDecisionInstancesOnly', rootDecisionInstancesOnly));
    }
    if (decisionRequirementsDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionId', decisionRequirementsDefinitionId));
    }
    if (decisionRequirementsDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'decisionRequirementsDefinitionKey', decisionRequirementsDefinitionKey));
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

  /// Get Historic Decision Instance Count
  ///
  /// Queries for the number of historic decision instances that fulfill the given parameters.  Takes the same parameters as the  [Get Historic Decision Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query/)  method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionInstanceId:
  ///   Filter by decision instance id.
  ///
  /// * [String] decisionInstanceIdIn:
  ///   Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
  ///
  /// * [String] decisionDefinitionId:
  ///   Filter by the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKey:
  ///   Filter by the key of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
  ///
  /// * [String] decisionDefinitionName:
  ///   Filter by the name of the decision definition the instances belongs to.
  ///
  /// * [String] decisionDefinitionNameLike:
  ///   Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the instances belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances belongs to.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the instances belongs to.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by the case definition the instances belongs to.
  ///
  /// * [String] caseDefinitionKey:
  ///   Filter by the key of the case definition the instances belongs to.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the instances belongs to.
  ///
  /// * [String] activityIdIn:
  ///   Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] evaluatedBefore:
  ///   Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] evaluatedAfter:
  ///   Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] userId:
  ///   Restrict to instances that were evaluated by the given user.
  ///
  /// * [String] rootDecisionInstanceId:
  ///   Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
  ///
  /// * [bool] rootDecisionInstancesOnly:
  ///   Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] decisionRequirementsDefinitionId:
  ///   Filter by the decision requirements definition the instances belongs to.
  ///
  /// * [String] decisionRequirementsDefinitionKey:
  ///   Filter by the key of the decision requirements definition the instances belongs to.
  Future<CountResultDto?> getHistoricDecisionInstancesCount({ String? decisionInstanceId, String? decisionInstanceIdIn, String? decisionDefinitionId, String? decisionDefinitionIdIn, String? decisionDefinitionKey, String? decisionDefinitionKeyIn, String? decisionDefinitionName, String? decisionDefinitionNameLike, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? caseDefinitionId, String? caseDefinitionKey, String? caseInstanceId, String? activityIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, DateTime? evaluatedBefore, DateTime? evaluatedAfter, String? userId, String? rootDecisionInstanceId, bool? rootDecisionInstancesOnly, String? decisionRequirementsDefinitionId, String? decisionRequirementsDefinitionKey, }) async {
    final response = await getHistoricDecisionInstancesCountWithHttpInfo( decisionInstanceId: decisionInstanceId, decisionInstanceIdIn: decisionInstanceIdIn, decisionDefinitionId: decisionDefinitionId, decisionDefinitionIdIn: decisionDefinitionIdIn, decisionDefinitionKey: decisionDefinitionKey, decisionDefinitionKeyIn: decisionDefinitionKeyIn, decisionDefinitionName: decisionDefinitionName, decisionDefinitionNameLike: decisionDefinitionNameLike, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseInstanceId: caseInstanceId, activityIdIn: activityIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, evaluatedBefore: evaluatedBefore, evaluatedAfter: evaluatedAfter, userId: userId, rootDecisionInstanceId: rootDecisionInstanceId, rootDecisionInstancesOnly: rootDecisionInstancesOnly, decisionRequirementsDefinitionId: decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey: decisionRequirementsDefinitionKey, );
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

  /// Set Removal Time Async (POST)
  ///
  /// Sets the removal time to multiple historic decision instances asynchronously (batch).  At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricDecisionInstancesDto] setRemovalTimeToHistoricDecisionInstancesDto:
  Future<Response> setRemovalTimeAsyncHistoricDecisionInstanceWithHttpInfo({ SetRemovalTimeToHistoricDecisionInstancesDto? setRemovalTimeToHistoricDecisionInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-instance/set-removal-time';

    // ignore: prefer_final_locals
    Object? postBody = setRemovalTimeToHistoricDecisionInstancesDto;

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

  /// Set Removal Time Async (POST)
  ///
  /// Sets the removal time to multiple historic decision instances asynchronously (batch).  At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
  ///
  /// Parameters:
  ///
  /// * [SetRemovalTimeToHistoricDecisionInstancesDto] setRemovalTimeToHistoricDecisionInstancesDto:
  Future<BatchDto?> setRemovalTimeAsyncHistoricDecisionInstance({ SetRemovalTimeToHistoricDecisionInstancesDto? setRemovalTimeToHistoricDecisionInstancesDto, }) async {
    final response = await setRemovalTimeAsyncHistoricDecisionInstanceWithHttpInfo( setRemovalTimeToHistoricDecisionInstancesDto: setRemovalTimeToHistoricDecisionInstancesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchDto',) as BatchDto;
    
    }
    return null;
  }
}
