//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IncidentApi {
  IncidentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Clear Incident Annotation
  ///
  /// Clears the annotation of an incident with given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to clear the annotation at.
  Future<Response> clearIncidentAnnotationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/incident/{id}/annotation'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Clear Incident Annotation
  ///
  /// Clears the annotation of an incident with given id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to clear the annotation at.
  Future<void> clearIncidentAnnotation(String id,) async {
    final response = await clearIncidentAnnotationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Incident
  ///
  /// Retrieves an incident by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to be retrieved.
  Future<Response> getIncidentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/incident/{id}'
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

  /// Get Incident
  ///
  /// Retrieves an incident by ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to be retrieved.
  Future<IncidentDto?> getIncident(String id,) async {
    final response = await getIncidentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IncidentDto',) as IncidentDto;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Queries for incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] incidentTimestampBefore:
  ///   Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] incidentTimestampAfter:
  ///   Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
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
  Future<Response> getIncidentsWithHttpInfo({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? incidentTimestampBefore, DateTime? incidentTimestampAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? tenantIdIn, String? jobDefinitionIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/incident';

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
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (incidentTimestampBefore != null) {
      queryParams.addAll(_queryParams('', 'incidentTimestampBefore', incidentTimestampBefore));
    }
    if (incidentTimestampAfter != null) {
      queryParams.addAll(_queryParams('', 'incidentTimestampAfter', incidentTimestampAfter));
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
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
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

  /// Get List
  ///
  /// Queries for incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] incidentTimestampBefore:
  ///   Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] incidentTimestampAfter:
  ///   Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
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
  Future<List<IncidentDto>?> getIncidents({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? incidentTimestampBefore, DateTime? incidentTimestampAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? tenantIdIn, String? jobDefinitionIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getIncidentsWithHttpInfo( incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, processDefinitionId: processDefinitionId, processDefinitionKeyIn: processDefinitionKeyIn, processInstanceId: processInstanceId, executionId: executionId, incidentTimestampBefore: incidentTimestampBefore, incidentTimestampAfter: incidentTimestampAfter, activityId: activityId, failedActivityId: failedActivityId, causeIncidentId: causeIncidentId, rootCauseIncidentId: rootCauseIncidentId, configuration: configuration, tenantIdIn: tenantIdIn, jobDefinitionIdIn: jobDefinitionIdIn, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IncidentDto>') as List)
        .cast<IncidentDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of incidents that fulfill given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] incidentTimestampBefore:
  ///   Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] incidentTimestampAfter:
  ///   Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
  Future<Response> getIncidentsCountWithHttpInfo({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? incidentTimestampBefore, DateTime? incidentTimestampAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? tenantIdIn, String? jobDefinitionIdIn, }) async {
    // ignore: prefer_const_declarations
    final path = r'/incident/count';

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
    if (processDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyIn', processDefinitionKeyIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (incidentTimestampBefore != null) {
      queryParams.addAll(_queryParams('', 'incidentTimestampBefore', incidentTimestampBefore));
    }
    if (incidentTimestampAfter != null) {
      queryParams.addAll(_queryParams('', 'incidentTimestampAfter', incidentTimestampAfter));
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
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
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

  /// Get List Count
  ///
  /// Queries for the number of incidents that fulfill given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] incidentId:
  ///   Restricts to incidents that have the given id.
  ///
  /// * [String] incidentType:
  ///   Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Restricts to incidents that have the given incident message.
  ///
  /// * [String] incidentMessageLike:
  ///   Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
  ///
  /// * [String] processDefinitionId:
  ///   Restricts to incidents that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
  ///
  /// * [String] processInstanceId:
  ///   Restricts to incidents that belong to a process instance with the given id.
  ///
  /// * [String] executionId:
  ///   Restricts to incidents that belong to an execution with the given id.
  ///
  /// * [DateTime] incidentTimestampBefore:
  ///   Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] incidentTimestampAfter:
  ///   Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  /// * [String] tenantIdIn:
  ///   Restricts to incidents that have one of the given comma-separated tenant ids.
  ///
  /// * [String] jobDefinitionIdIn:
  ///   Restricts to incidents that have one of the given comma-separated job definition ids.
  Future<CountResultDto?> getIncidentsCount({ String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? processDefinitionId, String? processDefinitionKeyIn, String? processInstanceId, String? executionId, DateTime? incidentTimestampBefore, DateTime? incidentTimestampAfter, String? activityId, String? failedActivityId, String? causeIncidentId, String? rootCauseIncidentId, String? configuration, String? tenantIdIn, String? jobDefinitionIdIn, }) async {
    final response = await getIncidentsCountWithHttpInfo( incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, processDefinitionId: processDefinitionId, processDefinitionKeyIn: processDefinitionKeyIn, processInstanceId: processInstanceId, executionId: executionId, incidentTimestampBefore: incidentTimestampBefore, incidentTimestampAfter: incidentTimestampAfter, activityId: activityId, failedActivityId: failedActivityId, causeIncidentId: causeIncidentId, rootCauseIncidentId: rootCauseIncidentId, configuration: configuration, tenantIdIn: tenantIdIn, jobDefinitionIdIn: jobDefinitionIdIn, );
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

  /// Resolve Incident
  ///
  /// Resolves an incident with given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to be resolved.
  Future<Response> resolveIncidentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/incident/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Resolve Incident
  ///
  /// Resolves an incident with given id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to be resolved.
  Future<void> resolveIncident(String id,) async {
    final response = await resolveIncidentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Incident Annotation
  ///
  /// Sets the annotation of an incident with given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to clear the annotation at.
  ///
  /// * [AnnotationDto] annotationDto:
  Future<Response> setIncidentAnnotationWithHttpInfo(String id, { AnnotationDto? annotationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/incident/{id}/annotation'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = annotationDto;

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

  /// Set Incident Annotation
  ///
  /// Sets the annotation of an incident with given id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the incident to clear the annotation at.
  ///
  /// * [AnnotationDto] annotationDto:
  Future<void> setIncidentAnnotation(String id, { AnnotationDto? annotationDto, }) async {
    final response = await setIncidentAnnotationWithHttpInfo(id,  annotationDto: annotationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
