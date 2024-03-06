//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricDecisionRequirementsDefinitionApi {
  HistoricDecisionRequirementsDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get DRD Statistics
  ///
  /// Retrieves evaluation statistics of a given decision requirements definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  ///
  /// * [String] decisionInstanceId:
  ///   Restrict query results to be based only on specific evaluation instance of a given decision requirements definition.
  Future<Response> getDecisionStatisticsWithHttpInfo(String id, { String? decisionInstanceId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/decision-requirements-definition/{id}/statistics'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decisionInstanceId != null) {
      queryParams.addAll(_queryParams('', 'decisionInstanceId', decisionInstanceId));
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

  /// Get DRD Statistics
  ///
  /// Retrieves evaluation statistics of a given decision requirements definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the decision requirements definition.
  ///
  /// * [String] decisionInstanceId:
  ///   Restrict query results to be based only on specific evaluation instance of a given decision requirements definition.
  Future<List<HistoricDecisionInstanceStatisticsDto>?> getDecisionStatistics(String id, { String? decisionInstanceId, }) async {
    final response = await getDecisionStatisticsWithHttpInfo(id,  decisionInstanceId: decisionInstanceId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricDecisionInstanceStatisticsDto>') as List)
        .cast<HistoricDecisionInstanceStatisticsDto>()
        .toList(growable: false);

    }
    return null;
  }
}
