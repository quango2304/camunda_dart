//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExecutionApi {
  ExecutionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Incident
  ///
  /// Creates a custom incident with given properties.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to create a new incident for.
  ///
  /// * [CreateIncidentDto] createIncidentDto:
  Future<Response> createIncidentWithHttpInfo(String id, { CreateIncidentDto? createIncidentDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/create-incident'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createIncidentDto;

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

  /// Create Incident
  ///
  /// Creates a custom incident with given properties.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to create a new incident for.
  ///
  /// * [CreateIncidentDto] createIncidentDto:
  Future<IncidentDto?> createIncident(String id, { CreateIncidentDto? createIncidentDto, }) async {
    final response = await createIncidentWithHttpInfo(id,  createIncidentDto: createIncidentDto, );
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

  /// Delete Local Execution Variable
  ///
  /// Deletes a variable in the context of a given execution by id. Deletion does not propagate upwards in the execution hierarchy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to delete.
  Future<Response> deleteLocalExecutionVariableWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables/{varName}'
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

  /// Delete Local Execution Variable
  ///
  /// Deletes a variable in the context of a given execution by id. Deletion does not propagate upwards in the execution hierarchy.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to delete the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to delete.
  Future<void> deleteLocalExecutionVariable(String id, String varName,) async {
    final response = await deleteLocalExecutionVariableWithHttpInfo(id, varName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Execution
  ///
  /// Retrieves an execution by id, according to the `Execution` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to be retrieved.
  Future<Response> getExecutionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}'
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

  /// Get Execution
  ///
  /// Retrieves an execution by id, according to the `Execution` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to be retrieved.
  Future<ExecutionDto?> getExecution(String id,) async {
    final response = await getExecutionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExecutionDto',) as ExecutionDto;
    
    }
    return null;
  }

  /// Get Executions
  ///
  /// Queries for the executions that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] businessKey:
  ///   Filter by the business key of the process instances the executions belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the executions run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the executions run on.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance the execution belongs to.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity the execution currently executes.
  ///
  /// * [String] signalEventSubscriptionName:
  ///   Select only those executions that expect a signal of the given name.
  ///
  /// * [String] messageEventSubscriptionName:
  ///   Select only those executions that expect a message of the given name.
  ///
  /// * [bool] active:
  ///   Only include active executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
  ///
  /// * [String] variables:
  ///   Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
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
  Future<Response> getExecutionsWithHttpInfo({ String? businessKey, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? activityId, String? signalEventSubscriptionName, String? messageEventSubscriptionName, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, String? variables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessKey != null) {
      queryParams.addAll(_queryParams('', 'businessKey', businessKey));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (signalEventSubscriptionName != null) {
      queryParams.addAll(_queryParams('', 'signalEventSubscriptionName', signalEventSubscriptionName));
    }
    if (messageEventSubscriptionName != null) {
      queryParams.addAll(_queryParams('', 'messageEventSubscriptionName', messageEventSubscriptionName));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
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
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
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

  /// Get Executions
  ///
  /// Queries for the executions that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] businessKey:
  ///   Filter by the business key of the process instances the executions belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the executions run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the executions run on.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance the execution belongs to.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity the execution currently executes.
  ///
  /// * [String] signalEventSubscriptionName:
  ///   Select only those executions that expect a signal of the given name.
  ///
  /// * [String] messageEventSubscriptionName:
  ///   Select only those executions that expect a message of the given name.
  ///
  /// * [bool] active:
  ///   Only include active executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
  ///
  /// * [String] variables:
  ///   Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
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
  Future<List<ExecutionDto>?> getExecutions({ String? businessKey, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? activityId, String? signalEventSubscriptionName, String? messageEventSubscriptionName, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, String? variables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getExecutionsWithHttpInfo( businessKey: businessKey, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, activityId: activityId, signalEventSubscriptionName: signalEventSubscriptionName, messageEventSubscriptionName: messageEventSubscriptionName, active: active, suspended: suspended, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, variables: variables, processVariables: processVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExecutionDto>') as List)
        .cast<ExecutionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Execution Count
  ///
  /// Queries for the number of executions that fulfill given parameters. Takes the same parameters as the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] businessKey:
  ///   Filter by the business key of the process instances the executions belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the executions run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the executions run on.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance the execution belongs to.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity the execution currently executes.
  ///
  /// * [String] signalEventSubscriptionName:
  ///   Select only those executions that expect a signal of the given name.
  ///
  /// * [String] messageEventSubscriptionName:
  ///   Select only those executions that expect a message of the given name.
  ///
  /// * [bool] active:
  ///   Only include active executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
  ///
  /// * [String] variables:
  ///   Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  Future<Response> getExecutionsCountWithHttpInfo({ String? businessKey, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? activityId, String? signalEventSubscriptionName, String? messageEventSubscriptionName, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, String? variables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (businessKey != null) {
      queryParams.addAll(_queryParams('', 'businessKey', businessKey));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (signalEventSubscriptionName != null) {
      queryParams.addAll(_queryParams('', 'signalEventSubscriptionName', signalEventSubscriptionName));
    }
    if (messageEventSubscriptionName != null) {
      queryParams.addAll(_queryParams('', 'messageEventSubscriptionName', messageEventSubscriptionName));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
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
    if (variables != null) {
      queryParams.addAll(_queryParams('', 'variables', variables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
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

  /// Get Execution Count
  ///
  /// Queries for the number of executions that fulfill given parameters. Takes the same parameters as the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] businessKey:
  ///   Filter by the business key of the process instances the executions belong to.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by the process definition the executions run on.
  ///
  /// * [String] processDefinitionKey:
  ///   Filter by the key of the process definition the executions run on.
  ///
  /// * [String] processInstanceId:
  ///   Filter by the id of the process instance the execution belongs to.
  ///
  /// * [String] activityId:
  ///   Filter by the id of the activity the execution currently executes.
  ///
  /// * [String] signalEventSubscriptionName:
  ///   Select only those executions that expect a signal of the given name.
  ///
  /// * [String] messageEventSubscriptionName:
  ///   Select only those executions that expect a message of the given name.
  ///
  /// * [bool] active:
  ///   Only include active executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
  ///
  /// * [String] variables:
  ///   Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  Future<CountResultDto?> getExecutionsCount({ String? businessKey, String? processDefinitionId, String? processDefinitionKey, String? processInstanceId, String? activityId, String? signalEventSubscriptionName, String? messageEventSubscriptionName, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, String? variables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, }) async {
    final response = await getExecutionsCountWithHttpInfo( businessKey: businessKey, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processInstanceId: processInstanceId, activityId: activityId, signalEventSubscriptionName: signalEventSubscriptionName, messageEventSubscriptionName: messageEventSubscriptionName, active: active, suspended: suspended, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, variables: variables, processVariables: processVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, );
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

  /// Get Local Execution Variable
  ///
  /// Retrieves a variable from the context of a given execution by id. Does not traverse the parent execution hierarchy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath. If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getLocalExecutionVariableWithHttpInfo(String id, String varName, { bool? deserializeValue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables/{varName}'
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

  /// Get Local Execution Variable
  ///
  /// Retrieves a variable from the context of a given execution by id. Does not traverse the parent execution hierarchy.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get.
  ///
  /// * [bool] deserializeValue:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath. If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<VariableValueDto?> getLocalExecutionVariable(String id, String varName, { bool? deserializeValue, }) async {
    final response = await getLocalExecutionVariableWithHttpInfo(id, varName,  deserializeValue: deserializeValue, );
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

  /// Get Local Execution Variable (Binary)
  ///
  /// Retrieves a binary variable from the context of a given execution by id. Does not traverse the parent execution hierarchy. Applicable for byte array and file variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get.
  Future<Response> getLocalExecutionVariableBinaryWithHttpInfo(String id, String varName,) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables/{varName}/data'
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

  /// Get Local Execution Variable (Binary)
  ///
  /// Retrieves a binary variable from the context of a given execution by id. Does not traverse the parent execution hierarchy. Applicable for byte array and file variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variable from.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to get.
  Future<MultipartFile?> getLocalExecutionVariableBinary(String id, String varName,) async {
    final response = await getLocalExecutionVariableBinaryWithHttpInfo(id, varName,);
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

  /// Get Local Execution Variables
  ///
  /// Retrieves all variables of a given execution by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getLocalExecutionVariablesWithHttpInfo(String id, { bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables'
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

  /// Get Local Execution Variables
  ///
  /// Retrieves all variables of a given execution by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to retrieve the variables from.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getLocalExecutionVariables(String id, { bool? deserializeValues, }) async {
    final response = await getLocalExecutionVariablesWithHttpInfo(id,  deserializeValues: deserializeValues, );
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

  /// Get Message Event Subscription
  ///
  /// Retrieves a message event subscription for a given execution by id and a message name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution that holds the subscription.
  ///
  /// * [String] messageName (required):
  ///   The name of the message that the subscription corresponds to.
  Future<Response> getMessageEventSubscriptionWithHttpInfo(String id, String messageName,) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/messageSubscriptions/{messageName}'
      .replaceAll('{id}', id)
      .replaceAll('{messageName}', messageName);

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

  /// Get Message Event Subscription
  ///
  /// Retrieves a message event subscription for a given execution by id and a message name.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution that holds the subscription.
  ///
  /// * [String] messageName (required):
  ///   The name of the message that the subscription corresponds to.
  Future<EventSubscriptionDto?> getMessageEventSubscription(String id, String messageName,) async {
    final response = await getMessageEventSubscriptionWithHttpInfo(id, messageName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EventSubscriptionDto',) as EventSubscriptionDto;
    
    }
    return null;
  }

  /// Update/Delete Local Execution Variables
  ///
  /// Updates or deletes the variables in the context of an execution by id. The updates do not propagate upwards in the execution hierarchy. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<Response> modifyLocalExecutionVariablesWithHttpInfo(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables'
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

  /// Update/Delete Local Execution Variables
  ///
  /// Updates or deletes the variables in the context of an execution by id. The updates do not propagate upwards in the execution hierarchy. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set variables for.
  ///
  /// * [PatchVariablesDto] patchVariablesDto:
  Future<void> modifyLocalExecutionVariables(String id, { PatchVariablesDto? patchVariablesDto, }) async {
    final response = await modifyLocalExecutionVariablesWithHttpInfo(id,  patchVariablesDto: patchVariablesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Put Local Execution Variable
  ///
  /// Sets a variable in the context of a given execution by id. Update does not propagate upwards in the execution hierarchy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<Response> putLocalExecutionVariableWithHttpInfo(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables/{varName}'
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

  /// Put Local Execution Variable
  ///
  /// Sets a variable in the context of a given execution by id. Update does not propagate upwards in the execution hierarchy.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [VariableValueDto] variableValueDto:
  Future<void> putLocalExecutionVariable(String id, String varName, { VariableValueDto? variableValueDto, }) async {
    final response = await putLocalExecutionVariableWithHttpInfo(id, varName,  variableValueDto: variableValueDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Executions (POST)
  ///
  /// Queries for executions that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method because it allows to filter by multiple instance and execution variables of types `String`, `Number` or `Boolean`.
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
  /// * [ExecutionQueryDto] executionQueryDto:
  Future<Response> queryExecutionsWithHttpInfo({ int? firstResult, int? maxResults, ExecutionQueryDto? executionQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution';

    // ignore: prefer_final_locals
    Object? postBody = executionQueryDto;

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

  /// Get Executions (POST)
  ///
  /// Queries for executions that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method because it allows to filter by multiple instance and execution variables of types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [ExecutionQueryDto] executionQueryDto:
  Future<List<ExecutionDto>?> queryExecutions({ int? firstResult, int? maxResults, ExecutionQueryDto? executionQueryDto, }) async {
    final response = await queryExecutionsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, executionQueryDto: executionQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExecutionDto>') as List)
        .cast<ExecutionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Execution Count (POST)
  ///
  /// Queries for the number of executions that fulfill given parameters. This method takes the same message body as the [Get Executions POST](https://docs.camunda.org/manual/7.20/reference/rest/execution/post-query/) method and therefore it is slightly more powerful than the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExecutionQueryDto] executionQueryDto:
  Future<Response> queryExecutionsCountWithHttpInfo({ ExecutionQueryDto? executionQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/count';

    // ignore: prefer_final_locals
    Object? postBody = executionQueryDto;

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

  /// Get Execution Count (POST)
  ///
  /// Queries for the number of executions that fulfill given parameters. This method takes the same message body as the [Get Executions POST](https://docs.camunda.org/manual/7.20/reference/rest/execution/post-query/) method and therefore it is slightly more powerful than the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [ExecutionQueryDto] executionQueryDto:
  Future<CountResultDto?> queryExecutionsCount({ ExecutionQueryDto? executionQueryDto, }) async {
    final response = await queryExecutionsCountWithHttpInfo( executionQueryDto: executionQueryDto, );
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

  /// Post Local Execution Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable in the context of a given execution by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<Response> setLocalExecutionVariableBinaryWithHttpInfo(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/localVariables/{varName}/data'
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

  /// Post Local Execution Variable (Binary)
  ///
  /// Sets the serialized value for a binary variable or the binary value for a file variable in the context of a given execution by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to set the variable for.
  ///
  /// * [String] varName (required):
  ///   The name of the variable to set.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
  ///
  /// * [String] valueType:
  ///   The name of the variable type. Either Bytes for a byte array variable or File for a file variable.
  Future<void> setLocalExecutionVariableBinary(String id, String varName, { MultipartFile? data, String? valueType, }) async {
    final response = await setLocalExecutionVariableBinaryWithHttpInfo(id, varName,  data: data, valueType: valueType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Trigger Execution
  ///
  /// Signals an execution by id. Can for example be used to explicitly skip user tasks or signal asynchronous continuations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to signal.
  ///
  /// * [ExecutionTriggerDto] executionTriggerDto:
  Future<Response> signalExecutionWithHttpInfo(String id, { ExecutionTriggerDto? executionTriggerDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/signal'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = executionTriggerDto;

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

  /// Trigger Execution
  ///
  /// Signals an execution by id. Can for example be used to explicitly skip user tasks or signal asynchronous continuations.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to signal.
  ///
  /// * [ExecutionTriggerDto] executionTriggerDto:
  Future<void> signalExecution(String id, { ExecutionTriggerDto? executionTriggerDto, }) async {
    final response = await signalExecutionWithHttpInfo(id,  executionTriggerDto: executionTriggerDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Trigger Message Event Subscription
  ///
  /// Delivers a message to a specific execution by id, to trigger an existing message event subscription. Inject process variables as the message's payload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to submit the message to.
  ///
  /// * [String] messageName (required):
  ///   The name of the message that the addressed subscription corresponds to.
  ///
  /// * [ExecutionTriggerDto] executionTriggerDto:
  Future<Response> triggerEventWithHttpInfo(String id, String messageName, { ExecutionTriggerDto? executionTriggerDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/execution/{id}/messageSubscriptions/{messageName}/trigger'
      .replaceAll('{id}', id)
      .replaceAll('{messageName}', messageName);

    // ignore: prefer_final_locals
    Object? postBody = executionTriggerDto;

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

  /// Trigger Message Event Subscription
  ///
  /// Delivers a message to a specific execution by id, to trigger an existing message event subscription. Inject process variables as the message's payload.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the execution to submit the message to.
  ///
  /// * [String] messageName (required):
  ///   The name of the message that the addressed subscription corresponds to.
  ///
  /// * [ExecutionTriggerDto] executionTriggerDto:
  Future<void> triggerEvent(String id, String messageName, { ExecutionTriggerDto? executionTriggerDto, }) async {
    final response = await triggerEventWithHttpInfo(id, messageName,  executionTriggerDto: executionTriggerDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
