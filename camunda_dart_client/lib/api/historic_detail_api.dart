//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricDetailApi {
  HistoricDetailApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Historic Details
  ///
  /// Queries for historic details that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic details which belong to one of the passed comma-separated process instance ids.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] variableInstanceId:
  ///   Filter by variable instance id.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] userOperationId:
  ///   Filter by a user operation id.
  ///
  /// * [bool] formFields:
  ///   Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] variableUpdates:
  ///   Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] excludeTaskDetails:
  ///   Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] initial:
  ///   Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] occurredBefore:
  ///   Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] occurredAfter:
  ///   Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
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
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getHistoricDetailsWithHttpInfo({ String? processInstanceId, String? processInstanceIdIn, String? executionId, String? taskId, String? activityInstanceId, String? caseInstanceId, String? caseExecutionId, String? variableInstanceId, String? variableTypeIn, String? tenantIdIn, bool? withoutTenantId, String? userOperationId, bool? formFields, bool? variableUpdates, bool? excludeTaskDetails, bool? initial, DateTime? occurredBefore, DateTime? occurredAfter, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/detail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (activityInstanceId != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceId', activityInstanceId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (variableInstanceId != null) {
      queryParams.addAll(_queryParams('', 'variableInstanceId', variableInstanceId));
    }
    if (variableTypeIn != null) {
      queryParams.addAll(_queryParams('', 'variableTypeIn', variableTypeIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (userOperationId != null) {
      queryParams.addAll(_queryParams('', 'userOperationId', userOperationId));
    }
    if (formFields != null) {
      queryParams.addAll(_queryParams('', 'formFields', formFields));
    }
    if (variableUpdates != null) {
      queryParams.addAll(_queryParams('', 'variableUpdates', variableUpdates));
    }
    if (excludeTaskDetails != null) {
      queryParams.addAll(_queryParams('', 'excludeTaskDetails', excludeTaskDetails));
    }
    if (initial != null) {
      queryParams.addAll(_queryParams('', 'initial', initial));
    }
    if (occurredBefore != null) {
      queryParams.addAll(_queryParams('', 'occurredBefore', occurredBefore));
    }
    if (occurredAfter != null) {
      queryParams.addAll(_queryParams('', 'occurredAfter', occurredAfter));
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
    if (deserializeValues != null) {
      queryParams.addAll(_queryParams('', 'deserializeValues', deserializeValues));
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

  /// Get Historic Details
  ///
  /// Queries for historic details that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic details which belong to one of the passed comma-separated process instance ids.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] variableInstanceId:
  ///   Filter by variable instance id.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] userOperationId:
  ///   Filter by a user operation id.
  ///
  /// * [bool] formFields:
  ///   Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] variableUpdates:
  ///   Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] excludeTaskDetails:
  ///   Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] initial:
  ///   Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] occurredBefore:
  ///   Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] occurredAfter:
  ///   Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
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
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<List<HistoricDetailDto>?> getHistoricDetails({ String? processInstanceId, String? processInstanceIdIn, String? executionId, String? taskId, String? activityInstanceId, String? caseInstanceId, String? caseExecutionId, String? variableInstanceId, String? variableTypeIn, String? tenantIdIn, bool? withoutTenantId, String? userOperationId, bool? formFields, bool? variableUpdates, bool? excludeTaskDetails, bool? initial, DateTime? occurredBefore, DateTime? occurredAfter, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    final response = await getHistoricDetailsWithHttpInfo( processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, executionId: executionId, taskId: taskId, activityInstanceId: activityInstanceId, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, variableInstanceId: variableInstanceId, variableTypeIn: variableTypeIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, userOperationId: userOperationId, formFields: formFields, variableUpdates: variableUpdates, excludeTaskDetails: excludeTaskDetails, initial: initial, occurredBefore: occurredBefore, occurredAfter: occurredAfter, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricDetailDto>') as List)
        .cast<HistoricDetailDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Historic Detail Count
  ///
  /// Queries for the number of historic details that fulfill the given parameters. Takes the same parameters as the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic details which belong to one of the passed comma-separated process instance ids.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] variableInstanceId:
  ///   Filter by variable instance id.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] userOperationId:
  ///   Filter by a user operation id.
  ///
  /// * [bool] formFields:
  ///   Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] variableUpdates:
  ///   Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] excludeTaskDetails:
  ///   Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] initial:
  ///   Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] occurredBefore:
  ///   Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] occurredAfter:
  ///   Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  Future<Response> getHistoricDetailsCountWithHttpInfo({ String? processInstanceId, String? processInstanceIdIn, String? executionId, String? taskId, String? activityInstanceId, String? caseInstanceId, String? caseExecutionId, String? variableInstanceId, String? variableTypeIn, String? tenantIdIn, bool? withoutTenantId, String? userOperationId, bool? formFields, bool? variableUpdates, bool? excludeTaskDetails, bool? initial, DateTime? occurredBefore, DateTime? occurredAfter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/detail/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (activityInstanceId != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceId', activityInstanceId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (variableInstanceId != null) {
      queryParams.addAll(_queryParams('', 'variableInstanceId', variableInstanceId));
    }
    if (variableTypeIn != null) {
      queryParams.addAll(_queryParams('', 'variableTypeIn', variableTypeIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (userOperationId != null) {
      queryParams.addAll(_queryParams('', 'userOperationId', userOperationId));
    }
    if (formFields != null) {
      queryParams.addAll(_queryParams('', 'formFields', formFields));
    }
    if (variableUpdates != null) {
      queryParams.addAll(_queryParams('', 'variableUpdates', variableUpdates));
    }
    if (excludeTaskDetails != null) {
      queryParams.addAll(_queryParams('', 'excludeTaskDetails', excludeTaskDetails));
    }
    if (initial != null) {
      queryParams.addAll(_queryParams('', 'initial', initial));
    }
    if (occurredBefore != null) {
      queryParams.addAll(_queryParams('', 'occurredBefore', occurredBefore));
    }
    if (occurredAfter != null) {
      queryParams.addAll(_queryParams('', 'occurredAfter', occurredAfter));
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

  /// Get Historic Detail Count
  ///
  /// Queries for the number of historic details that fulfill the given parameters. Takes the same parameters as the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic details which belong to one of the passed comma-separated process instance ids.
  ///
  /// * [String] executionId:
  ///   Filter by execution id.
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] activityInstanceId:
  ///   Filter by activity instance id.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by case execution id.
  ///
  /// * [String] variableInstanceId:
  ///   Filter by variable instance id.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] userOperationId:
  ///   Filter by a user operation id.
  ///
  /// * [bool] formFields:
  ///   Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] variableUpdates:
  ///   Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] excludeTaskDetails:
  ///   Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] initial:
  ///   Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] occurredBefore:
  ///   Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  ///
  /// * [DateTime] occurredAfter:
  ///   Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
  Future<CountResultDto?> getHistoricDetailsCount({ String? processInstanceId, String? processInstanceIdIn, String? executionId, String? taskId, String? activityInstanceId, String? caseInstanceId, String? caseExecutionId, String? variableInstanceId, String? variableTypeIn, String? tenantIdIn, bool? withoutTenantId, String? userOperationId, bool? formFields, bool? variableUpdates, bool? excludeTaskDetails, bool? initial, DateTime? occurredBefore, DateTime? occurredAfter, }) async {
    final response = await getHistoricDetailsCountWithHttpInfo( processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, executionId: executionId, taskId: taskId, activityInstanceId: activityInstanceId, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, variableInstanceId: variableInstanceId, variableTypeIn: variableTypeIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, userOperationId: userOperationId, formFields: formFields, variableUpdates: variableUpdates, excludeTaskDetails: excludeTaskDetails, initial: initial, occurredBefore: occurredBefore, occurredAfter: occurredAfter, );
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

  /// Get Historic Detail
  ///
  /// Retrieves a historic detail by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the detail.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> historicDetailWithHttpInfo(String id, { bool? deserializeValue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/detail/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (deserializeValue != null) {
      queryParams.addAll(_queryParams('', 'deserializeValue', deserializeValue));
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

  /// Get Historic Detail
  ///
  /// Retrieves a historic detail by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the detail.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<HistoricDetailDto?> historicDetail(String id, { bool? deserializeValue, }) async {
    final response = await historicDetailWithHttpInfo(id,  deserializeValue: deserializeValue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricDetailDto',) as HistoricDetailDto;
    
    }
    return null;
  }

  /// Get Historic Detail (Binary)
  ///
  /// Retrieves the content of a historic variable update by id. Applicable for byte array and file variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic variable update.
  Future<Response> historicDetailBinaryWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/detail/{id}/data'
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

  /// Get Historic Detail (Binary)
  ///
  /// Retrieves the content of a historic variable update by id. Applicable for byte array and file variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the historic variable update.
  Future<MultipartFile?> historicDetailBinary(String id,) async {
    final response = await historicDetailBinaryWithHttpInfo(id,);
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

  /// Get Historic Details (POST)
  ///
  /// Queries for historic details that fulfill the given parameters. This method is slightly more powerful than the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method because it allows sorting by multiple parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
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
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  ///
  /// * [HistoricDetailQueryDto] historicDetailQueryDto:
  Future<Response> queryHistoricDetailsWithHttpInfo({ int? firstResult, int? maxResults, bool? deserializeValues, HistoricDetailQueryDto? historicDetailQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/detail';

    // ignore: prefer_final_locals
    Object? postBody = historicDetailQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }
    if (deserializeValues != null) {
      queryParams.addAll(_queryParams('', 'deserializeValues', deserializeValues));
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

  /// Get Historic Details (POST)
  ///
  /// Queries for historic details that fulfill the given parameters. This method is slightly more powerful than the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method because it allows sorting by multiple parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  ///
  /// * [HistoricDetailQueryDto] historicDetailQueryDto:
  Future<List<HistoricDetailDto>?> queryHistoricDetails({ int? firstResult, int? maxResults, bool? deserializeValues, HistoricDetailQueryDto? historicDetailQueryDto, }) async {
    final response = await queryHistoricDetailsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, historicDetailQueryDto: historicDetailQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricDetailDto>') as List)
        .cast<HistoricDetailDto>()
        .toList(growable: false);

    }
    return null;
  }
}
