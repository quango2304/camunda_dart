//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricIncidentApi {
  HistoricIncidentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Incidents
  ///
  /// Queries for historic incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (string%), ends with (%string) or contains (%string%). 
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to incidents that have the given processDefinitionKey.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that have one of the given process definition keys.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] createTimeBefore:
  ///   Restricts to incidents that have a createTime date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] createTimeAfter:
  ///   Restricts to incidents that have a createTime date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeBefore:
  ///   Restricts to incidents that have an endTimeBefore date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeAfter:
  ///   Restricts to incidents that have an endTimeAfter date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Restricts to incidents that belong to an activity with the given id.
  ///
  /// * [String] failedActivityId:
  ///   Restricts to incidents that were created due to the failure of an activity with the given id.
  ///
  /// * [String] causeIncidentId:
  ///   Restricts to incidents that have the given incident id as cause incident.
  ///
  /// * [String] rootCauseIncidentId:
  ///   Restricts to incidents that have the given incident id as root cause incident.
  ///
  /// * [String] configuration:
  ///   Restricts to incidents that have the given parameter set as configuration.
  ///
  /// * [String] historyConfiguration:
  ///   Restricts to incidents that have the given parameter set as history configuration.
  ///
  /// * [bool] open:
  ///   Restricts to incidents that are open.
  ///
  /// * [bool] resolved:
  ///   Restricts to incidents that are resolved.
  ///
  /// * [bool] deleted:
  ///   Restricts to incidents that are deleted.
  ///
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic incidents that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
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
  Future<Response> getHistoricIncidentsWithHttpInfo({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? createTimeBefore, DateTime? createTimeAfter, DateTime? endTimeBefore, DateTime? endTimeAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? historyConfiguration, bool? open, bool? resolved, bool? deleted, String? tenantIdIn, bool? withoutTenantId, String? jobDefinitionIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/incident';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (incidentId != null) {
      queryParams.addAll(_queryParams('', 'incidentId', incidentId));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (createTimeBefore != null) {
      queryParams.addAll(_queryParams('', 'createTimeBefore', createTimeBefore));
    }
    if (createTimeAfter != null) {
      queryParams.addAll(_queryParams('', 'createTimeAfter', createTimeAfter));
    }
    if (endTimeBefore != null) {
      queryParams.addAll(_queryParams('', 'endTimeBefore', endTimeBefore));
    }
    if (endTimeAfter != null) {
      queryParams.addAll(_queryParams('', 'endTimeAfter', endTimeAfter));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (failedActivityId != null) {
      queryParams.addAll(_queryParams('', 'failedActivityId', failedActivityId));
    }
    if (causeIncidentId != null) {
      queryParams.addAll(_queryParams('', 'causeIncidentId', causeIncidentId));
    }
    if (rootCauseIncidentId != null) {
      queryParams.addAll(_queryParams('', 'rootCauseIncidentId', rootCauseIncidentId));
    }
    if (configuration != null) {
      queryParams.addAll(_queryParams('', 'configuration', configuration));
    }
    if (historyConfiguration != null) {
      queryParams.addAll(_queryParams('', 'historyConfiguration', historyConfiguration));
    }
    if (open != null) {
      queryParams.addAll(_queryParams('', 'open', open));
    }
    if (resolved != null) {
      queryParams.addAll(_queryParams('', 'resolved', resolved));
    }
    if (deleted != null) {
      queryParams.addAll(_queryParams('', 'deleted', deleted));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (jobDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionIdIn', jobDefinitionIdIn));
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

  /// Get Incidents
  ///
  /// Queries for historic incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (string%), ends with (%string) or contains (%string%). 
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to incidents that have the given processDefinitionKey.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that have one of the given process definition keys.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] createTimeBefore:
  ///   Restricts to incidents that have a createTime date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] createTimeAfter:
  ///   Restricts to incidents that have a createTime date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeBefore:
  ///   Restricts to incidents that have an endTimeBefore date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeAfter:
  ///   Restricts to incidents that have an endTimeAfter date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Restricts to incidents that belong to an activity with the given id.
  ///
  /// * [String] failedActivityId:
  ///   Restricts to incidents that were created due to the failure of an activity with the given id.
  ///
  /// * [String] causeIncidentId:
  ///   Restricts to incidents that have the given incident id as cause incident.
  ///
  /// * [String] rootCauseIncidentId:
  ///   Restricts to incidents that have the given incident id as root cause incident.
  ///
  /// * [String] configuration:
  ///   Restricts to incidents that have the given parameter set as configuration.
  ///
  /// * [String] historyConfiguration:
  ///   Restricts to incidents that have the given parameter set as history configuration.
  ///
  /// * [bool] open:
  ///   Restricts to incidents that are open.
  ///
  /// * [bool] resolved:
  ///   Restricts to incidents that are resolved.
  ///
  /// * [bool] deleted:
  ///   Restricts to incidents that are deleted.
  ///
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic incidents that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
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
  Future<List<HistoricIncidentDto>?> getHistoricIncidents({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? createTimeBefore, DateTime? createTimeAfter, DateTime? endTimeBefore, DateTime? endTimeAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? historyConfiguration, bool? open, bool? resolved, bool? deleted, String? tenantIdIn, bool? withoutTenantId, String? jobDefinitionIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricIncidentsWithHttpInfo( incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processInstanceId: processInstanceId, executionId: executionId, createTimeBefore: createTimeBefore, createTimeAfter: createTimeAfter, endTimeBefore: endTimeBefore, endTimeAfter: endTimeAfter, activityId: activityId, failedActivityId: failedActivityId, causeIncidentId: causeIncidentId, rootCauseIncidentId: rootCauseIncidentId, configuration: configuration, historyConfiguration: historyConfiguration, open: open, resolved: resolved, deleted: deleted, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, jobDefinitionIdIn: jobDefinitionIdIn, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricIncidentDto>') as List)
        .cast<HistoricIncidentDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Incident Count
  ///
  /// Queries for the number of historic incidents that fulfill the given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (string%), ends with (%string) or contains (%string%). 
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to incidents that have the given processDefinitionKey.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that have one of the given process definition keys.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] createTimeBefore:
  ///   Restricts to incidents that have a createTime date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] createTimeAfter:
  ///   Restricts to incidents that have a createTime date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeBefore:
  ///   Restricts to incidents that have an endTimeBefore date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeAfter:
  ///   Restricts to incidents that have an endTimeAfter date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Restricts to incidents that belong to an activity with the given id.
  ///
  /// * [String] failedActivityId:
  ///   Restricts to incidents that were created due to the failure of an activity with the given id.
  ///
  /// * [String] causeIncidentId:
  ///   Restricts to incidents that have the given incident id as cause incident.
  ///
  /// * [String] rootCauseIncidentId:
  ///   Restricts to incidents that have the given incident id as root cause incident.
  ///
  /// * [String] configuration:
  ///   Restricts to incidents that have the given parameter set as configuration.
  ///
  /// * [String] historyConfiguration:
  ///   Restricts to incidents that have the given parameter set as history configuration.
  ///
  /// * [bool] open:
  ///   Restricts to incidents that are open.
  ///
  /// * [bool] resolved:
  ///   Restricts to incidents that are resolved.
  ///
  /// * [bool] deleted:
  ///   Restricts to incidents that are deleted.
  ///
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic incidents that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
  Future<Response> getHistoricIncidentsCountWithHttpInfo({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? createTimeBefore, DateTime? createTimeAfter, DateTime? endTimeBefore, DateTime? endTimeAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? historyConfiguration, bool? open, bool? resolved, bool? deleted, String? tenantIdIn, bool? withoutTenantId, String? jobDefinitionIdIn, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/incident/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (incidentId != null) {
      queryParams.addAll(_queryParams('', 'incidentId', incidentId));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (createTimeBefore != null) {
      queryParams.addAll(_queryParams('', 'createTimeBefore', createTimeBefore));
    }
    if (createTimeAfter != null) {
      queryParams.addAll(_queryParams('', 'createTimeAfter', createTimeAfter));
    }
    if (endTimeBefore != null) {
      queryParams.addAll(_queryParams('', 'endTimeBefore', endTimeBefore));
    }
    if (endTimeAfter != null) {
      queryParams.addAll(_queryParams('', 'endTimeAfter', endTimeAfter));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (failedActivityId != null) {
      queryParams.addAll(_queryParams('', 'failedActivityId', failedActivityId));
    }
    if (causeIncidentId != null) {
      queryParams.addAll(_queryParams('', 'causeIncidentId', causeIncidentId));
    }
    if (rootCauseIncidentId != null) {
      queryParams.addAll(_queryParams('', 'rootCauseIncidentId', rootCauseIncidentId));
    }
    if (configuration != null) {
      queryParams.addAll(_queryParams('', 'configuration', configuration));
    }
    if (historyConfiguration != null) {
      queryParams.addAll(_queryParams('', 'historyConfiguration', historyConfiguration));
    }
    if (open != null) {
      queryParams.addAll(_queryParams('', 'open', open));
    }
    if (resolved != null) {
      queryParams.addAll(_queryParams('', 'resolved', resolved));
    }
    if (deleted != null) {
      queryParams.addAll(_queryParams('', 'deleted', deleted));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (jobDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionIdIn', jobDefinitionIdIn));
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

  /// Get Incident Count
  ///
  /// Queries for the number of historic incidents that fulfill the given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/history/incident/get-incident-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (string%), ends with (%string) or contains (%string%). 
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restricts to incidents that have the given processDefinitionKey.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that have one of the given process definition keys.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] createTimeBefore:
  ///   Restricts to incidents that have a createTime date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] createTimeAfter:
  ///   Restricts to incidents that have a createTime date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeBefore:
  ///   Restricts to incidents that have an endTimeBefore date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] endTimeAfter:
  ///   Restricts to incidents that have an endTimeAfter date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] activityId:
  ///   Restricts to incidents that belong to an activity with the given id.
  ///
  /// * [String] failedActivityId:
  ///   Restricts to incidents that were created due to the failure of an activity with the given id.
  ///
  /// * [String] causeIncidentId:
  ///   Restricts to incidents that have the given incident id as cause incident.
  ///
  /// * [String] rootCauseIncidentId:
  ///   Restricts to incidents that have the given incident id as root cause incident.
  ///
  /// * [String] configuration:
  ///   Restricts to incidents that have the given parameter set as configuration.
  ///
  /// * [String] historyConfiguration:
  ///   Restricts to incidents that have the given parameter set as history configuration.
  ///
  /// * [bool] open:
  ///   Restricts to incidents that are open.
  ///
  /// * [bool] resolved:
  ///   Restricts to incidents that are resolved.
  ///
  /// * [bool] deleted:
  ///   Restricts to incidents that are deleted.
  ///
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic incidents that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
  Future<CountResultDto?> getHistoricIncidentsCount({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? createTimeBefore, DateTime? createTimeAfter, DateTime? endTimeBefore, DateTime? endTimeAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? historyConfiguration, bool? open, bool? resolved, bool? deleted, String? tenantIdIn, bool? withoutTenantId, String? jobDefinitionIdIn, }) async {
    final response = await getHistoricIncidentsCountWithHttpInfo( incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processInstanceId: processInstanceId, executionId: executionId, createTimeBefore: createTimeBefore, createTimeAfter: createTimeAfter, endTimeBefore: endTimeBefore, endTimeAfter: endTimeAfter, activityId: activityId, failedActivityId: failedActivityId, causeIncidentId: causeIncidentId, rootCauseIncidentId: rootCauseIncidentId, configuration: configuration, historyConfiguration: historyConfiguration, open: open, resolved: resolved, deleted: deleted, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, jobDefinitionIdIn: jobDefinitionIdIn, );
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
