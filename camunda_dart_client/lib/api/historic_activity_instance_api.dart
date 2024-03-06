//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricActivityInstanceApi {
  HistoricActivityInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get
  ///
  /// Retrieves a historic activity instance by id, according to the `HistoricActivityInstance` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic activity instance to be retrieved.
  Future<Response> getHistoricActivityInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/activity-instance/{id}'
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

  /// Get
  ///
  /// Retrieves a historic activity instance by id, according to the `HistoricActivityInstance` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic activity instance to be retrieved.
  Future<HistoricActivityInstanceDto?> getHistoricActivityInstance(String id,) async {
    final response = await getHistoricActivityInstanceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricActivityInstanceDto',) as HistoricActivityInstanceDto;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
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
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the activity instance.
  ///
  /// * [String] activityId:
  ///   Filter by the activity id (according to BPMN 2.0 XML).
  ///
  /// * [String] activityName:
  ///   Filter by the activity name (according to BPMN 2.0 XML).
  ///
  /// * [String] activityType:
  ///   Filter by activity type.
  ///
  /// * [String] taskAssignee:
  ///   Only include activity instances that are user tasks and assigned to a given user.
  ///
  /// * [bool] finished:
  ///   Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] canceled:
  ///   Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] completeScope:
  ///   Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricActivityInstancesWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? activityInstanceId, String? processInstanceId, String? processDefinitionId, String? executionId, String? activityId, String? activityName, String? activityType, String? taskAssignee, bool? finished, bool? unfinished, bool? canceled, bool? completeScope, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/activity-instance';

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
    if (activityInstanceId != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceId', activityInstanceId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (activityName != null) {
      queryParams.addAll(_queryParams('', 'activityName', activityName));
    }
    if (activityType != null) {
      queryParams.addAll(_queryParams('', 'activityType', activityType));
    }
    if (taskAssignee != null) {
      queryParams.addAll(_queryParams('', 'taskAssignee', taskAssignee));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (canceled != null) {
      queryParams.addAll(_queryParams('', 'canceled', canceled));
    }
    if (completeScope != null) {
      queryParams.addAll(_queryParams('', 'completeScope', completeScope));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (finishedBefore != null) {
      queryParams.addAll(_queryParams('', 'finishedBefore', finishedBefore));
    }
    if (finishedAfter != null) {
      queryParams.addAll(_queryParams('', 'finishedAfter', finishedAfter));
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

  /// Get List
  ///
  /// Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
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
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the activity instance.
  ///
  /// * [String] activityId:
  ///   Filter by the activity id (according to BPMN 2.0 XML).
  ///
  /// * [String] activityName:
  ///   Filter by the activity name (according to BPMN 2.0 XML).
  ///
  /// * [String] activityType:
  ///   Filter by activity type.
  ///
  /// * [String] taskAssignee:
  ///   Only include activity instances that are user tasks and assigned to a given user.
  ///
  /// * [bool] finished:
  ///   Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] canceled:
  ///   Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] completeScope:
  ///   Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<List<HistoricActivityInstanceDto>?> getHistoricActivityInstances({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? activityInstanceId, String? processInstanceId, String? processDefinitionId, String? executionId, String? activityId, String? activityName, String? activityType, String? taskAssignee, bool? finished, bool? unfinished, bool? canceled, bool? completeScope, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, }) async {
    final response = await getHistoricActivityInstancesWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, activityInstanceId: activityInstanceId, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, executionId: executionId, activityId: activityId, activityName: activityName, activityType: activityType, taskAssignee: taskAssignee, finished: finished, unfinished: unfinished, canceled: canceled, completeScope: completeScope, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricActivityInstanceDto>') as List)
        .cast<HistoricActivityInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of historic activity instances that fulfill the given parameters. Takes the same parameters as the [Get Historic Activity Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query/)  method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the activity instance.
  ///
  /// * [String] activityId:
  ///   Filter by the activity id (according to BPMN 2.0 XML).
  ///
  /// * [String] activityName:
  ///   Filter by the activity name (according to BPMN 2.0 XML).
  ///
  /// * [String] activityType:
  ///   Filter by activity type.
  ///
  /// * [String] taskAssignee:
  ///   Only include activity instances that are user tasks and assigned to a given user.
  ///
  /// * [bool] finished:
  ///   Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] canceled:
  ///   Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] completeScope:
  ///   Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricActivityInstancesCountWithHttpInfo({ String? activityInstanceId, String? processInstanceId, String? processDefinitionId, String? executionId, String? activityId, String? activityName, String? activityType, String? taskAssignee, bool? finished, bool? unfinished, bool? canceled, bool? completeScope, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/activity-instance/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (activityInstanceId != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceId', activityInstanceId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (activityName != null) {
      queryParams.addAll(_queryParams('', 'activityName', activityName));
    }
    if (activityType != null) {
      queryParams.addAll(_queryParams('', 'activityType', activityType));
    }
    if (taskAssignee != null) {
      queryParams.addAll(_queryParams('', 'taskAssignee', taskAssignee));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (canceled != null) {
      queryParams.addAll(_queryParams('', 'canceled', canceled));
    }
    if (completeScope != null) {
      queryParams.addAll(_queryParams('', 'completeScope', completeScope));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (finishedBefore != null) {
      queryParams.addAll(_queryParams('', 'finishedBefore', finishedBefore));
    }
    if (finishedAfter != null) {
      queryParams.addAll(_queryParams('', 'finishedAfter', finishedAfter));
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

  /// Get List Count
  ///
  /// Queries for the number of historic activity instances that fulfill the given parameters. Takes the same parameters as the [Get Historic Activity Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query/)  method.
  ///
  /// Parameters:
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the activity instance.
  ///
  /// * [String] activityId:
  ///   Filter by the activity id (according to BPMN 2.0 XML).
  ///
  /// * [String] activityName:
  ///   Filter by the activity name (according to BPMN 2.0 XML).
  ///
  /// * [String] activityType:
  ///   Filter by activity type.
  ///
  /// * [String] taskAssignee:
  ///   Only include activity instances that are user tasks and assigned to a given user.
  ///
  /// * [bool] finished:
  ///   Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] canceled:
  ///   Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [bool] completeScope:
  ///   Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getHistoricActivityInstancesCount({ String? activityInstanceId, String? processInstanceId, String? processDefinitionId, String? executionId, String? activityId, String? activityName, String? activityType, String? taskAssignee, bool? finished, bool? unfinished, bool? canceled, bool? completeScope, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, }) async {
    final response = await getHistoricActivityInstancesCountWithHttpInfo( activityInstanceId: activityInstanceId, processInstanceId: processInstanceId, processDefinitionId: processDefinitionId, executionId: executionId, activityId: activityId, activityName: activityName, activityType: activityType, taskAssignee: taskAssignee, finished: finished, unfinished: unfinished, canceled: canceled, completeScope: completeScope, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, );
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

  /// Get List (POST)
  ///
  /// Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricActivityInstanceQueryDto] historicActivityInstanceQueryDto:
  Future<Response> queryHistoricActivityInstancesWithHttpInfo({ int? firstResult, int? maxResults, HistoricActivityInstanceQueryDto? historicActivityInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/activity-instance';

    // ignore: prefer_final_locals
    Object? postBody = historicActivityInstanceQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

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

  /// Get List (POST)
  ///
  /// Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricActivityInstanceQueryDto] historicActivityInstanceQueryDto:
  Future<List<HistoricActivityInstanceDto>?> queryHistoricActivityInstances({ int? firstResult, int? maxResults, HistoricActivityInstanceQueryDto? historicActivityInstanceQueryDto, }) async {
    final response = await queryHistoricActivityInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, historicActivityInstanceQueryDto: historicActivityInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricActivityInstanceDto>') as List)
        .cast<HistoricActivityInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Queries for the number of historic activity instances that fulfill the given parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricActivityInstanceQueryDto] historicActivityInstanceQueryDto:
  Future<Response> queryHistoricActivityInstancesCountWithHttpInfo({ HistoricActivityInstanceQueryDto? historicActivityInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/activity-instance/count';

    // ignore: prefer_final_locals
    Object? postBody = historicActivityInstanceQueryDto;

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

  /// Get List Count (POST)
  ///
  /// Queries for the number of historic activity instances that fulfill the given parameters.
  ///
  /// Parameters:
  ///
  /// * [HistoricActivityInstanceQueryDto] historicActivityInstanceQueryDto:
  Future<CountResultDto?> queryHistoricActivityInstancesCount({ HistoricActivityInstanceQueryDto? historicActivityInstanceQueryDto, }) async {
    final response = await queryHistoricActivityInstancesCountWithHttpInfo( historicActivityInstanceQueryDto: historicActivityInstanceQueryDto, );
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
