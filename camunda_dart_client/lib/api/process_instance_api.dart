//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProcessInstanceApi {
  ProcessInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Correlate Message Async (POST)
  ///
  /// Correlates a message asynchronously to executions that are waiting for this message.  Messages will not be correlated to process definition-level start message events to start process instances.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CorrelationMessageAsyncDto] correlationMessageAsyncDto:
  Future<Response> correlateMessageAsyncOperationWithHttpInfo({ CorrelationMessageAsyncDto? correlationMessageAsyncDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/message-async';

    // ignore: prefer_final_locals
    Object? postBody = correlationMessageAsyncDto;

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

  /// Correlate Message Async (POST)
  ///
  /// Correlates a message asynchronously to executions that are waiting for this message.  Messages will not be correlated to process definition-level start message events to start process instances.
  ///
  /// Parameters:
  ///
  /// * [CorrelationMessageAsyncDto] correlationMessageAsyncDto:
  Future<BatchDto?> correlateMessageAsyncOperation({ CorrelationMessageAsyncDto? correlationMessageAsyncDto, }) async {
    final response = await correlateMessageAsyncOperationWithHttpInfo( correlationMessageAsyncDto: correlationMessageAsyncDto, );
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

  /// Delete Async Historic Query Based (POST)
  ///
  /// Deletes a set of process instances asynchronously (batch) based on a historic process instance query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteProcessInstancesDto] deleteProcessInstancesDto:
  ///   **Unallowed property**: `processInstanceQuery`
  Future<Response> deleteAsyncHistoricQueryBasedWithHttpInfo({ DeleteProcessInstancesDto? deleteProcessInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/delete-historic-query-based';

    // ignore: prefer_final_locals
    Object? postBody = deleteProcessInstancesDto;

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

  /// Delete Async Historic Query Based (POST)
  ///
  /// Deletes a set of process instances asynchronously (batch) based on a historic process instance query.
  ///
  /// Parameters:
  ///
  /// * [DeleteProcessInstancesDto] deleteProcessInstancesDto:
  ///   **Unallowed property**: `processInstanceQuery`
  Future<BatchDto?> deleteAsyncHistoricQueryBased({ DeleteProcessInstancesDto? deleteProcessInstancesDto, }) async {
    final response = await deleteAsyncHistoricQueryBasedWithHttpInfo( deleteProcessInstancesDto: deleteProcessInstancesDto, );
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

  /// Delete
  ///
  /// Deletes a running process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   If set to true, the custom listeners will be skipped.
  ///
  /// * [bool] skipIoMappings:
  ///   If set to true, the input/output mappings will be skipped.
  ///
  /// * [bool] skipSubprocesses:
  ///   If set to true, subprocesses related to deleted processes will be skipped.
  ///
  /// * [bool] failIfNotExists:
  ///   If set to false, the request will still be successful if the process id is not found.
  Future<Response> deleteProcessInstanceWithHttpInfo(String id, { bool? skipCustomListeners, bool? skipIoMappings, bool? skipSubprocesses, bool? failIfNotExists, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (skipCustomListeners != null) {
      queryParams.addAll(_queryParams('', 'skipCustomListeners', skipCustomListeners));
    }
    if (skipIoMappings != null) {
      queryParams.addAll(_queryParams('', 'skipIoMappings', skipIoMappings));
    }
    if (skipSubprocesses != null) {
      queryParams.addAll(_queryParams('', 'skipSubprocesses', skipSubprocesses));
    }
    if (failIfNotExists != null) {
      queryParams.addAll(_queryParams('', 'failIfNotExists', failIfNotExists));
    }

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

  /// Delete
  ///
  /// Deletes a running process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   If set to true, the custom listeners will be skipped.
  ///
  /// * [bool] skipIoMappings:
  ///   If set to true, the input/output mappings will be skipped.
  ///
  /// * [bool] skipSubprocesses:
  ///   If set to true, subprocesses related to deleted processes will be skipped.
  ///
  /// * [bool] failIfNotExists:
  ///   If set to false, the request will still be successful if the process id is not found.
  Future<void> deleteProcessInstance(String id, { bool? skipCustomListeners, bool? skipIoMappings, bool? skipSubprocesses, bool? failIfNotExists, }) async {
    final response = await deleteProcessInstanceWithHttpInfo(id,  skipCustomListeners: skipCustomListeners, skipIoMappings: skipIoMappings, skipSubprocesses: skipSubprocesses, failIfNotExists: failIfNotExists, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Process Variable
  ///
  /// Deletes a variable of a process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to delete.
  Future<Response> deleteProcessInstanceVariableWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables/{varName}'
      .replaceAll('{id}', id)
      .replaceAll('{varName}', varName);

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

  /// Delete Process Variable
  ///
  /// Deletes a variable of a process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to delete.
  Future<void> deleteProcessInstanceVariable(String id, String varName,) async {
    final response = await deleteProcessInstanceVariableWithHttpInfo(id, varName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Async (POST)
  ///
  /// Deletes multiple process instances asynchronously (batch).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteProcessInstancesDto] deleteProcessInstancesDto:
  ///   **Unallowed property**: `historicProcessInstanceQuery`
  Future<Response> deleteProcessInstancesAsyncOperationWithHttpInfo({ DeleteProcessInstancesDto? deleteProcessInstancesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/delete';

    // ignore: prefer_final_locals
    Object? postBody = deleteProcessInstancesDto;

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
  /// Deletes multiple process instances asynchronously (batch).
  ///
  /// Parameters:
  ///
  /// * [DeleteProcessInstancesDto] deleteProcessInstancesDto:
  ///   **Unallowed property**: `historicProcessInstanceQuery`
  Future<BatchDto?> deleteProcessInstancesAsyncOperation({ DeleteProcessInstancesDto? deleteProcessInstancesDto, }) async {
    final response = await deleteProcessInstancesAsyncOperationWithHttpInfo( deleteProcessInstancesDto: deleteProcessInstancesDto, );
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

  /// Get Activity Instance
  ///
  /// Retrieves an Activity Instance (Tree) for a given process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance for which the activity instance should be retrieved.
  Future<Response> getActivityInstanceTreeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/activity-instances'
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

  /// Get Activity Instance
  ///
  /// Retrieves an Activity Instance (Tree) for a given process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance for which the activity instance should be retrieved.
  Future<ActivityInstanceDto?> getActivityInstanceTree(String id,) async {
    final response = await getActivityInstanceTreeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityInstanceDto',) as ActivityInstanceDto;
    
    }
    return null;
  }

  /// Get Process Instance
  ///
  /// Retrieves a process instance by id, according to the `ProcessInstance` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to be retrieved.
  Future<Response> getProcessInstanceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}'
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

  /// Get Process Instance
  ///
  /// Retrieves a process instance by id, according to the `ProcessInstance` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to be retrieved.
  Future<ProcessInstanceDto?> getProcessInstance(String id,) async {
    final response = await getProcessInstanceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceDto',) as ProcessInstanceDto;
    
    }
    return null;
  }

  /// Get Process Instance Comments
  ///
  /// Gets the comments for a process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the comments for.
  Future<Response> getProcessInstanceCommentsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/comment'
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

  /// Get Process Instance Comments
  ///
  /// Gets the comments for a process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the comments for.
  Future<List<CommentDto>?> getProcessInstanceComments(String id,) async {
    final response = await getProcessInstanceCommentsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CommentDto>') as List)
        .cast<CommentDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Process Variable
  ///
  /// Retrieves a variable of a given process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getProcessInstanceVariableWithHttpInfo(String id, String varName, { bool? deserializeValue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables/{varName}'
      .replaceAll('{id}', id)
      .replaceAll('{varName}', varName);

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

  /// Get Process Variable
  ///
  /// Retrieves a variable of a given process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<VariableValueDto?> getProcessInstanceVariable(String id, String varName, { bool? deserializeValue, }) async {
    final response = await getProcessInstanceVariableWithHttpInfo(id, varName,  deserializeValue: deserializeValue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VariableValueDto',) as VariableValueDto;
    
    }
    return null;
  }

  /// Get Process Variable (Binary)
  ///
  /// Retrieves the content of a Process Variable by the Process Instance id and the Process Variable name. Applicable for byte array or file Process Variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  Future<Response> getProcessInstanceVariableBinaryWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables/{varName}/data'
      .replaceAll('{id}', id)
      .replaceAll('{varName}', varName);

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

  /// Get Process Variable (Binary)
  ///
  /// Retrieves the content of a Process Variable by the Process Instance id and the Process Variable name. Applicable for byte array or file Process Variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  Future<MultipartFile?> getProcessInstanceVariableBinary(String id, String varName,) async {
    final response = await getProcessInstanceVariableBinaryWithHttpInfo(id, varName,);
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

  /// Get Process Variables
  ///
  /// Retrieves all variables of a given process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getProcessInstanceVariablesWithHttpInfo(String id, { bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables'
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

  /// Get Process Variables
  ///
  /// Retrieves all variables of a given process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getProcessInstanceVariables(String id, { bool? deserializeValues, }) async {
    final response = await getProcessInstanceVariablesWithHttpInfo(id,  deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, VariableValueDto>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, VariableValueDto>'),);

    }
    return null;
  }

  /// Get List
  ///
  /// Queries for process instances that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of process instances. The size of the result set can be retrieved by using the Get Instance Count method.
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
  /// * [String] processInstanceIds:
  ///   Filter by a comma-separated list of process instance ids.
  ///
  /// * [String] businessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] businessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] superProcessInstance:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstance:
  ///   Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
  ///
  /// * [String] superCaseInstance:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstance:
  ///   Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
  ///
  /// * [bool] active:
  ///   Only include active process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] withIncident:
  ///   Filter by presence of incidents. Selects only process instances that have an incident.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process instances which belong to no tenant.
  ///
  /// * [bool] processDefinitionWithoutTenantId:
  ///   Only include process instances which process definition has no tenant id.
  ///
  /// * [String] activityIdIn:
  ///   Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] leafProcessInstances:
  ///   Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
  ///
  /// * [String] variables:
  ///   Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
  Future<Response> getProcessInstancesWithHttpInfo({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? processInstanceIds, String? businessKey, String? businessKeyLike, String? caseInstanceId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionKeyNotIn, String? deploymentId, String? superProcessInstance, String? subProcessInstance, String? superCaseInstance, String? subCaseInstance, bool? active, bool? suspended, bool? withIncident, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? processDefinitionWithoutTenantId, String? activityIdIn, bool? rootProcessInstances, bool? leafProcessInstances, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance';

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
    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (businessKey != null) {
      queryParams.addAll(_queryParams('', 'businessKey', businessKey));
    }
    if (businessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'businessKeyLike', businessKeyLike));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
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
    if (processDefinitionKeyNotIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyNotIn', processDefinitionKeyNotIn));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (superProcessInstance != null) {
      queryParams.addAll(_queryParams('', 'superProcessInstance', superProcessInstance));
    }
    if (subProcessInstance != null) {
      queryParams.addAll(_queryParams('', 'subProcessInstance', subProcessInstance));
    }
    if (superCaseInstance != null) {
      queryParams.addAll(_queryParams('', 'superCaseInstance', superCaseInstance));
    }
    if (subCaseInstance != null) {
      queryParams.addAll(_queryParams('', 'subCaseInstance', subCaseInstance));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (withIncident != null) {
      queryParams.addAll(_queryParams('', 'withIncident', withIncident));
    }
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
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (processDefinitionWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionWithoutTenantId', processDefinitionWithoutTenantId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (rootProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'rootProcessInstances', rootProcessInstances));
    }
    if (leafProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'leafProcessInstances', leafProcessInstances));
    }
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
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
  /// Queries for process instances that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of process instances. The size of the result set can be retrieved by using the Get Instance Count method.
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
  /// * [String] processInstanceIds:
  ///   Filter by a comma-separated list of process instance ids.
  ///
  /// * [String] businessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] businessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] superProcessInstance:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstance:
  ///   Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
  ///
  /// * [String] superCaseInstance:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstance:
  ///   Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
  ///
  /// * [bool] active:
  ///   Only include active process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] withIncident:
  ///   Filter by presence of incidents. Selects only process instances that have an incident.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process instances which belong to no tenant.
  ///
  /// * [bool] processDefinitionWithoutTenantId:
  ///   Only include process instances which process definition has no tenant id.
  ///
  /// * [String] activityIdIn:
  ///   Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] leafProcessInstances:
  ///   Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
  ///
  /// * [String] variables:
  ///   Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
  Future<List<ProcessInstanceDto>?> getProcessInstances({ String? sortBy, String? sortOrder, int? firstResult, int? maxResults, String? processInstanceIds, String? businessKey, String? businessKeyLike, String? caseInstanceId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionKeyNotIn, String? deploymentId, String? superProcessInstance, String? subProcessInstance, String? superCaseInstance, String? subCaseInstance, bool? active, bool? suspended, bool? withIncident, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? processDefinitionWithoutTenantId, String? activityIdIn, bool? rootProcessInstances, bool? leafProcessInstances, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    final response = await getProcessInstancesWithHttpInfo( sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, processInstanceIds: processInstanceIds, businessKey: businessKey, businessKeyLike: businessKeyLike, caseInstanceId: caseInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionKeyNotIn: processDefinitionKeyNotIn, deploymentId: deploymentId, superProcessInstance: superProcessInstance, subProcessInstance: subProcessInstance, superCaseInstance: superCaseInstance, subCaseInstance: subCaseInstance, active: active, suspended: suspended, withIncident: withIncident, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, processDefinitionWithoutTenantId: processDefinitionWithoutTenantId, activityIdIn: activityIdIn, rootProcessInstances: rootProcessInstances, leafProcessInstances: leafProcessInstances, variables: variables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProcessInstanceDto>') as List)
        .cast<ProcessInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of process instances that fulfill given parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceIds:
  ///   Filter by a comma-separated list of process instance ids.
  ///
  /// * [String] businessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] businessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] superProcessInstance:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstance:
  ///   Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
  ///
  /// * [String] superCaseInstance:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstance:
  ///   Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
  ///
  /// * [bool] active:
  ///   Only include active process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] withIncident:
  ///   Filter by presence of incidents. Selects only process instances that have an incident.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process instances which belong to no tenant.
  ///
  /// * [bool] processDefinitionWithoutTenantId:
  ///   Only include process instances which process definition has no tenant id.
  ///
  /// * [String] activityIdIn:
  ///   Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] leafProcessInstances:
  ///   Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
  ///
  /// * [String] variables:
  ///   Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
  Future<Response> getProcessInstancesCountWithHttpInfo({ String? processInstanceIds, String? businessKey, String? businessKeyLike, String? caseInstanceId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionKeyNotIn, String? deploymentId, String? superProcessInstance, String? subProcessInstance, String? superCaseInstance, String? subCaseInstance, bool? active, bool? suspended, bool? withIncident, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? processDefinitionWithoutTenantId, String? activityIdIn, bool? rootProcessInstances, bool? leafProcessInstances, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processInstanceIds != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIds', processInstanceIds));
    }
    if (businessKey != null) {
      queryParams.addAll(_queryParams('', 'businessKey', businessKey));
    }
    if (businessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'businessKeyLike', businessKeyLike));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
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
    if (processDefinitionKeyNotIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKeyNotIn', processDefinitionKeyNotIn));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (superProcessInstance != null) {
      queryParams.addAll(_queryParams('', 'superProcessInstance', superProcessInstance));
    }
    if (subProcessInstance != null) {
      queryParams.addAll(_queryParams('', 'subProcessInstance', subProcessInstance));
    }
    if (superCaseInstance != null) {
      queryParams.addAll(_queryParams('', 'superCaseInstance', superCaseInstance));
    }
    if (subCaseInstance != null) {
      queryParams.addAll(_queryParams('', 'subCaseInstance', subCaseInstance));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (withIncident != null) {
      queryParams.addAll(_queryParams('', 'withIncident', withIncident));
    }
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
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (processDefinitionWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionWithoutTenantId', processDefinitionWithoutTenantId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (rootProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'rootProcessInstances', rootProcessInstances));
    }
    if (leafProcessInstances != null) {
      queryParams.addAll(_queryParams('', 'leafProcessInstances', leafProcessInstances));
    }
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
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
  /// Queries for the number of process instances that fulfill given parameters.
  ///
  /// Parameters:
  ///
  /// * [String] processInstanceIds:
  ///   Filter by a comma-separated list of process instance ids.
  ///
  /// * [String] businessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] businessKeyLike:
  ///   Filter by process instance business key that the parameter is a substring of.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the instances run on.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
  ///
  /// * [String] processDefinitionKeyNotIn:
  ///   Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [String] superProcessInstance:
  ///   Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
  ///
  /// * [String] subProcessInstance:
  ///   Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
  ///
  /// * [String] superCaseInstance:
  ///   Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
  ///
  /// * [String] subCaseInstance:
  ///   Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
  ///
  /// * [bool] active:
  ///   Only include active process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process instances. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] withIncident:
  ///   Filter by presence of incidents. Selects only process instances that have an incident.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process instances which belong to no tenant.
  ///
  /// * [bool] processDefinitionWithoutTenantId:
  ///   Only include process instances which process definition has no tenant id.
  ///
  /// * [String] activityIdIn:
  ///   Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
  ///
  /// * [bool] rootProcessInstances:
  ///   Restrict the query to all process instances that are top level process instances.
  ///
  /// * [bool] leafProcessInstances:
  ///   Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
  ///
  /// * [String] variables:
  ///   Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.
  Future<CountResultDto?> getProcessInstancesCount({ String? processInstanceIds, String? businessKey, String? businessKeyLike, String? caseInstanceId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionKeyNotIn, String? deploymentId, String? superProcessInstance, String? subProcessInstance, String? superCaseInstance, String? subCaseInstance, bool? active, bool? suspended, bool? withIncident, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? processDefinitionWithoutTenantId, String? activityIdIn, bool? rootProcessInstances, bool? leafProcessInstances, String? variables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    final response = await getProcessInstancesCountWithHttpInfo( processInstanceIds: processInstanceIds, businessKey: businessKey, businessKeyLike: businessKeyLike, caseInstanceId: caseInstanceId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionKeyNotIn: processDefinitionKeyNotIn, deploymentId: deploymentId, superProcessInstance: superProcessInstance, subProcessInstance: subProcessInstance, superCaseInstance: superCaseInstance, subCaseInstance: subCaseInstance, active: active, suspended: suspended, withIncident: withIncident, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, processDefinitionWithoutTenantId: processDefinitionWithoutTenantId, activityIdIn: activityIdIn, rootProcessInstances: rootProcessInstances, leafProcessInstances: leafProcessInstances, variables: variables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, );
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

  /// Modify Process Instance Execution State
  ///
  /// Submits a list of modification instructions to change a process instance's execution state. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Canceling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed immediately and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/develop/user-guide/process-engine/process-instance-modification/).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to modify.
  ///
  /// * [ProcessInstanceModificationDto] processInstanceModificationDto:
  Future<Response> modifyProcessInstanceWithHttpInfo(String id, { ProcessInstanceModificationDto? processInstanceModificationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/modification'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = processInstanceModificationDto;

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

  /// Modify Process Instance Execution State
  ///
  /// Submits a list of modification instructions to change a process instance's execution state. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Canceling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed immediately and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/develop/user-guide/process-engine/process-instance-modification/).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to modify.
  ///
  /// * [ProcessInstanceModificationDto] processInstanceModificationDto:
  Future<void> modifyProcessInstance(String id, { ProcessInstanceModificationDto? processInstanceModificationDto, }) async {
    final response = await modifyProcessInstanceWithHttpInfo(id,  processInstanceModificationDto: processInstanceModificationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Modify Process Instance Execution State Async
  ///
  /// Submits a list of modification instructions to change a process instance's execution state async. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Cancelling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed asynchronous and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-modification/).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to modify.
  ///
  /// * [ProcessInstanceModificationDto] processInstanceModificationDto:
  Future<Response> modifyProcessInstanceAsyncOperationWithHttpInfo(String id, { ProcessInstanceModificationDto? processInstanceModificationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/modification-async'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = processInstanceModificationDto;

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

  /// Modify Process Instance Execution State Async
  ///
  /// Submits a list of modification instructions to change a process instance's execution state async. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Cancelling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed asynchronous and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-modification/).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to modify.
  ///
  /// * [ProcessInstanceModificationDto] processInstanceModificationDto:
  Future<BatchDto?> modifyProcessInstanceAsyncOperation(String id, { ProcessInstanceModificationDto? processInstanceModificationDto, }) async {
    final response = await modifyProcessInstanceAsyncOperationWithHttpInfo(id,  processInstanceModificationDto: processInstanceModificationDto, );
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

  /// Update/Delete Process Variables
  ///
  /// Updates or deletes the variables of a process instance by id. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<Response> modifyProcessInstanceVariablesWithHttpInfo(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = patchVariablesDto;

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

  /// Update/Delete Process Variables
  ///
  /// Updates or deletes the variables of a process instance by id. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<void> modifyProcessInstanceVariables(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    final response = await modifyProcessInstanceVariablesWithHttpInfo(id,  patchVariablesDto: patchVariablesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get List (POST)
  ///
  /// Queries for process instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the Get Instances method because it allows filtering by multiple process variables of types `string`, `number` or `boolean`.
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
  /// * [ProcessInstanceQueryDto] processInstanceQueryDto:
  Future<Response> queryProcessInstancesWithHttpInfo({ int? firstResult, int? maxResults, ProcessInstanceQueryDto? processInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance';

    // ignore: prefer_final_locals
    Object? postBody = processInstanceQueryDto;

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
  /// Queries for process instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the Get Instances method because it allows filtering by multiple process variables of types `string`, `number` or `boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [ProcessInstanceQueryDto] processInstanceQueryDto:
  Future<List<ProcessInstanceDto>?> queryProcessInstances({ int? firstResult, int? maxResults, ProcessInstanceQueryDto? processInstanceQueryDto, }) async {
    final response = await queryProcessInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, processInstanceQueryDto: processInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProcessInstanceDto>') as List)
        .cast<ProcessInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Queries for the number of process instances that fulfill the given parameters. This method takes the same message body as the Get Instances (POST) method and therefore it is slightly more powerful than the Get Instance Count method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceQueryDto] processInstanceQueryDto:
  Future<Response> queryProcessInstancesCountWithHttpInfo({ ProcessInstanceQueryDto? processInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/count';

    // ignore: prefer_final_locals
    Object? postBody = processInstanceQueryDto;

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
  /// Queries for the number of process instances that fulfill the given parameters. This method takes the same message body as the Get Instances (POST) method and therefore it is slightly more powerful than the Get Instance Count method.
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceQueryDto] processInstanceQueryDto:
  Future<CountResultDto?> queryProcessInstancesCount({ ProcessInstanceQueryDto? processInstanceQueryDto, }) async {
    final response = await queryProcessInstancesCountWithHttpInfo( processInstanceQueryDto: processInstanceQueryDto, );
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

  /// Update Process Variable
  ///
  /// Sets a variable of a given process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<Response> setProcessInstanceVariableWithHttpInfo(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables/{varName}'
      .replaceAll('{id}', id)
      .replaceAll('{varName}', varName);

    // ignore: prefer_final_locals
    Object? postBody = variableValueDto;

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

  /// Update Process Variable
  ///
  /// Sets a variable of a given process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<void> setProcessInstanceVariable(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    final response = await setProcessInstanceVariableWithHttpInfo(id, varName,  variableValueDto: variableValueDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Process Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<Response> setProcessInstanceVariableBinaryWithHttpInfo(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/variables/{varName}/data'
      .replaceAll('{id}', id)
      .replaceAll('{varName}', varName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (data != null) {
      hasFields = true;
      mp.fields[r'data'] = data.field;
      mp.files.add(data);
    }
    if (valueType != null) {
      hasFields = true;
      mp.fields[r'valueType'] = parameterToString(valueType);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Update Process Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<void> setProcessInstanceVariableBinary(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    final response = await setProcessInstanceVariableBinaryWithHttpInfo(id, varName,  data: data, valueType: valueType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Retries Async (POST)
  ///
  /// Create a batch to set retries of jobs associated with given processes asynchronously.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesByProcessDto] setJobRetriesByProcessDto:
  ///   Please note that if both processInstances and processInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `historicProcessInstanceQuery`
  Future<Response> setRetriesByProcessWithHttpInfo({ SetJobRetriesByProcessDto? setJobRetriesByProcessDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/job-retries';

    // ignore: prefer_final_locals
    Object? postBody = setJobRetriesByProcessDto;

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

  /// Set Job Retries Async (POST)
  ///
  /// Create a batch to set retries of jobs associated with given processes asynchronously.
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesByProcessDto] setJobRetriesByProcessDto:
  ///   Please note that if both processInstances and processInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `historicProcessInstanceQuery`
  Future<BatchDto?> setRetriesByProcess({ SetJobRetriesByProcessDto? setJobRetriesByProcessDto, }) async {
    final response = await setRetriesByProcessWithHttpInfo( setJobRetriesByProcessDto: setJobRetriesByProcessDto, );
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

  /// Set Job Retries Async Historic Query Based (POST)
  ///
  /// Create a batch to set retries of jobs asynchronously based on a historic process instance query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesByProcessDto] setJobRetriesByProcessDto:
  ///   Please note that if both processInstances and historicProcessInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `processInstanceQuery`
  Future<Response> setRetriesByProcessHistoricQueryBasedWithHttpInfo({ SetJobRetriesByProcessDto? setJobRetriesByProcessDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/job-retries-historic-query-based';

    // ignore: prefer_final_locals
    Object? postBody = setJobRetriesByProcessDto;

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

  /// Set Job Retries Async Historic Query Based (POST)
  ///
  /// Create a batch to set retries of jobs asynchronously based on a historic process instance query.
  ///
  /// Parameters:
  ///
  /// * [SetJobRetriesByProcessDto] setJobRetriesByProcessDto:
  ///   Please note that if both processInstances and historicProcessInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `processInstanceQuery`
  Future<BatchDto?> setRetriesByProcessHistoricQueryBased({ SetJobRetriesByProcessDto? setJobRetriesByProcessDto, }) async {
    final response = await setRetriesByProcessHistoricQueryBasedWithHttpInfo( setJobRetriesByProcessDto: setJobRetriesByProcessDto, );
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

  /// Set Variables Async (POST)
  ///
  /// Update or create runtime process variables in the root scope of process instances.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetVariablesAsyncDto] setVariablesAsyncDto:
  Future<Response> setVariablesAsyncOperationWithHttpInfo({ SetVariablesAsyncDto? setVariablesAsyncDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/variables-async';

    // ignore: prefer_final_locals
    Object? postBody = setVariablesAsyncDto;

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

  /// Set Variables Async (POST)
  ///
  /// Update or create runtime process variables in the root scope of process instances.
  ///
  /// Parameters:
  ///
  /// * [SetVariablesAsyncDto] setVariablesAsyncDto:
  Future<BatchDto?> setVariablesAsyncOperation({ SetVariablesAsyncDto? setVariablesAsyncDto, }) async {
    final response = await setVariablesAsyncOperationWithHttpInfo( setVariablesAsyncDto: setVariablesAsyncDto, );
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

  /// Activate/Suspend In Group
  ///
  /// Activates or suspends process instances by providing certain criteria:  # Activate/Suspend Process Instance By Process Definition Id * `suspend` * `processDefinitionId`  # Activate/Suspend Process Instance By Process Definition Key  * `suspend` * `processDefinitionKey` * `processDefinitionTenantId` * `processDefinitionWithoutTenantId`  # Activate/Suspend Process Instance In Group * `suspend` * `processInstanceIds` * `processInstanceQuery` * `historicProcessInstanceQuery`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceSuspensionStateDto] processInstanceSuspensionStateDto:
  Future<Response> updateSuspensionStateWithHttpInfo({ ProcessInstanceSuspensionStateDto? processInstanceSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/suspended';

    // ignore: prefer_final_locals
    Object? postBody = processInstanceSuspensionStateDto;

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

  /// Activate/Suspend In Group
  ///
  /// Activates or suspends process instances by providing certain criteria:  # Activate/Suspend Process Instance By Process Definition Id * `suspend` * `processDefinitionId`  # Activate/Suspend Process Instance By Process Definition Key  * `suspend` * `processDefinitionKey` * `processDefinitionTenantId` * `processDefinitionWithoutTenantId`  # Activate/Suspend Process Instance In Group * `suspend` * `processInstanceIds` * `processInstanceQuery` * `historicProcessInstanceQuery`
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceSuspensionStateDto] processInstanceSuspensionStateDto:
  Future<void> updateSuspensionState({ ProcessInstanceSuspensionStateDto? processInstanceSuspensionStateDto, }) async {
    final response = await updateSuspensionStateWithHttpInfo( processInstanceSuspensionStateDto: processInstanceSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend In Batch
  ///
  /// Activates or suspends process instances asynchronously with a list of process instance ids, a process instance query, and/or a historical process instance query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceSuspensionStateAsyncDto] processInstanceSuspensionStateAsyncDto:
  Future<Response> updateSuspensionStateAsyncOperationWithHttpInfo({ ProcessInstanceSuspensionStateAsyncDto? processInstanceSuspensionStateAsyncDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/suspended-async';

    // ignore: prefer_final_locals
    Object? postBody = processInstanceSuspensionStateAsyncDto;

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

  /// Activate/Suspend In Batch
  ///
  /// Activates or suspends process instances asynchronously with a list of process instance ids, a process instance query, and/or a historical process instance query.
  ///
  /// Parameters:
  ///
  /// * [ProcessInstanceSuspensionStateAsyncDto] processInstanceSuspensionStateAsyncDto:
  Future<BatchDto?> updateSuspensionStateAsyncOperation({ ProcessInstanceSuspensionStateAsyncDto? processInstanceSuspensionStateAsyncDto, }) async {
    final response = await updateSuspensionStateAsyncOperationWithHttpInfo( processInstanceSuspensionStateAsyncDto: processInstanceSuspensionStateAsyncDto, );
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

  /// Activate/Suspend Process Instance By Id
  ///
  /// Activates or suspends a given process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<Response> updateSuspensionStateByIdWithHttpInfo(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-instance/{id}/suspended'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = suspensionStateDto;

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

  /// Activate/Suspend Process Instance By Id
  ///
  /// Activates or suspends a given process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process instance to activate or suspend.
  ///
  /// * [SuspensionStateDto] suspensionStateDto:
  Future<void> updateSuspensionStateById(String id, { SuspensionStateDto? suspensionStateDto, }) async {
    final response = await updateSuspensionStateByIdWithHttpInfo(id,  suspensionStateDto: suspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
