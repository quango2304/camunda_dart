//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricVariableInstanceApi {
  HistoricVariableInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Variable Instance
  ///
  /// Deletes a historic variable instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<Response> deleteHistoricVariableInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance/{id}'
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

  /// Delete Variable Instance
  ///
  /// Deletes a historic variable instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<void> deleteHistoricVariableInstance(String id,) async {
    final response = await deleteHistoricVariableInstanceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Variable Instance
  ///
  /// Retrieves a historic variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getHistoricVariableInstanceWithHttpInfo(String id, { bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Get Variable Instance
  ///
  /// Retrieves a historic variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<HistoricVariableInstanceDto?> getHistoricVariableInstance(String id, { bool? deserializeValues, }) async {
    final response = await getHistoricVariableInstanceWithHttpInfo(id,  deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'HistoricVariableInstanceDto',) as HistoricVariableInstanceDto;
    
    }
    return null;
  }

  /// Get Variable Instance (Binary)
  ///
  /// Retrieves the content of a historic variable by id. Applicable for variables that are serialized as binary data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<Response> getHistoricVariableInstanceBinaryWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance/{id}/data'
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

  /// Get Variable Instance (Binary)
  ///
  /// Retrieves the content of a historic variable by id. Applicable for variables that are serialized as binary data.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<MultipartFile?> getHistoricVariableInstanceBinary(String id,) async {
    final response = await getHistoricVariableInstanceBinaryWithHttpInfo(id,);
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

  /// Get Variable Instances
  ///
  /// Queries for historic variable instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable name.
  ///
  /// * [String] variableNameLike:
  ///   Restrict to variables with a name like the parameter.
  ///
  /// * [Object] variableValue:
  ///   Filter by variable value. Is treated as a `String` object on server side.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
  ///
  /// * [bool] includeDeleted:
  ///   Include variables that has already been deleted during the execution.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the variable belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the variable belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by a key of the process definition the variable belongs to.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the variable belongs to.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
  ///
  /// * [String] caseActivityIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] variableNameIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated variable names.
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
  Future<Response> getHistoricVariableInstancesWithHttpInfo({ String? variableName, String? variableNameLike, Object? variableValue, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableTypeIn, bool? includeDeleted, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? processDefinitionKey, String? executionIdIn, String? caseInstanceId, String? caseExecutionIdIn, String? caseActivityIdIn, String? taskIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? variableNameIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableName != null) {
      queryParams.addAll(_queryParams('', 'variableName', variableName));
    }
    if (variableNameLike != null) {
      queryParams.addAll(_queryParams('', 'variableNameLike', variableNameLike));
    }
    if (variableValue != null) {
      queryParams.addAll(_queryParams('', 'variableValue', variableValue));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (variableTypeIn != null) {
      queryParams.addAll(_queryParams('', 'variableTypeIn', variableTypeIn));
    }
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'includeDeleted', includeDeleted));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionIdIn', caseExecutionIdIn));
    }
    if (caseActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseActivityIdIn', caseActivityIdIn));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
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
    if (variableNameIn != null) {
      queryParams.addAll(_queryParams('', 'variableNameIn', variableNameIn));
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

  /// Get Variable Instances
  ///
  /// Queries for historic variable instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable name.
  ///
  /// * [String] variableNameLike:
  ///   Restrict to variables with a name like the parameter.
  ///
  /// * [Object] variableValue:
  ///   Filter by variable value. Is treated as a `String` object on server side.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
  ///
  /// * [bool] includeDeleted:
  ///   Include variables that has already been deleted during the execution.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the variable belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the variable belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by a key of the process definition the variable belongs to.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the variable belongs to.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
  ///
  /// * [String] caseActivityIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] variableNameIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated variable names.
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
  Future<List<HistoricVariableInstanceDto>?> getHistoricVariableInstances({ String? variableName, String? variableNameLike, Object? variableValue, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableTypeIn, bool? includeDeleted, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? processDefinitionKey, String? executionIdIn, String? caseInstanceId, String? caseExecutionIdIn, String? caseActivityIdIn, String? taskIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? variableNameIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    final response = await getHistoricVariableInstancesWithHttpInfo( variableName: variableName, variableNameLike: variableNameLike, variableValue: variableValue, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, variableTypeIn: variableTypeIn, includeDeleted: includeDeleted, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, executionIdIn: executionIdIn, caseInstanceId: caseInstanceId, caseExecutionIdIn: caseExecutionIdIn, caseActivityIdIn: caseActivityIdIn, taskIdIn: taskIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, variableNameIn: variableNameIn, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricVariableInstanceDto>') as List)
        .cast<HistoricVariableInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Variable Instance Count
  ///
  /// Queries for the number of historic variable instances that fulfill the given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable name.
  ///
  /// * [String] variableNameLike:
  ///   Restrict to variables with a name like the parameter.
  ///
  /// * [Object] variableValue:
  ///   Filter by variable value. Is treated as a `String` object on server side.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
  ///
  /// * [bool] includeDeleted:
  ///   Include variables that has already been deleted during the execution.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the variable belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the variable belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by a key of the process definition the variable belongs to.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the variable belongs to.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
  ///
  /// * [String] caseActivityIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] variableNameIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated variable names.
  Future<Response> getHistoricVariableInstancesCountWithHttpInfo({ String? variableName, String? variableNameLike, Object? variableValue, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableTypeIn, bool? includeDeleted, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? processDefinitionKey, String? executionIdIn, String? caseInstanceId, String? caseExecutionIdIn, String? caseActivityIdIn, String? taskIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? variableNameIn, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableName != null) {
      queryParams.addAll(_queryParams('', 'variableName', variableName));
    }
    if (variableNameLike != null) {
      queryParams.addAll(_queryParams('', 'variableNameLike', variableNameLike));
    }
    if (variableValue != null) {
      queryParams.addAll(_queryParams('', 'variableValue', variableValue));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (variableTypeIn != null) {
      queryParams.addAll(_queryParams('', 'variableTypeIn', variableTypeIn));
    }
    if (includeDeleted != null) {
      queryParams.addAll(_queryParams('', 'includeDeleted', includeDeleted));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionIdIn', caseExecutionIdIn));
    }
    if (caseActivityIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseActivityIdIn', caseActivityIdIn));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
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
    if (variableNameIn != null) {
      queryParams.addAll(_queryParams('', 'variableNameIn', variableNameIn));
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

  /// Get Variable Instance Count
  ///
  /// Queries for the number of historic variable instances that fulfill the given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable name.
  ///
  /// * [String] variableNameLike:
  ///   Restrict to variables with a name like the parameter.
  ///
  /// * [Object] variableValue:
  ///   Filter by variable value. Is treated as a `String` object on server side.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableTypeIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
  ///
  /// * [bool] includeDeleted:
  ///   Include variables that has already been deleted during the execution.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the process instance the variable belongs to.
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the variable belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by a key of the process definition the variable belongs to.
  ///
  /// * [String] executionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by the case instance the variable belongs to.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
  ///
  /// * [String] caseActivityIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] variableNameIn:
  ///   Only include historic variable instances which belong to one of the passed and comma-separated variable names.
  Future<CountResultDto?> getHistoricVariableInstancesCount({ String? variableName, String? variableNameLike, Object? variableValue, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableTypeIn, bool? includeDeleted, String? processInstanceId, String? processInstanceIdIn, String? processDefinitionId, String? processDefinitionKey, String? executionIdIn, String? caseInstanceId, String? caseExecutionIdIn, String? caseActivityIdIn, String? taskIdIn, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? variableNameIn, }) async {
    final response = await getHistoricVariableInstancesCountWithHttpInfo( variableName: variableName, variableNameLike: variableNameLike, variableValue: variableValue, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, variableTypeIn: variableTypeIn, includeDeleted: includeDeleted, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, executionIdIn: executionIdIn, caseInstanceId: caseInstanceId, caseExecutionIdIn: caseExecutionIdIn, caseActivityIdIn: caseActivityIdIn, taskIdIn: taskIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, variableNameIn: variableNameIn, );
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

  /// Get Variable Instances (POST)
  ///
  /// Queries for historic variable instances that fulfill the given parameters. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method because it allows filtering by variable values of the different types `String`, `Number` or `Boolean`.
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
  /// * [HistoricVariableInstanceQueryDto] historicVariableInstanceQueryDto:
  Future<Response> queryHistoricVariableInstancesWithHttpInfo({ int? firstResult, int? maxResults, bool? deserializeValues, HistoricVariableInstanceQueryDto? historicVariableInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance';

    // ignore: prefer_final_locals
    Object? postBody = historicVariableInstanceQueryDto;

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

  /// Get Variable Instances (POST)
  ///
  /// Queries for historic variable instances that fulfill the given parameters. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method because it allows filtering by variable values of the different types `String`, `Number` or `Boolean`.
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
  /// * [HistoricVariableInstanceQueryDto] historicVariableInstanceQueryDto:
  Future<List<HistoricVariableInstanceDto>?> queryHistoricVariableInstances({ int? firstResult, int? maxResults, bool? deserializeValues, HistoricVariableInstanceQueryDto? historicVariableInstanceQueryDto, }) async {
    final response = await queryHistoricVariableInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, historicVariableInstanceQueryDto: historicVariableInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricVariableInstanceDto>') as List)
        .cast<HistoricVariableInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Variable Instance Count (POST)
  ///
  /// Queries for historic variable instances that fulfill the given parameters. This method takes the same message body as the [Get Variable Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/post-variable-instance-query/) method and therefore it is more powerful regarding variable values than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricVariableInstanceQueryDto] historicVariableInstanceQueryDto:
  Future<Response> queryHistoricVariableInstancesCountWithHttpInfo({ HistoricVariableInstanceQueryDto? historicVariableInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/variable-instance/count';

    // ignore: prefer_final_locals
    Object? postBody = historicVariableInstanceQueryDto;

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

  /// Get Variable Instance Count (POST)
  ///
  /// Queries for historic variable instances that fulfill the given parameters. This method takes the same message body as the [Get Variable Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/post-variable-instance-query/) method and therefore it is more powerful regarding variable values than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [HistoricVariableInstanceQueryDto] historicVariableInstanceQueryDto:
  Future<CountResultDto?> queryHistoricVariableInstancesCount({ HistoricVariableInstanceQueryDto? historicVariableInstanceQueryDto, }) async {
    final response = await queryHistoricVariableInstancesCountWithHttpInfo( historicVariableInstanceQueryDto: historicVariableInstanceQueryDto, );
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
