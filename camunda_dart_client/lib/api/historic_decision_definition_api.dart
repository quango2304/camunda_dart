//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricDecisionDefinitionApi {
  HistoricDecisionDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Cleanable Decision Instance Report
  ///
  /// Retrieves a report about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)),  so that you can tune the history time to live. These reports include the count of the finished historic decision instances, cleanable decision instances and basic decision definition data - id, key, name and version. The size of the result set can be retrieved by using the  [Get Cleanable Decision Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.
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
  Future<Response> getCleanableHistoricDecisionInstanceReportWithHttpInfo({ String? decisionDefinitionIdIn, String? decisionDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-definition/cleanable-decision-instance-report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
    }
    if (decisionDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKeyIn', decisionDefinitionKeyIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (compact != null) {
      queryParams.addAll(_queryParams('', 'compact', compact));
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

  /// Get Cleanable Decision Instance Report
  ///
  /// Retrieves a report about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)),  so that you can tune the history time to live. These reports include the count of the finished historic decision instances, cleanable decision instances and basic decision definition data - id, key, name and version. The size of the result set can be retrieved by using the  [Get Cleanable Decision Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.
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
  Future<List<CleanableHistoricDecisionInstanceReportResultDto>?> getCleanableHistoricDecisionInstanceReport({ String? decisionDefinitionIdIn, String? decisionDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getCleanableHistoricDecisionInstanceReportWithHttpInfo( decisionDefinitionIdIn: decisionDefinitionIdIn, decisionDefinitionKeyIn: decisionDefinitionKeyIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, compact: compact, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CleanableHistoricDecisionInstanceReportResultDto>') as List)
        .cast<CleanableHistoricDecisionInstanceReportResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Cleanable Decision Instance Report Count
  ///
  /// Queries for the number of report results about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Decision Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report/)  method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.
  Future<Response> getCleanableHistoricDecisionInstanceReportCountWithHttpInfo({ String? decisionDefinitionIdIn, String? decisionDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-definition/cleanable-decision-instance-report/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionIdIn', decisionDefinitionIdIn));
    }
    if (decisionDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'decisionDefinitionKeyIn', decisionDefinitionKeyIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (compact != null) {
      queryParams.addAll(_queryParams('', 'compact', compact));
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

  /// Get Cleanable Decision Instance Report Count
  ///
  /// Queries for the number of report results about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Decision Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report/)  method.
  ///
  /// Parameters:
  ///
  /// * [String] decisionDefinitionIdIn:
  ///   Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
  ///
  /// * [String] decisionDefinitionKeyIn:
  ///   Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
  ///
  /// * [bool] compact:
  ///   Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.
  Future<CountResultDto?> getCleanableHistoricDecisionInstanceReportCount({ String? decisionDefinitionIdIn, String? decisionDefinitionKeyIn, String? tenantIdIn, bool? withoutTenantId, bool? compact, }) async {
    final response = await getCleanableHistoricDecisionInstanceReportCountWithHttpInfo( decisionDefinitionIdIn: decisionDefinitionIdIn, decisionDefinitionKeyIn: decisionDefinitionKeyIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, compact: compact, );
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
