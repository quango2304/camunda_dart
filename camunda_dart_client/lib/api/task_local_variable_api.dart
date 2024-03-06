//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TaskLocalVariableApi {
  TaskLocalVariableApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete Local Task Variable
  ///
  /// Removes a local variable from a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to be removed.
  Future<Response> deleteTaskLocalVariableWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables/{varName}'
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

  /// Delete Local Task Variable
  ///
  /// Removes a local variable from a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to be removed.
  Future<void> deleteTaskLocalVariable(String id, String varName,) async {
    final response = await deleteTaskLocalVariableWithHttpInfo(id, varName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Local Task Variable
  ///
  /// Retrieves a variable from the context of a given task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on the server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getTaskLocalVariableWithHttpInfo(String id, String varName, { bool? deserializeValue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables/{varName}'
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

  /// Get Local Task Variable
  ///
  /// Retrieves a variable from the context of a given task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on the server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<VariableValueDto?> getTaskLocalVariable(String id, String varName, { bool? deserializeValue, }) async {
    final response = await getTaskLocalVariableWithHttpInfo(id, varName,  deserializeValue: deserializeValue, );
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

  /// Get Local Task Variable (Binary)
  ///
  /// Retrieves a binary variable from the context of a given task by id. Applicable for byte array and file variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  Future<Response> getTaskLocalVariableBinaryWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables/{varName}/data'
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

  /// Get Local Task Variable (Binary)
  ///
  /// Retrieves a binary variable from the context of a given task by id. Applicable for byte array and file variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  Future<MultipartFile?> getTaskLocalVariableBinary(String id, String varName,) async {
    final response = await getTaskLocalVariableBinaryWithHttpInfo(id, varName,);
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

  /// Get Local Task Variables
  ///
  /// Retrieves all variables of a given task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on the server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getTaskLocalVariablesWithHttpInfo(String id, { bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables'
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

  /// Get Local Task Variables
  ///
  /// Retrieves all variables of a given task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on the server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getTaskLocalVariables(String id, { bool? deserializeValues, }) async {
    final response = await getTaskLocalVariablesWithHttpInfo(id,  deserializeValues: deserializeValues, );
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

  /// Update/Delete Local Task Variables
  ///
  /// Updates or deletes the variables in the context of a task. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<Response> modifyTaskLocalVariablesWithHttpInfo(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables'
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

  /// Update/Delete Local Task Variables
  ///
  /// Updates or deletes the variables in the context of a task. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<void> modifyTaskLocalVariables(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    final response = await modifyTaskLocalVariablesWithHttpInfo(id,  patchVariablesDto: patchVariablesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Local Task Variable
  ///
  /// Sets a variable in the context of a given task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<Response> putTaskLocalVariableWithHttpInfo(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables/{varName}'
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

  /// Update Local Task Variable
  ///
  /// Sets a variable in the context of a given task.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<void> putTaskLocalVariable(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    final response = await putTaskLocalVariableWithHttpInfo(id, varName,  variableValueDto: variableValueDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Local Task Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<Response> setBinaryTaskLocalVariableWithHttpInfo(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/localVariables/{varName}/data'
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

  /// Update Local Task Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to retrieve.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<void> setBinaryTaskLocalVariable(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    final response = await setBinaryTaskLocalVariableWithHttpInfo(id, varName,  data: data, valueType: valueType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
