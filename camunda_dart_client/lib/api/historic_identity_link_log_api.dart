//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricIdentityLinkLogApi {
  HistoricIdentityLinkLogApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Identity Link Logs
  ///
  /// Queries for historic identity link logs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Identity-Link-Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Restricts to identity links that have the given type (candidate/assignee/owner).
  ///
  /// * [String] userId:
  ///   Restricts to identity links that have the given user id.
  ///
  /// * [String] groupId:
  ///   Restricts to identity links that have the given group id.
  ///
  /// * [DateTime] dateBefore:
  ///   Restricts to identity links that have the time before the given time.
  ///
  /// * [DateTime] dateAfter:
  ///   Restricts to identity links that have the time after the given time.
  ///
  /// * [String] taskId:
  ///   Restricts to identity links that have the given task id.
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to identity links that have the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to identity links that have the given process definition key.
  ///
  /// * [String] operationType:
  ///   Restricts to identity links that have the given operationType (add/delete).
  ///
  /// * [String] assignerId:
  ///   Restricts to identity links that have the given assigner id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getHistoricIdentityLinksWithHttpInfo({ String? type, String? userId, String? groupId, DateTime? dateBefore, DateTime? dateAfter, String? taskId, String? processDefinitionId, String? processDefinitionKey, String? operationType, String? assignerId, String? tenantIdIn, bool? withoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/identity-link-log';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (groupId != null) {
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    }
    if (dateBefore != null) {
      queryParams.addAll(_queryParams('', 'dateBefore', dateBefore));
    }
    if (dateAfter != null) {
      queryParams.addAll(_queryParams('', 'dateAfter', dateAfter));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (operationType != null) {
      queryParams.addAll(_queryParams('', 'operationType', operationType));
    }
    if (assignerId != null) {
      queryParams.addAll(_queryParams('', 'assignerId', assignerId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
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

  /// Get Identity Link Logs
  ///
  /// Queries for historic identity link logs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Identity-Link-Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Restricts to identity links that have the given type (candidate/assignee/owner).
  ///
  /// * [String] userId:
  ///   Restricts to identity links that have the given user id.
  ///
  /// * [String] groupId:
  ///   Restricts to identity links that have the given group id.
  ///
  /// * [DateTime] dateBefore:
  ///   Restricts to identity links that have the time before the given time.
  ///
  /// * [DateTime] dateAfter:
  ///   Restricts to identity links that have the time after the given time.
  ///
  /// * [String] taskId:
  ///   Restricts to identity links that have the given task id.
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to identity links that have the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to identity links that have the given process definition key.
  ///
  /// * [String] operationType:
  ///   Restricts to identity links that have the given operationType (add/delete).
  ///
  /// * [String] assignerId:
  ///   Restricts to identity links that have the given assigner id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<HistoricIdentityLinkLogDto>?> getHistoricIdentityLinks({ String? type, String? userId, String? groupId, DateTime? dateBefore, DateTime? dateAfter, String? taskId, String? processDefinitionId, String? processDefinitionKey, String? operationType, String? assignerId, String? tenantIdIn, bool? withoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricIdentityLinksWithHttpInfo( type: type, userId: userId, groupId: groupId, dateBefore: dateBefore, dateAfter: dateAfter, taskId: taskId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, operationType: operationType, assignerId: assignerId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricIdentityLinkLogDto>') as List)
        .cast<HistoricIdentityLinkLogDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Identity Link Log Count
  ///
  /// Queries for the number of historic identity link logs that fulfill the given parameters. Takes the same parameters as the [Get Identity-Link-Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Restricts to identity links that have the given type (candidate/assignee/owner).
  ///
  /// * [String] userId:
  ///   Restricts to identity links that have the given user id.
  ///
  /// * [String] groupId:
  ///   Restricts to identity links that have the given group id.
  ///
  /// * [DateTime] dateBefore:
  ///   Restricts to identity links that have the time before the given time.
  ///
  /// * [DateTime] dateAfter:
  ///   Restricts to identity links that have the time after the given time.
  ///
  /// * [String] taskId:
  ///   Restricts to identity links that have the given task id.
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to identity links that have the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to identity links that have the given process definition key.
  ///
  /// * [String] operationType:
  ///   Restricts to identity links that have the given operationType (add/delete).
  ///
  /// * [String] assignerId:
  ///   Restricts to identity links that have the given assigner id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricIdentityLinksCountWithHttpInfo({ String? type, String? userId, String? groupId, DateTime? dateBefore, DateTime? dateAfter, String? taskId, String? processDefinitionId, String? processDefinitionKey, String? operationType, String? assignerId, String? tenantIdIn, bool? withoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/identity-link-log/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (groupId != null) {
      queryParams.addAll(_queryParams('', 'groupId', groupId));
    }
    if (dateBefore != null) {
      queryParams.addAll(_queryParams('', 'dateBefore', dateBefore));
    }
    if (dateAfter != null) {
      queryParams.addAll(_queryParams('', 'dateAfter', dateAfter));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (operationType != null) {
      queryParams.addAll(_queryParams('', 'operationType', operationType));
    }
    if (assignerId != null) {
      queryParams.addAll(_queryParams('', 'assignerId', assignerId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
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

  /// Get Identity Link Log Count
  ///
  /// Queries for the number of historic identity link logs that fulfill the given parameters. Takes the same parameters as the [Get Identity-Link-Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/identity-links/get-identity-link-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] type:
  ///   Restricts to identity links that have the given type (candidate/assignee/owner).
  ///
  /// * [String] userId:
  ///   Restricts to identity links that have the given user id.
  ///
  /// * [String] groupId:
  ///   Restricts to identity links that have the given group id.
  ///
  /// * [DateTime] dateBefore:
  ///   Restricts to identity links that have the time before the given time.
  ///
  /// * [DateTime] dateAfter:
  ///   Restricts to identity links that have the time after the given time.
  ///
  /// * [String] taskId:
  ///   Restricts to identity links that have the given task id.
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to identity links that have the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to identity links that have the given process definition key.
  ///
  /// * [String] operationType:
  ///   Restricts to identity links that have the given operationType (add/delete).
  ///
  /// * [String] assignerId:
  ///   Restricts to identity links that have the given assigner id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic identity links that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getHistoricIdentityLinksCount({ String? type, String? userId, String? groupId, DateTime? dateBefore, DateTime? dateAfter, String? taskId, String? processDefinitionId, String? processDefinitionKey, String? operationType, String? assignerId, String? tenantIdIn, bool? withoutTenantId, }) async {
    final response = await getHistoricIdentityLinksCountWithHttpInfo( type: type, userId: userId, groupId: groupId, dateBefore: dateBefore, dateAfter: dateAfter, taskId: taskId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, operationType: operationType, assignerId: assignerId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, );
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
