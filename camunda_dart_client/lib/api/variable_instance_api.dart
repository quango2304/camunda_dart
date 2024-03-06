//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VariableInstanceApi {
  VariableInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Variable Instance
  ///
  /// Retrieves a variable by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:**  While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getVariableInstanceWithHttpInfo(String id, { bool? deserializeValue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance/{id}'
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

  /// Get Variable Instance
  ///
  /// Retrieves a variable by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:**  While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<VariableInstanceDto?> getVariableInstance(String id, { bool? deserializeValue, }) async {
    final response = await getVariableInstanceWithHttpInfo(id,  deserializeValue: deserializeValue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VariableInstanceDto',) as VariableInstanceDto;
    
    }
    return null;
  }

  /// Get Variable Instance (Binary)
  ///
  /// Retrieves the content of a variable by id. Applicable for byte array and file variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<Response> getVariableInstanceBinaryWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance/{id}/data'
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
  /// Retrieves the content of a variable by id. Applicable for byte array and file variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the variable instance.
  Future<MultipartFile?> getVariableInstanceBinary(String id,) async {
    final response = await getVariableInstanceBinaryWithHttpInfo(id,);
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
  /// Query for variable instances that fulfill given parameters. Parameters may be the properties of variable instances, such as the name or type. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable instance name.
  ///
  /// * [String] variableNameLike:
  ///   Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated execution ids.
  ///
  /// * [String] caseInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case instance ids.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case execution ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated task ids.
  ///
  /// * [String] batchIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated batch ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [String] variableValues:
  ///   Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableScopeIdIn:
  ///   Only include variable instances which belong to one of passed scope ids.
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
  Future<Response> getVariableInstancesWithHttpInfo({ String? variableName, String? variableNameLike, String? processInstanceIdIn, String? executionIdIn, String? caseInstanceIdIn, String? caseExecutionIdIn, String? taskIdIn, String? batchIdIn, String? activityInstanceIdIn, String? tenantIdIn, String? variableValues, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableScopeIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance';

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
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (caseInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceIdIn', caseInstanceIdIn));
    }
    if (caseExecutionIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionIdIn', caseExecutionIdIn));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
    }
    if (batchIdIn != null) {
      queryParams.addAll(_queryParams('', 'batchIdIn', batchIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (variableValues != null) {
      queryParams.addAll(_queryParams('', 'variableValues', variableValues));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (variableScopeIdIn != null) {
      queryParams.addAll(_queryParams('', 'variableScopeIdIn', variableScopeIdIn));
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
  /// Query for variable instances that fulfill given parameters. Parameters may be the properties of variable instances, such as the name or type. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable instance name.
  ///
  /// * [String] variableNameLike:
  ///   Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated execution ids.
  ///
  /// * [String] caseInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case instance ids.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case execution ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated task ids.
  ///
  /// * [String] batchIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated batch ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [String] variableValues:
  ///   Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableScopeIdIn:
  ///   Only include variable instances which belong to one of passed scope ids.
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
  Future<List<VariableInstanceDto>?> getVariableInstances({ String? variableName, String? variableNameLike, String? processInstanceIdIn, String? executionIdIn, String? caseInstanceIdIn, String? caseExecutionIdIn, String? taskIdIn, String? batchIdIn, String? activityInstanceIdIn, String? tenantIdIn, String? variableValues, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableScopeIdIn, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, bool? deserializeValues, }) async {
    final response = await getVariableInstancesWithHttpInfo( variableName: variableName, variableNameLike: variableNameLike, processInstanceIdIn: processInstanceIdIn, executionIdIn: executionIdIn, caseInstanceIdIn: caseInstanceIdIn, caseExecutionIdIn: caseExecutionIdIn, taskIdIn: taskIdIn, batchIdIn: batchIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, variableValues: variableValues, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, variableScopeIdIn: variableScopeIdIn, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VariableInstanceDto>') as List)
        .cast<VariableInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Variable Instance Count
  ///
  /// Query for the number of variable instances that fulfill given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable instance name.
  ///
  /// * [String] variableNameLike:
  ///   Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated execution ids.
  ///
  /// * [String] caseInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case instance ids.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case execution ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated task ids.
  ///
  /// * [String] batchIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated batch ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [String] variableValues:
  ///   Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableScopeIdIn:
  ///   Only include variable instances which belong to one of passed scope ids.
  Future<Response> getVariableInstancesCountWithHttpInfo({ String? variableName, String? variableNameLike, String? processInstanceIdIn, String? executionIdIn, String? caseInstanceIdIn, String? caseExecutionIdIn, String? taskIdIn, String? batchIdIn, String? activityInstanceIdIn, String? tenantIdIn, String? variableValues, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableScopeIdIn, }) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance/count';

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
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (executionIdIn != null) {
      queryParams.addAll(_queryParams('', 'executionIdIn', executionIdIn));
    }
    if (caseInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceIdIn', caseInstanceIdIn));
    }
    if (caseExecutionIdIn != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionIdIn', caseExecutionIdIn));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
    }
    if (batchIdIn != null) {
      queryParams.addAll(_queryParams('', 'batchIdIn', batchIdIn));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (variableValues != null) {
      queryParams.addAll(_queryParams('', 'variableValues', variableValues));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (variableScopeIdIn != null) {
      queryParams.addAll(_queryParams('', 'variableScopeIdIn', variableScopeIdIn));
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
  /// Query for the number of variable instances that fulfill given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] variableName:
  ///   Filter by variable instance name.
  ///
  /// * [String] variableNameLike:
  ///   Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] processInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated process instance ids.
  ///
  /// * [String] executionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated execution ids.
  ///
  /// * [String] caseInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case instance ids.
  ///
  /// * [String] caseExecutionIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated case execution ids.
  ///
  /// * [String] taskIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated task ids.
  ///
  /// * [String] batchIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated batch ids.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include variable instances which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [String] variableValues:
  ///   Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] variableScopeIdIn:
  ///   Only include variable instances which belong to one of passed scope ids.
  Future<CountResultDto?> getVariableInstancesCount({ String? variableName, String? variableNameLike, String? processInstanceIdIn, String? executionIdIn, String? caseInstanceIdIn, String? caseExecutionIdIn, String? taskIdIn, String? batchIdIn, String? activityInstanceIdIn, String? tenantIdIn, String? variableValues, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? variableScopeIdIn, }) async {
    final response = await getVariableInstancesCountWithHttpInfo( variableName: variableName, variableNameLike: variableNameLike, processInstanceIdIn: processInstanceIdIn, executionIdIn: executionIdIn, caseInstanceIdIn: caseInstanceIdIn, caseExecutionIdIn: caseExecutionIdIn, taskIdIn: taskIdIn, batchIdIn: batchIdIn, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, variableValues: variableValues, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, variableScopeIdIn: variableScopeIdIn, );
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
  /// Query for variable instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/get-query/) method because it allows filtering by multiple variable instances of types `String`, `Number` or `Boolean`.
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
  /// * [VariableInstanceQueryDto] variableInstanceQueryDto:
  Future<Response> queryVariableInstancesWithHttpInfo({ int? firstResult, int? maxResults, bool? deserializeValues, VariableInstanceQueryDto? variableInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance';

    // ignore: prefer_final_locals
    Object? postBody = variableInstanceQueryDto;

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
  /// Query for variable instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/get-query/) method because it allows filtering by multiple variable instances of types `String`, `Number` or `Boolean`.
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
  /// * [VariableInstanceQueryDto] variableInstanceQueryDto:
  Future<List<VariableInstanceDto>?> queryVariableInstances({ int? firstResult, int? maxResults, bool? deserializeValues, VariableInstanceQueryDto? variableInstanceQueryDto, }) async {
    final response = await queryVariableInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, deserializeValues: deserializeValues, variableInstanceQueryDto: variableInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VariableInstanceDto>') as List)
        .cast<VariableInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Variable Instance Count (POST)
  ///
  /// Query for the number of variable instances that fulfill given parameters. This method takes the same message body as the [Get Variable Instances POST](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/post-query/) method and therefore it is slightly more powerful than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VariableInstanceQueryDto] variableInstanceQueryDto:
  Future<Response> queryVariableInstancesCountWithHttpInfo({ VariableInstanceQueryDto? variableInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/variable-instance/count';

    // ignore: prefer_final_locals
    Object? postBody = variableInstanceQueryDto;

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
  /// Query for the number of variable instances that fulfill given parameters. This method takes the same message body as the [Get Variable Instances POST](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/post-query/) method and therefore it is slightly more powerful than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [VariableInstanceQueryDto] variableInstanceQueryDto:
  Future<CountResultDto?> queryVariableInstancesCount({ VariableInstanceQueryDto? variableInstanceQueryDto, }) async {
    final response = await queryVariableInstancesCountWithHttpInfo( variableInstanceQueryDto: variableInstanceQueryDto, );
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
