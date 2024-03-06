//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TaskApi {
  TaskApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Claim
  ///
  /// Claims a task for a specific user.  **Note:** The difference with the [Set Assignee](https://docs.camunda.org/manual/7.20/reference/rest/task/post-assignee/) method is that here a check is performed to see if the task already has a user assigned to it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to claim.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that claims the task.
  Future<Response> claimWithHttpInfo(String id, { UserIdDto? userIdDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/claim'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = userIdDto;

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

  /// Claim
  ///
  /// Claims a task for a specific user.  **Note:** The difference with the [Set Assignee](https://docs.camunda.org/manual/7.20/reference/rest/task/post-assignee/) method is that here a check is performed to see if the task already has a user assigned to it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to claim.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that claims the task.
  Future<void> claim(String id, { UserIdDto? userIdDto, }) async {
    final response = await claimWithHttpInfo(id,  userIdDto: userIdDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Complete
  ///
  /// Completes a task and updates process variables.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to complete.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<Response> completeWithHttpInfo(String id, { CompleteTaskDto? completeTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/complete'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = completeTaskDto;

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

  /// Complete
  ///
  /// Completes a task and updates process variables.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to complete.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<Map<String, VariableValueDto>?> complete(String id, { CompleteTaskDto? completeTaskDto, }) async {
    final response = await completeWithHttpInfo(id,  completeTaskDto: completeTaskDto, );
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

  /// Create
  ///
  /// Creates a new task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TaskDto] taskDto:
  Future<Response> createTaskWithHttpInfo({ TaskDto? taskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/create';

    // ignore: prefer_final_locals
    Object? postBody = taskDto;

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

  /// Create
  ///
  /// Creates a new task.
  ///
  /// Parameters:
  ///
  /// * [TaskDto] taskDto:
  Future<void> createTask({ TaskDto? taskDto, }) async {
    final response = await createTaskWithHttpInfo( taskDto: taskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delegate
  ///
  /// Delegates a task to another user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to delegate.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that the task should be delegated to.
  Future<Response> delegateTaskWithHttpInfo(String id, { UserIdDto? userIdDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/delegate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = userIdDto;

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

  /// Delegate
  ///
  /// Delegates a task to another user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to delegate.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that the task should be delegated to.
  Future<void> delegateTask(String id, { UserIdDto? userIdDto, }) async {
    final response = await delegateTaskWithHttpInfo(id,  userIdDto: userIdDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete
  ///
  /// Removes a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be removed.
  Future<Response> deleteTaskWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}'
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

  /// Delete
  ///
  /// Removes a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be removed.
  Future<void> deleteTask(String id,) async {
    final response = await deleteTaskWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Deployed Form
  ///
  /// Retrieves the deployed form that is referenced from a given task. For further information please refer to the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to get the deployed form for.
  Future<Response> getDeployedFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/deployed-form'
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

  /// Get Deployed Form
  ///
  /// Retrieves the deployed form that is referenced from a given task. For further information please refer to the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to get the deployed form for.
  Future<MultipartFile?> getDeployedForm(String id,) async {
    final response = await getDeployedFormWithHttpInfo(id,);
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

  /// Get Form Key
  ///
  /// Retrieves the form key for a task. The form key corresponds to the `FormData#formKey` property in the engine. This key can be used to do task-specific form rendering in client applications. Additionally, the context path of the containing process application is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the form for.
  Future<Response> getFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/form'
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

  /// Get Form Key
  ///
  /// Retrieves the form key for a task. The form key corresponds to the `FormData#formKey` property in the engine. This key can be used to do task-specific form rendering in client applications. Additionally, the context path of the containing process application is returned.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the form for.
  Future<FormDto?> getForm(String id,) async {
    final response = await getFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return null;
  }

  /// Get Task Form Variables
  ///
  /// Retrieves the form variables for a task. The form variables take form data specified on the task into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variables for.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getFormVariablesWithHttpInfo(String id, { String? variableNames, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/form-variables'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableNames != null) {
      queryParams.addAll(_queryParams('', 'variableNames', variableNames));
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

  /// Get Task Form Variables
  ///
  /// Retrieves the form variables for a task. The form variables take form data specified on the task into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the variables for.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getFormVariables(String id, { String? variableNames, bool? deserializeValues, }) async {
    final response = await getFormVariablesWithHttpInfo(id,  variableNames: variableNames, deserializeValues: deserializeValues, );
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

  /// Get Rendered Form
  ///
  /// Retrieves the rendered form for a task. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to get the rendered form for.
  Future<Response> getRenderedFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/rendered-form'
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

  /// Get Rendered Form
  ///
  /// Retrieves the rendered form for a task. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to get the rendered form for.
  Future<MultipartFile?> getRenderedForm(String id,) async {
    final response = await getRenderedFormWithHttpInfo(id,);
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

  /// Get
  ///
  /// Retrieves a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be retrieved.
  Future<Response> getTaskWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}'
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
  /// Retrieves a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be retrieved.
  Future<TaskDto?> getTask(String id,) async {
    final response = await getTaskWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TaskDto',) as TaskDto;
    
    }
    return null;
  }

  /// Get Task Count By Candidate Group
  ///
  /// Retrieves the number of tasks for each candidate group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTaskCountByCandidateGroupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/task/report/candidate-group-count';

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

  /// Get Task Count By Candidate Group
  ///
  /// Retrieves the number of tasks for each candidate group.
  Future<List<TaskCountByCandidateGroupResultDto>?> getTaskCountByCandidateGroup() async {
    final response = await getTaskCountByCandidateGroupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TaskCountByCandidateGroupResultDto>') as List)
        .cast<TaskCountByCandidateGroupResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List
  ///
  /// Queries for tasks that fulfill a given filter. The size of the result set can be retrieved by using the Get Task Count method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Restrict to task with the given id.
  ///
  /// * [String] taskIdIn:
  ///   Restrict to tasks with any of the given ids.
  ///
  /// * [String] processInstanceId:
  ///   Restrict to tasks that belong to process instances with the given id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to tasks that belong to process instances with the given ids.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Restrict to tasks that belong to process instances with the given business key.
  ///
  /// * [String] processInstanceBusinessKeyExpression:
  ///   Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
  ///
  /// * [String] processInstanceBusinessKeyLikeExpression:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] processDefinitionId:
  ///   Restrict to tasks that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Restrict to tasks that have a process definition name that has the parameter value as  a substring.
  ///
  /// * [String] executionId:
  ///   Restrict to tasks that belong to an execution with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict to tasks that belong to case instances with the given id.
  ///
  /// * [String] caseInstanceBusinessKey:
  ///   Restrict to tasks that belong to case instances with the given business key.
  ///
  /// * [String] caseInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
  ///
  /// * [String] caseDefinitionId:
  ///   Restrict to tasks that belong to a case definition with the given id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] caseDefinitionNameLike:
  ///   Restrict to tasks that have a case definition name that has the parameter value as a  substring.
  ///
  /// * [String] caseExecutionId:
  ///   Restrict to tasks that belong to a case execution with the given id.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] assignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] assigneeExpression:
  ///   Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeLike:
  ///   Restrict to tasks that have an assignee that has the parameter  value as a substring.
  ///
  /// * [String] assigneeLikeExpression:
  ///   Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeIn:
  ///   Only include tasks which are assigned to one of the passed and  comma-separated user ids.
  ///
  /// * [String] assigneeNotIn:
  ///   Only include tasks which are not assigned to one of the passed and comma-separated user ids.
  ///
  /// * [String] owner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] ownerExpression:
  ///   Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateGroup:
  ///   Only include tasks that are offered to the given group.
  ///
  /// * [String] candidateGroupExpression:
  ///   Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateUser:
  ///   Only include tasks that are offered to the given user or to one of his groups.
  ///
  /// * [String] candidateUserExpression:
  ///   Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [bool] includeAssignedTasks:
  ///   Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
  ///
  /// * [String] involvedUser:
  ///   Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
  ///
  /// * [String] involvedUserExpression:
  ///   Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] taskDefinitionKeyLike:
  ///   Restrict to tasks that have a key that has the parameter value as a substring.
  ///
  /// * [String] name:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] nameNotEqual:
  ///   Restrict to tasks that do not have the given name.
  ///
  /// * [String] nameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] nameNotLike:
  ///   Restrict to tasks that do not have a name with the given parameter value as substring.
  ///
  /// * [String] description:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] descriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [int] priority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [int] maxPriority:
  ///   Restrict to tasks that have a lower or equal priority.
  ///
  /// * [int] minPriority:
  ///   Restrict to tasks that have a higher or equal priority.
  ///
  /// * [String] dueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] dueDateExpression:
  ///   Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
  ///
  /// * [String] dueAfterExpression:
  ///   Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
  ///
  /// * [String] dueBeforeExpression:
  ///   Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [bool] withoutDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] followUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] followUpDateExpression:
  ///   Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
  ///
  /// * [String] followUpAfterExpression:
  ///   Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
  ///
  /// * [String] followUpBeforeExpression:
  ///   Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBeforeOrNotExistent:
  ///   Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
  ///
  /// * [String] followUpBeforeOrNotExistentExpression:
  ///   Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdOn:
  ///   Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
  ///
  /// * [String] createdOnExpression:
  ///   Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdAfter:
  ///   Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] createdAfterExpression:
  ///   Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdBefore:
  ///   Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] createdBeforeExpression:
  ///   Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] updatedAfter:
  ///   Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] updatedAfterExpression:
  ///   Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] delegationState:
  ///   Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
  ///
  /// * [String] candidateGroups:
  ///   Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
  ///
  /// * [String] candidateGroupsExpression:
  ///   Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withCandidateUsers:
  ///   Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateUsers:
  ///   Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] caseInstanceVariables:
  ///   Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
  ///
  /// * [String] parentTaskId:
  ///   Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
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
  Future<Response> getTasksWithHttpInfo({ String? taskId, String? taskIdIn, String? processInstanceId, String? processInstanceIdIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyExpression, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? processInstanceBusinessKeyLikeExpression, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? executionId, String? caseInstanceId, String? caseInstanceBusinessKey, String? caseInstanceBusinessKeyLike, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? caseDefinitionNameLike, String? caseExecutionId, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? assignee, String? assigneeExpression, String? assigneeLike, String? assigneeLikeExpression, String? assigneeIn, String? assigneeNotIn, String? owner, String? ownerExpression, String? candidateGroup, String? candidateGroupExpression, String? candidateUser, String? candidateUserExpression, bool? includeAssignedTasks, String? involvedUser, String? involvedUserExpression, bool? assigned, bool? unassigned, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDefinitionKeyLike, String? name, String? nameNotEqual, String? nameLike, String? nameNotLike, String? description, String? descriptionLike, int? priority, int? maxPriority, int? minPriority, String? dueDate, String? dueDateExpression, String? dueAfter, String? dueAfterExpression, String? dueBefore, String? dueBeforeExpression, bool? withoutDueDate, String? followUpDate, String? followUpDateExpression, String? followUpAfter, String? followUpAfterExpression, String? followUpBefore, String? followUpBeforeExpression, String? followUpBeforeOrNotExistent, String? followUpBeforeOrNotExistentExpression, String? createdOn, String? createdOnExpression, String? createdAfter, String? createdAfterExpression, String? createdBefore, String? createdBeforeExpression, String? updatedAfter, String? updatedAfterExpression, String? delegationState, String? candidateGroups, String? candidateGroupsExpression, bool? withCandidateGroups, bool? withoutCandidateGroups, bool? withCandidateUsers, bool? withoutCandidateUsers, bool? active, bool? suspended, String? taskVariables, String? processVariables, String? caseInstanceVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? parentTaskId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyExpression != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyExpression', processInstanceBusinessKeyExpression));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (processInstanceBusinessKeyLikeExpression != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLikeExpression', processInstanceBusinessKeyLikeExpression));
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
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (processDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionNameLike', processDefinitionNameLike));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceBusinessKey', caseInstanceBusinessKey));
    }
    if (caseInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceBusinessKeyLike', caseInstanceBusinessKeyLike));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionName', caseDefinitionName));
    }
    if (caseDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionNameLike', caseDefinitionNameLike));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
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
    if (assignee != null) {
      queryParams.addAll(_queryParams('', 'assignee', assignee));
    }
    if (assigneeExpression != null) {
      queryParams.addAll(_queryParams('', 'assigneeExpression', assigneeExpression));
    }
    if (assigneeLike != null) {
      queryParams.addAll(_queryParams('', 'assigneeLike', assigneeLike));
    }
    if (assigneeLikeExpression != null) {
      queryParams.addAll(_queryParams('', 'assigneeLikeExpression', assigneeLikeExpression));
    }
    if (assigneeIn != null) {
      queryParams.addAll(_queryParams('', 'assigneeIn', assigneeIn));
    }
    if (assigneeNotIn != null) {
      queryParams.addAll(_queryParams('', 'assigneeNotIn', assigneeNotIn));
    }
    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (ownerExpression != null) {
      queryParams.addAll(_queryParams('', 'ownerExpression', ownerExpression));
    }
    if (candidateGroup != null) {
      queryParams.addAll(_queryParams('', 'candidateGroup', candidateGroup));
    }
    if (candidateGroupExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateGroupExpression', candidateGroupExpression));
    }
    if (candidateUser != null) {
      queryParams.addAll(_queryParams('', 'candidateUser', candidateUser));
    }
    if (candidateUserExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateUserExpression', candidateUserExpression));
    }
    if (includeAssignedTasks != null) {
      queryParams.addAll(_queryParams('', 'includeAssignedTasks', includeAssignedTasks));
    }
    if (involvedUser != null) {
      queryParams.addAll(_queryParams('', 'involvedUser', involvedUser));
    }
    if (involvedUserExpression != null) {
      queryParams.addAll(_queryParams('', 'involvedUserExpression', involvedUserExpression));
    }
    if (assigned != null) {
      queryParams.addAll(_queryParams('', 'assigned', assigned));
    }
    if (unassigned != null) {
      queryParams.addAll(_queryParams('', 'unassigned', unassigned));
    }
    if (taskDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKey', taskDefinitionKey));
    }
    if (taskDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyIn', taskDefinitionKeyIn));
    }
    if (taskDefinitionKeyLike != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyLike', taskDefinitionKeyLike));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameNotEqual != null) {
      queryParams.addAll(_queryParams('', 'nameNotEqual', nameNotEqual));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (nameNotLike != null) {
      queryParams.addAll(_queryParams('', 'nameNotLike', nameNotLike));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (descriptionLike != null) {
      queryParams.addAll(_queryParams('', 'descriptionLike', descriptionLike));
    }
    if (priority != null) {
      queryParams.addAll(_queryParams('', 'priority', priority));
    }
    if (maxPriority != null) {
      queryParams.addAll(_queryParams('', 'maxPriority', maxPriority));
    }
    if (minPriority != null) {
      queryParams.addAll(_queryParams('', 'minPriority', minPriority));
    }
    if (dueDate != null) {
      queryParams.addAll(_queryParams('', 'dueDate', dueDate));
    }
    if (dueDateExpression != null) {
      queryParams.addAll(_queryParams('', 'dueDateExpression', dueDateExpression));
    }
    if (dueAfter != null) {
      queryParams.addAll(_queryParams('', 'dueAfter', dueAfter));
    }
    if (dueAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'dueAfterExpression', dueAfterExpression));
    }
    if (dueBefore != null) {
      queryParams.addAll(_queryParams('', 'dueBefore', dueBefore));
    }
    if (dueBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'dueBeforeExpression', dueBeforeExpression));
    }
    if (withoutDueDate != null) {
      queryParams.addAll(_queryParams('', 'withoutDueDate', withoutDueDate));
    }
    if (followUpDate != null) {
      queryParams.addAll(_queryParams('', 'followUpDate', followUpDate));
    }
    if (followUpDateExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpDateExpression', followUpDateExpression));
    }
    if (followUpAfter != null) {
      queryParams.addAll(_queryParams('', 'followUpAfter', followUpAfter));
    }
    if (followUpAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpAfterExpression', followUpAfterExpression));
    }
    if (followUpBefore != null) {
      queryParams.addAll(_queryParams('', 'followUpBefore', followUpBefore));
    }
    if (followUpBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeExpression', followUpBeforeExpression));
    }
    if (followUpBeforeOrNotExistent != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeOrNotExistent', followUpBeforeOrNotExistent));
    }
    if (followUpBeforeOrNotExistentExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeOrNotExistentExpression', followUpBeforeOrNotExistentExpression));
    }
    if (createdOn != null) {
      queryParams.addAll(_queryParams('', 'createdOn', createdOn));
    }
    if (createdOnExpression != null) {
      queryParams.addAll(_queryParams('', 'createdOnExpression', createdOnExpression));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'createdAfter', createdAfter));
    }
    if (createdAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'createdAfterExpression', createdAfterExpression));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'createdBefore', createdBefore));
    }
    if (createdBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'createdBeforeExpression', createdBeforeExpression));
    }
    if (updatedAfter != null) {
      queryParams.addAll(_queryParams('', 'updatedAfter', updatedAfter));
    }
    if (updatedAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'updatedAfterExpression', updatedAfterExpression));
    }
    if (delegationState != null) {
      queryParams.addAll(_queryParams('', 'delegationState', delegationState));
    }
    if (candidateGroups != null) {
      queryParams.addAll(_queryParams('', 'candidateGroups', candidateGroups));
    }
    if (candidateGroupsExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateGroupsExpression', candidateGroupsExpression));
    }
    if (withCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withCandidateGroups', withCandidateGroups));
    }
    if (withoutCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateGroups', withoutCandidateGroups));
    }
    if (withCandidateUsers != null) {
      queryParams.addAll(_queryParams('', 'withCandidateUsers', withCandidateUsers));
    }
    if (withoutCandidateUsers != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateUsers', withoutCandidateUsers));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (taskVariables != null) {
      queryParams.addAll(_queryParams('', 'taskVariables', taskVariables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
    }
    if (caseInstanceVariables != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceVariables', caseInstanceVariables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (parentTaskId != null) {
      queryParams.addAll(_queryParams('', 'parentTaskId', parentTaskId));
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
  /// Queries for tasks that fulfill a given filter. The size of the result set can be retrieved by using the Get Task Count method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Restrict to task with the given id.
  ///
  /// * [String] taskIdIn:
  ///   Restrict to tasks with any of the given ids.
  ///
  /// * [String] processInstanceId:
  ///   Restrict to tasks that belong to process instances with the given id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to tasks that belong to process instances with the given ids.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Restrict to tasks that belong to process instances with the given business key.
  ///
  /// * [String] processInstanceBusinessKeyExpression:
  ///   Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
  ///
  /// * [String] processInstanceBusinessKeyLikeExpression:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] processDefinitionId:
  ///   Restrict to tasks that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Restrict to tasks that have a process definition name that has the parameter value as  a substring.
  ///
  /// * [String] executionId:
  ///   Restrict to tasks that belong to an execution with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict to tasks that belong to case instances with the given id.
  ///
  /// * [String] caseInstanceBusinessKey:
  ///   Restrict to tasks that belong to case instances with the given business key.
  ///
  /// * [String] caseInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
  ///
  /// * [String] caseDefinitionId:
  ///   Restrict to tasks that belong to a case definition with the given id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] caseDefinitionNameLike:
  ///   Restrict to tasks that have a case definition name that has the parameter value as a  substring.
  ///
  /// * [String] caseExecutionId:
  ///   Restrict to tasks that belong to a case execution with the given id.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] assignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] assigneeExpression:
  ///   Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeLike:
  ///   Restrict to tasks that have an assignee that has the parameter  value as a substring.
  ///
  /// * [String] assigneeLikeExpression:
  ///   Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeIn:
  ///   Only include tasks which are assigned to one of the passed and  comma-separated user ids.
  ///
  /// * [String] assigneeNotIn:
  ///   Only include tasks which are not assigned to one of the passed and comma-separated user ids.
  ///
  /// * [String] owner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] ownerExpression:
  ///   Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateGroup:
  ///   Only include tasks that are offered to the given group.
  ///
  /// * [String] candidateGroupExpression:
  ///   Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateUser:
  ///   Only include tasks that are offered to the given user or to one of his groups.
  ///
  /// * [String] candidateUserExpression:
  ///   Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [bool] includeAssignedTasks:
  ///   Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
  ///
  /// * [String] involvedUser:
  ///   Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
  ///
  /// * [String] involvedUserExpression:
  ///   Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] taskDefinitionKeyLike:
  ///   Restrict to tasks that have a key that has the parameter value as a substring.
  ///
  /// * [String] name:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] nameNotEqual:
  ///   Restrict to tasks that do not have the given name.
  ///
  /// * [String] nameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] nameNotLike:
  ///   Restrict to tasks that do not have a name with the given parameter value as substring.
  ///
  /// * [String] description:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] descriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [int] priority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [int] maxPriority:
  ///   Restrict to tasks that have a lower or equal priority.
  ///
  /// * [int] minPriority:
  ///   Restrict to tasks that have a higher or equal priority.
  ///
  /// * [String] dueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] dueDateExpression:
  ///   Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
  ///
  /// * [String] dueAfterExpression:
  ///   Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
  ///
  /// * [String] dueBeforeExpression:
  ///   Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [bool] withoutDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] followUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] followUpDateExpression:
  ///   Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
  ///
  /// * [String] followUpAfterExpression:
  ///   Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
  ///
  /// * [String] followUpBeforeExpression:
  ///   Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBeforeOrNotExistent:
  ///   Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
  ///
  /// * [String] followUpBeforeOrNotExistentExpression:
  ///   Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdOn:
  ///   Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
  ///
  /// * [String] createdOnExpression:
  ///   Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdAfter:
  ///   Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] createdAfterExpression:
  ///   Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdBefore:
  ///   Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] createdBeforeExpression:
  ///   Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] updatedAfter:
  ///   Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] updatedAfterExpression:
  ///   Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] delegationState:
  ///   Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
  ///
  /// * [String] candidateGroups:
  ///   Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
  ///
  /// * [String] candidateGroupsExpression:
  ///   Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withCandidateUsers:
  ///   Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateUsers:
  ///   Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] caseInstanceVariables:
  ///   Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
  ///
  /// * [String] parentTaskId:
  ///   Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
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
  Future<List<TaskDto>?> getTasks({ String? taskId, String? taskIdIn, String? processInstanceId, String? processInstanceIdIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyExpression, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? processInstanceBusinessKeyLikeExpression, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? executionId, String? caseInstanceId, String? caseInstanceBusinessKey, String? caseInstanceBusinessKeyLike, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? caseDefinitionNameLike, String? caseExecutionId, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? assignee, String? assigneeExpression, String? assigneeLike, String? assigneeLikeExpression, String? assigneeIn, String? assigneeNotIn, String? owner, String? ownerExpression, String? candidateGroup, String? candidateGroupExpression, String? candidateUser, String? candidateUserExpression, bool? includeAssignedTasks, String? involvedUser, String? involvedUserExpression, bool? assigned, bool? unassigned, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDefinitionKeyLike, String? name, String? nameNotEqual, String? nameLike, String? nameNotLike, String? description, String? descriptionLike, int? priority, int? maxPriority, int? minPriority, String? dueDate, String? dueDateExpression, String? dueAfter, String? dueAfterExpression, String? dueBefore, String? dueBeforeExpression, bool? withoutDueDate, String? followUpDate, String? followUpDateExpression, String? followUpAfter, String? followUpAfterExpression, String? followUpBefore, String? followUpBeforeExpression, String? followUpBeforeOrNotExistent, String? followUpBeforeOrNotExistentExpression, String? createdOn, String? createdOnExpression, String? createdAfter, String? createdAfterExpression, String? createdBefore, String? createdBeforeExpression, String? updatedAfter, String? updatedAfterExpression, String? delegationState, String? candidateGroups, String? candidateGroupsExpression, bool? withCandidateGroups, bool? withoutCandidateGroups, bool? withCandidateUsers, bool? withoutCandidateUsers, bool? active, bool? suspended, String? taskVariables, String? processVariables, String? caseInstanceVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? parentTaskId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getTasksWithHttpInfo( taskId: taskId, taskIdIn: taskIdIn, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyExpression: processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression: processInstanceBusinessKeyLikeExpression, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionName: processDefinitionName, processDefinitionNameLike: processDefinitionNameLike, executionId: executionId, caseInstanceId: caseInstanceId, caseInstanceBusinessKey: caseInstanceBusinessKey, caseInstanceBusinessKeyLike: caseInstanceBusinessKeyLike, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseDefinitionName: caseDefinitionName, caseDefinitionNameLike: caseDefinitionNameLike, caseExecutionId: caseExecutionId, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, assignee: assignee, assigneeExpression: assigneeExpression, assigneeLike: assigneeLike, assigneeLikeExpression: assigneeLikeExpression, assigneeIn: assigneeIn, assigneeNotIn: assigneeNotIn, owner: owner, ownerExpression: ownerExpression, candidateGroup: candidateGroup, candidateGroupExpression: candidateGroupExpression, candidateUser: candidateUser, candidateUserExpression: candidateUserExpression, includeAssignedTasks: includeAssignedTasks, involvedUser: involvedUser, involvedUserExpression: involvedUserExpression, assigned: assigned, unassigned: unassigned, taskDefinitionKey: taskDefinitionKey, taskDefinitionKeyIn: taskDefinitionKeyIn, taskDefinitionKeyLike: taskDefinitionKeyLike, name: name, nameNotEqual: nameNotEqual, nameLike: nameLike, nameNotLike: nameNotLike, description: description, descriptionLike: descriptionLike, priority: priority, maxPriority: maxPriority, minPriority: minPriority, dueDate: dueDate, dueDateExpression: dueDateExpression, dueAfter: dueAfter, dueAfterExpression: dueAfterExpression, dueBefore: dueBefore, dueBeforeExpression: dueBeforeExpression, withoutDueDate: withoutDueDate, followUpDate: followUpDate, followUpDateExpression: followUpDateExpression, followUpAfter: followUpAfter, followUpAfterExpression: followUpAfterExpression, followUpBefore: followUpBefore, followUpBeforeExpression: followUpBeforeExpression, followUpBeforeOrNotExistent: followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression: followUpBeforeOrNotExistentExpression, createdOn: createdOn, createdOnExpression: createdOnExpression, createdAfter: createdAfter, createdAfterExpression: createdAfterExpression, createdBefore: createdBefore, createdBeforeExpression: createdBeforeExpression, updatedAfter: updatedAfter, updatedAfterExpression: updatedAfterExpression, delegationState: delegationState, candidateGroups: candidateGroups, candidateGroupsExpression: candidateGroupsExpression, withCandidateGroups: withCandidateGroups, withoutCandidateGroups: withoutCandidateGroups, withCandidateUsers: withCandidateUsers, withoutCandidateUsers: withoutCandidateUsers, active: active, suspended: suspended, taskVariables: taskVariables, processVariables: processVariables, caseInstanceVariables: caseInstanceVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, parentTaskId: parentTaskId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TaskDto>') as List)
        .cast<TaskDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Retrieves the number of tasks that fulfill a provided filter. Corresponds to the size of the result set when using the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/) method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Restrict to task with the given id.
  ///
  /// * [String] taskIdIn:
  ///   Restrict to tasks with any of the given ids.
  ///
  /// * [String] processInstanceId:
  ///   Restrict to tasks that belong to process instances with the given id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to tasks that belong to process instances with the given ids.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Restrict to tasks that belong to process instances with the given business key.
  ///
  /// * [String] processInstanceBusinessKeyExpression:
  ///   Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
  ///
  /// * [String] processInstanceBusinessKeyLikeExpression:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] processDefinitionId:
  ///   Restrict to tasks that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Restrict to tasks that have a process definition name that has the parameter value as  a substring.
  ///
  /// * [String] executionId:
  ///   Restrict to tasks that belong to an execution with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict to tasks that belong to case instances with the given id.
  ///
  /// * [String] caseInstanceBusinessKey:
  ///   Restrict to tasks that belong to case instances with the given business key.
  ///
  /// * [String] caseInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
  ///
  /// * [String] caseDefinitionId:
  ///   Restrict to tasks that belong to a case definition with the given id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] caseDefinitionNameLike:
  ///   Restrict to tasks that have a case definition name that has the parameter value as a  substring.
  ///
  /// * [String] caseExecutionId:
  ///   Restrict to tasks that belong to a case execution with the given id.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] assignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] assigneeExpression:
  ///   Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeLike:
  ///   Restrict to tasks that have an assignee that has the parameter  value as a substring.
  ///
  /// * [String] assigneeLikeExpression:
  ///   Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeIn:
  ///   Only include tasks which are assigned to one of the passed and  comma-separated user ids.
  ///
  /// * [String] assigneeNotIn:
  ///   Only include tasks which are not assigned to one of the passed and comma-separated user ids.
  ///
  /// * [String] owner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] ownerExpression:
  ///   Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateGroup:
  ///   Only include tasks that are offered to the given group.
  ///
  /// * [String] candidateGroupExpression:
  ///   Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateUser:
  ///   Only include tasks that are offered to the given user or to one of his groups.
  ///
  /// * [String] candidateUserExpression:
  ///   Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [bool] includeAssignedTasks:
  ///   Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
  ///
  /// * [String] involvedUser:
  ///   Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
  ///
  /// * [String] involvedUserExpression:
  ///   Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] taskDefinitionKeyLike:
  ///   Restrict to tasks that have a key that has the parameter value as a substring.
  ///
  /// * [String] name:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] nameNotEqual:
  ///   Restrict to tasks that do not have the given name.
  ///
  /// * [String] nameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] nameNotLike:
  ///   Restrict to tasks that do not have a name with the given parameter value as substring.
  ///
  /// * [String] description:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] descriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [int] priority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [int] maxPriority:
  ///   Restrict to tasks that have a lower or equal priority.
  ///
  /// * [int] minPriority:
  ///   Restrict to tasks that have a higher or equal priority.
  ///
  /// * [String] dueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] dueDateExpression:
  ///   Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
  ///
  /// * [String] dueAfterExpression:
  ///   Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
  ///
  /// * [String] dueBeforeExpression:
  ///   Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [bool] withoutDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] followUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] followUpDateExpression:
  ///   Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
  ///
  /// * [String] followUpAfterExpression:
  ///   Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
  ///
  /// * [String] followUpBeforeExpression:
  ///   Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBeforeOrNotExistent:
  ///   Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
  ///
  /// * [String] followUpBeforeOrNotExistentExpression:
  ///   Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdOn:
  ///   Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
  ///
  /// * [String] createdOnExpression:
  ///   Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdAfter:
  ///   Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] createdAfterExpression:
  ///   Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdBefore:
  ///   Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] createdBeforeExpression:
  ///   Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] updatedAfter:
  ///   Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] updatedAfterExpression:
  ///   Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] delegationState:
  ///   Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
  ///
  /// * [String] candidateGroups:
  ///   Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
  ///
  /// * [String] candidateGroupsExpression:
  ///   Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withCandidateUsers:
  ///   Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateUsers:
  ///   Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] caseInstanceVariables:
  ///   Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
  ///
  /// * [String] parentTaskId:
  ///   Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
  Future<Response> getTasksCountWithHttpInfo({ String? taskId, String? taskIdIn, String? processInstanceId, String? processInstanceIdIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyExpression, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? processInstanceBusinessKeyLikeExpression, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? executionId, String? caseInstanceId, String? caseInstanceBusinessKey, String? caseInstanceBusinessKeyLike, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? caseDefinitionNameLike, String? caseExecutionId, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? assignee, String? assigneeExpression, String? assigneeLike, String? assigneeLikeExpression, String? assigneeIn, String? assigneeNotIn, String? owner, String? ownerExpression, String? candidateGroup, String? candidateGroupExpression, String? candidateUser, String? candidateUserExpression, bool? includeAssignedTasks, String? involvedUser, String? involvedUserExpression, bool? assigned, bool? unassigned, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDefinitionKeyLike, String? name, String? nameNotEqual, String? nameLike, String? nameNotLike, String? description, String? descriptionLike, int? priority, int? maxPriority, int? minPriority, String? dueDate, String? dueDateExpression, String? dueAfter, String? dueAfterExpression, String? dueBefore, String? dueBeforeExpression, bool? withoutDueDate, String? followUpDate, String? followUpDateExpression, String? followUpAfter, String? followUpAfterExpression, String? followUpBefore, String? followUpBeforeExpression, String? followUpBeforeOrNotExistent, String? followUpBeforeOrNotExistentExpression, String? createdOn, String? createdOnExpression, String? createdAfter, String? createdAfterExpression, String? createdBefore, String? createdBeforeExpression, String? updatedAfter, String? updatedAfterExpression, String? delegationState, String? candidateGroups, String? candidateGroupsExpression, bool? withCandidateGroups, bool? withoutCandidateGroups, bool? withCandidateUsers, bool? withoutCandidateUsers, bool? active, bool? suspended, String? taskVariables, String? processVariables, String? caseInstanceVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? parentTaskId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (taskIdIn != null) {
      queryParams.addAll(_queryParams('', 'taskIdIn', taskIdIn));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceIdIn', processInstanceIdIn));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyExpression != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyExpression', processInstanceBusinessKeyExpression));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (processInstanceBusinessKeyLikeExpression != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLikeExpression', processInstanceBusinessKeyLikeExpression));
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
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (processDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionNameLike', processDefinitionNameLike));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceBusinessKey', caseInstanceBusinessKey));
    }
    if (caseInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceBusinessKeyLike', caseInstanceBusinessKeyLike));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionName', caseDefinitionName));
    }
    if (caseDefinitionNameLike != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionNameLike', caseDefinitionNameLike));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
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
    if (assignee != null) {
      queryParams.addAll(_queryParams('', 'assignee', assignee));
    }
    if (assigneeExpression != null) {
      queryParams.addAll(_queryParams('', 'assigneeExpression', assigneeExpression));
    }
    if (assigneeLike != null) {
      queryParams.addAll(_queryParams('', 'assigneeLike', assigneeLike));
    }
    if (assigneeLikeExpression != null) {
      queryParams.addAll(_queryParams('', 'assigneeLikeExpression', assigneeLikeExpression));
    }
    if (assigneeIn != null) {
      queryParams.addAll(_queryParams('', 'assigneeIn', assigneeIn));
    }
    if (assigneeNotIn != null) {
      queryParams.addAll(_queryParams('', 'assigneeNotIn', assigneeNotIn));
    }
    if (owner != null) {
      queryParams.addAll(_queryParams('', 'owner', owner));
    }
    if (ownerExpression != null) {
      queryParams.addAll(_queryParams('', 'ownerExpression', ownerExpression));
    }
    if (candidateGroup != null) {
      queryParams.addAll(_queryParams('', 'candidateGroup', candidateGroup));
    }
    if (candidateGroupExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateGroupExpression', candidateGroupExpression));
    }
    if (candidateUser != null) {
      queryParams.addAll(_queryParams('', 'candidateUser', candidateUser));
    }
    if (candidateUserExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateUserExpression', candidateUserExpression));
    }
    if (includeAssignedTasks != null) {
      queryParams.addAll(_queryParams('', 'includeAssignedTasks', includeAssignedTasks));
    }
    if (involvedUser != null) {
      queryParams.addAll(_queryParams('', 'involvedUser', involvedUser));
    }
    if (involvedUserExpression != null) {
      queryParams.addAll(_queryParams('', 'involvedUserExpression', involvedUserExpression));
    }
    if (assigned != null) {
      queryParams.addAll(_queryParams('', 'assigned', assigned));
    }
    if (unassigned != null) {
      queryParams.addAll(_queryParams('', 'unassigned', unassigned));
    }
    if (taskDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKey', taskDefinitionKey));
    }
    if (taskDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyIn', taskDefinitionKeyIn));
    }
    if (taskDefinitionKeyLike != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyLike', taskDefinitionKeyLike));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameNotEqual != null) {
      queryParams.addAll(_queryParams('', 'nameNotEqual', nameNotEqual));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (nameNotLike != null) {
      queryParams.addAll(_queryParams('', 'nameNotLike', nameNotLike));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (descriptionLike != null) {
      queryParams.addAll(_queryParams('', 'descriptionLike', descriptionLike));
    }
    if (priority != null) {
      queryParams.addAll(_queryParams('', 'priority', priority));
    }
    if (maxPriority != null) {
      queryParams.addAll(_queryParams('', 'maxPriority', maxPriority));
    }
    if (minPriority != null) {
      queryParams.addAll(_queryParams('', 'minPriority', minPriority));
    }
    if (dueDate != null) {
      queryParams.addAll(_queryParams('', 'dueDate', dueDate));
    }
    if (dueDateExpression != null) {
      queryParams.addAll(_queryParams('', 'dueDateExpression', dueDateExpression));
    }
    if (dueAfter != null) {
      queryParams.addAll(_queryParams('', 'dueAfter', dueAfter));
    }
    if (dueAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'dueAfterExpression', dueAfterExpression));
    }
    if (dueBefore != null) {
      queryParams.addAll(_queryParams('', 'dueBefore', dueBefore));
    }
    if (dueBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'dueBeforeExpression', dueBeforeExpression));
    }
    if (withoutDueDate != null) {
      queryParams.addAll(_queryParams('', 'withoutDueDate', withoutDueDate));
    }
    if (followUpDate != null) {
      queryParams.addAll(_queryParams('', 'followUpDate', followUpDate));
    }
    if (followUpDateExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpDateExpression', followUpDateExpression));
    }
    if (followUpAfter != null) {
      queryParams.addAll(_queryParams('', 'followUpAfter', followUpAfter));
    }
    if (followUpAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpAfterExpression', followUpAfterExpression));
    }
    if (followUpBefore != null) {
      queryParams.addAll(_queryParams('', 'followUpBefore', followUpBefore));
    }
    if (followUpBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeExpression', followUpBeforeExpression));
    }
    if (followUpBeforeOrNotExistent != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeOrNotExistent', followUpBeforeOrNotExistent));
    }
    if (followUpBeforeOrNotExistentExpression != null) {
      queryParams.addAll(_queryParams('', 'followUpBeforeOrNotExistentExpression', followUpBeforeOrNotExistentExpression));
    }
    if (createdOn != null) {
      queryParams.addAll(_queryParams('', 'createdOn', createdOn));
    }
    if (createdOnExpression != null) {
      queryParams.addAll(_queryParams('', 'createdOnExpression', createdOnExpression));
    }
    if (createdAfter != null) {
      queryParams.addAll(_queryParams('', 'createdAfter', createdAfter));
    }
    if (createdAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'createdAfterExpression', createdAfterExpression));
    }
    if (createdBefore != null) {
      queryParams.addAll(_queryParams('', 'createdBefore', createdBefore));
    }
    if (createdBeforeExpression != null) {
      queryParams.addAll(_queryParams('', 'createdBeforeExpression', createdBeforeExpression));
    }
    if (updatedAfter != null) {
      queryParams.addAll(_queryParams('', 'updatedAfter', updatedAfter));
    }
    if (updatedAfterExpression != null) {
      queryParams.addAll(_queryParams('', 'updatedAfterExpression', updatedAfterExpression));
    }
    if (delegationState != null) {
      queryParams.addAll(_queryParams('', 'delegationState', delegationState));
    }
    if (candidateGroups != null) {
      queryParams.addAll(_queryParams('', 'candidateGroups', candidateGroups));
    }
    if (candidateGroupsExpression != null) {
      queryParams.addAll(_queryParams('', 'candidateGroupsExpression', candidateGroupsExpression));
    }
    if (withCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withCandidateGroups', withCandidateGroups));
    }
    if (withoutCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateGroups', withoutCandidateGroups));
    }
    if (withCandidateUsers != null) {
      queryParams.addAll(_queryParams('', 'withCandidateUsers', withCandidateUsers));
    }
    if (withoutCandidateUsers != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateUsers', withoutCandidateUsers));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (taskVariables != null) {
      queryParams.addAll(_queryParams('', 'taskVariables', taskVariables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
    }
    if (caseInstanceVariables != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceVariables', caseInstanceVariables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (parentTaskId != null) {
      queryParams.addAll(_queryParams('', 'parentTaskId', parentTaskId));
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
  /// Retrieves the number of tasks that fulfill a provided filter. Corresponds to the size of the result set when using the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/) method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Restrict to task with the given id.
  ///
  /// * [String] taskIdIn:
  ///   Restrict to tasks with any of the given ids.
  ///
  /// * [String] processInstanceId:
  ///   Restrict to tasks that belong to process instances with the given id.
  ///
  /// * [String] processInstanceIdIn:
  ///   Restrict to tasks that belong to process instances with the given ids.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Restrict to tasks that belong to process instances with the given business key.
  ///
  /// * [String] processInstanceBusinessKeyExpression:
  ///   Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
  ///
  /// * [String] processInstanceBusinessKeyLikeExpression:
  ///   Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] processDefinitionId:
  ///   Restrict to tasks that belong to a process definition with the given id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionKeyIn:
  ///   Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] processDefinitionNameLike:
  ///   Restrict to tasks that have a process definition name that has the parameter value as  a substring.
  ///
  /// * [String] executionId:
  ///   Restrict to tasks that belong to an execution with the given id.
  ///
  /// * [String] caseInstanceId:
  ///   Restrict to tasks that belong to case instances with the given id.
  ///
  /// * [String] caseInstanceBusinessKey:
  ///   Restrict to tasks that belong to case instances with the given business key.
  ///
  /// * [String] caseInstanceBusinessKeyLike:
  ///   Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
  ///
  /// * [String] caseDefinitionId:
  ///   Restrict to tasks that belong to a case definition with the given id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] caseDefinitionNameLike:
  ///   Restrict to tasks that have a case definition name that has the parameter value as a  substring.
  ///
  /// * [String] caseExecutionId:
  ///   Restrict to tasks that belong to a case execution with the given id.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
  ///
  /// * [String] tenantIdIn:
  ///   Only include tasks which belong to one of the passed and comma-separated  tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] assignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] assigneeExpression:
  ///   Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeLike:
  ///   Restrict to tasks that have an assignee that has the parameter  value as a substring.
  ///
  /// * [String] assigneeLikeExpression:
  ///   Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] assigneeIn:
  ///   Only include tasks which are assigned to one of the passed and  comma-separated user ids.
  ///
  /// * [String] assigneeNotIn:
  ///   Only include tasks which are not assigned to one of the passed and comma-separated user ids.
  ///
  /// * [String] owner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] ownerExpression:
  ///   Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateGroup:
  ///   Only include tasks that are offered to the given group.
  ///
  /// * [String] candidateGroupExpression:
  ///   Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [String] candidateUser:
  ///   Only include tasks that are offered to the given user or to one of his groups.
  ///
  /// * [String] candidateUserExpression:
  ///   Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
  ///
  /// * [bool] includeAssignedTasks:
  ///   Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
  ///
  /// * [String] involvedUser:
  ///   Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
  ///
  /// * [String] involvedUserExpression:
  ///   Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] taskDefinitionKeyLike:
  ///   Restrict to tasks that have a key that has the parameter value as a substring.
  ///
  /// * [String] name:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] nameNotEqual:
  ///   Restrict to tasks that do not have the given name.
  ///
  /// * [String] nameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] nameNotLike:
  ///   Restrict to tasks that do not have a name with the given parameter value as substring.
  ///
  /// * [String] description:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] descriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [int] priority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [int] maxPriority:
  ///   Restrict to tasks that have a lower or equal priority.
  ///
  /// * [int] minPriority:
  ///   Restrict to tasks that have a higher or equal priority.
  ///
  /// * [String] dueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] dueDateExpression:
  ///   Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
  ///
  /// * [String] dueAfterExpression:
  ///   Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] dueBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
  ///
  /// * [String] dueBeforeExpression:
  ///   Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [bool] withoutDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
  ///
  /// * [String] followUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] followUpDateExpression:
  ///   Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
  ///
  /// * [String] followUpAfterExpression:
  ///   Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
  ///
  /// * [String] followUpBeforeExpression:
  ///   Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] followUpBeforeOrNotExistent:
  ///   Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
  ///
  /// * [String] followUpBeforeOrNotExistentExpression:
  ///   Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdOn:
  ///   Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
  ///
  /// * [String] createdOnExpression:
  ///   Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdAfter:
  ///   Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
  ///
  /// * [String] createdAfterExpression:
  ///   Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] createdBefore:
  ///   Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] createdBeforeExpression:
  ///   Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] updatedAfter:
  ///   Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
  ///
  /// * [String] updatedAfterExpression:
  ///   Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
  ///
  /// * [String] delegationState:
  ///   Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
  ///
  /// * [String] candidateGroups:
  ///   Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
  ///
  /// * [String] candidateGroupsExpression:
  ///   Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withCandidateUsers:
  ///   Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateUsers:
  ///   Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] active:
  ///   Only include active tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] caseInstanceVariables:
  ///   Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
  ///
  /// * [String] parentTaskId:
  ///   Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
  Future<CountResultDto?> getTasksCount({ String? taskId, String? taskIdIn, String? processInstanceId, String? processInstanceIdIn, String? processInstanceBusinessKey, String? processInstanceBusinessKeyExpression, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? processInstanceBusinessKeyLikeExpression, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionKeyIn, String? processDefinitionName, String? processDefinitionNameLike, String? executionId, String? caseInstanceId, String? caseInstanceBusinessKey, String? caseInstanceBusinessKeyLike, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? caseDefinitionNameLike, String? caseExecutionId, String? activityInstanceIdIn, String? tenantIdIn, bool? withoutTenantId, String? assignee, String? assigneeExpression, String? assigneeLike, String? assigneeLikeExpression, String? assigneeIn, String? assigneeNotIn, String? owner, String? ownerExpression, String? candidateGroup, String? candidateGroupExpression, String? candidateUser, String? candidateUserExpression, bool? includeAssignedTasks, String? involvedUser, String? involvedUserExpression, bool? assigned, bool? unassigned, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDefinitionKeyLike, String? name, String? nameNotEqual, String? nameLike, String? nameNotLike, String? description, String? descriptionLike, int? priority, int? maxPriority, int? minPriority, String? dueDate, String? dueDateExpression, String? dueAfter, String? dueAfterExpression, String? dueBefore, String? dueBeforeExpression, bool? withoutDueDate, String? followUpDate, String? followUpDateExpression, String? followUpAfter, String? followUpAfterExpression, String? followUpBefore, String? followUpBeforeExpression, String? followUpBeforeOrNotExistent, String? followUpBeforeOrNotExistentExpression, String? createdOn, String? createdOnExpression, String? createdAfter, String? createdAfterExpression, String? createdBefore, String? createdBeforeExpression, String? updatedAfter, String? updatedAfterExpression, String? delegationState, String? candidateGroups, String? candidateGroupsExpression, bool? withCandidateGroups, bool? withoutCandidateGroups, bool? withCandidateUsers, bool? withoutCandidateUsers, bool? active, bool? suspended, String? taskVariables, String? processVariables, String? caseInstanceVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? parentTaskId, }) async {
    final response = await getTasksCountWithHttpInfo( taskId: taskId, taskIdIn: taskIdIn, processInstanceId: processInstanceId, processInstanceIdIn: processInstanceIdIn, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyExpression: processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression: processInstanceBusinessKeyLikeExpression, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionKeyIn: processDefinitionKeyIn, processDefinitionName: processDefinitionName, processDefinitionNameLike: processDefinitionNameLike, executionId: executionId, caseInstanceId: caseInstanceId, caseInstanceBusinessKey: caseInstanceBusinessKey, caseInstanceBusinessKeyLike: caseInstanceBusinessKeyLike, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseDefinitionName: caseDefinitionName, caseDefinitionNameLike: caseDefinitionNameLike, caseExecutionId: caseExecutionId, activityInstanceIdIn: activityInstanceIdIn, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, assignee: assignee, assigneeExpression: assigneeExpression, assigneeLike: assigneeLike, assigneeLikeExpression: assigneeLikeExpression, assigneeIn: assigneeIn, assigneeNotIn: assigneeNotIn, owner: owner, ownerExpression: ownerExpression, candidateGroup: candidateGroup, candidateGroupExpression: candidateGroupExpression, candidateUser: candidateUser, candidateUserExpression: candidateUserExpression, includeAssignedTasks: includeAssignedTasks, involvedUser: involvedUser, involvedUserExpression: involvedUserExpression, assigned: assigned, unassigned: unassigned, taskDefinitionKey: taskDefinitionKey, taskDefinitionKeyIn: taskDefinitionKeyIn, taskDefinitionKeyLike: taskDefinitionKeyLike, name: name, nameNotEqual: nameNotEqual, nameLike: nameLike, nameNotLike: nameNotLike, description: description, descriptionLike: descriptionLike, priority: priority, maxPriority: maxPriority, minPriority: minPriority, dueDate: dueDate, dueDateExpression: dueDateExpression, dueAfter: dueAfter, dueAfterExpression: dueAfterExpression, dueBefore: dueBefore, dueBeforeExpression: dueBeforeExpression, withoutDueDate: withoutDueDate, followUpDate: followUpDate, followUpDateExpression: followUpDateExpression, followUpAfter: followUpAfter, followUpAfterExpression: followUpAfterExpression, followUpBefore: followUpBefore, followUpBeforeExpression: followUpBeforeExpression, followUpBeforeOrNotExistent: followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression: followUpBeforeOrNotExistentExpression, createdOn: createdOn, createdOnExpression: createdOnExpression, createdAfter: createdAfter, createdAfterExpression: createdAfterExpression, createdBefore: createdBefore, createdBeforeExpression: createdBeforeExpression, updatedAfter: updatedAfter, updatedAfterExpression: updatedAfterExpression, delegationState: delegationState, candidateGroups: candidateGroups, candidateGroupsExpression: candidateGroupsExpression, withCandidateGroups: withCandidateGroups, withoutCandidateGroups: withoutCandidateGroups, withCandidateUsers: withCandidateUsers, withoutCandidateUsers: withoutCandidateUsers, active: active, suspended: suspended, taskVariables: taskVariables, processVariables: processVariables, caseInstanceVariables: caseInstanceVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, parentTaskId: parentTaskId, );
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

  /// Handle BPMN Error
  ///
  /// Reports a business error in the context of a running task by id. The error code must be specified to identify the BPMN error handler. See the documentation for [Reporting Bpmn Error](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-error) in User Tasks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task a BPMN error is reported for.
  ///
  /// * [TaskBpmnErrorDto] taskBpmnErrorDto:
  Future<Response> handleBpmnErrorWithHttpInfo(String id, { TaskBpmnErrorDto? taskBpmnErrorDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/bpmnError'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = taskBpmnErrorDto;

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

  /// Handle BPMN Error
  ///
  /// Reports a business error in the context of a running task by id. The error code must be specified to identify the BPMN error handler. See the documentation for [Reporting Bpmn Error](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-error) in User Tasks.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task a BPMN error is reported for.
  ///
  /// * [TaskBpmnErrorDto] taskBpmnErrorDto:
  Future<void> handleBpmnError(String id, { TaskBpmnErrorDto? taskBpmnErrorDto, }) async {
    final response = await handleBpmnErrorWithHttpInfo(id,  taskBpmnErrorDto: taskBpmnErrorDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Handle BPMN Escalation
  ///
  /// Reports an escalation in the context of a running task by id. The escalation code must be specified to identify the escalation handler. See the documentation for [Reporting Bpmn Escalation](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-escalation) in User Tasks.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task in which context a BPMN escalation is reported.
  ///
  /// * [TaskEscalationDto] taskEscalationDto:
  Future<Response> handleEscalationWithHttpInfo(String id, { TaskEscalationDto? taskEscalationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/bpmnEscalation'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = taskEscalationDto;

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

  /// Handle BPMN Escalation
  ///
  /// Reports an escalation in the context of a running task by id. The escalation code must be specified to identify the escalation handler. See the documentation for [Reporting Bpmn Escalation](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-escalation) in User Tasks.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task in which context a BPMN escalation is reported.
  ///
  /// * [TaskEscalationDto] taskEscalationDto:
  Future<void> handleEscalation(String id, { TaskEscalationDto? taskEscalationDto, }) async {
    final response = await handleEscalationWithHttpInfo(id,  taskEscalationDto: taskEscalationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get List (POST)
  ///
  /// Queries for tasks that fulfill a given filter. This method is slightly more powerful than the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/get-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query-count/) method.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
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
  /// * [TaskQueryDto] taskQueryDto:
  Future<Response> queryTasksWithHttpInfo({ int? firstResult, int? maxResults, TaskQueryDto? taskQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task';

    // ignore: prefer_final_locals
    Object? postBody = taskQueryDto;

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
  /// Queries for tasks that fulfill a given filter. This method is slightly more powerful than the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/get-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query-count/) method.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [TaskQueryDto] taskQueryDto:
  Future<List<TaskDto>?> queryTasks({ int? firstResult, int? maxResults, TaskQueryDto? taskQueryDto, }) async {
    final response = await queryTasksWithHttpInfo( firstResult: firstResult, maxResults: maxResults, taskQueryDto: taskQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TaskDto>') as List)
        .cast<TaskDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count (POST)
  ///
  /// Retrieves the number of tasks that fulfill the given filter. Corresponds to the size of the result set of the [Get Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query/) method and takes the same parameters.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TaskQueryDto] taskQueryDto:
  Future<Response> queryTasksCountWithHttpInfo({ TaskQueryDto? taskQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/count';

    // ignore: prefer_final_locals
    Object? postBody = taskQueryDto;

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
  /// Retrieves the number of tasks that fulfill the given filter. Corresponds to the size of the result set of the [Get Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query/) method and takes the same parameters.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
  ///
  /// Parameters:
  ///
  /// * [TaskQueryDto] taskQueryDto:
  Future<CountResultDto?> queryTasksCount({ TaskQueryDto? taskQueryDto, }) async {
    final response = await queryTasksCountWithHttpInfo( taskQueryDto: taskQueryDto, );
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

  /// Resolve
  ///
  /// Resolves a task and updates execution variables.  Resolving a task marks that the assignee is done with the task delegated to them, and that it can be sent back to the owner. Can only be executed when the task has been delegated. The assignee will be set to the owner, who performed the delegation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to resolve.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<Response> resolveWithHttpInfo(String id, { CompleteTaskDto? completeTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/resolve'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = completeTaskDto;

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

  /// Resolve
  ///
  /// Resolves a task and updates execution variables.  Resolving a task marks that the assignee is done with the task delegated to them, and that it can be sent back to the owner. Can only be executed when the task has been delegated. The assignee will be set to the owner, who performed the delegation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to resolve.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<void> resolve(String id, { CompleteTaskDto? completeTaskDto, }) async {
    final response = await resolveWithHttpInfo(id,  completeTaskDto: completeTaskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Assignee
  ///
  /// Changes the assignee of a task to a specific user.  **Note:** The difference with the [Claim Task](https://docs.camunda.org/manual/7.20/reference/rest/task/post-claim/) method is that this method does not check if the task already has a user assigned to it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set the assignee for.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that will be the assignee of the task.
  Future<Response> setAssigneeWithHttpInfo(String id, { UserIdDto? userIdDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/assignee'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = userIdDto;

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

  /// Set Assignee
  ///
  /// Changes the assignee of a task to a specific user.  **Note:** The difference with the [Claim Task](https://docs.camunda.org/manual/7.20/reference/rest/task/post-claim/) method is that this method does not check if the task already has a user assigned to it.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to set the assignee for.
  ///
  /// * [UserIdDto] userIdDto:
  ///   Provide the id of the user that will be the assignee of the task.
  Future<void> setAssignee(String id, { UserIdDto? userIdDto, }) async {
    final response = await setAssigneeWithHttpInfo(id,  userIdDto: userIdDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Submit Form
  ///
  /// Completes a task and updates process variables using a form submit. There are two difference between this method and the `complete` method:  * If the task is in state `PENDING` - i.e., has been delegated before, it is not completed but resolved. Otherwise it will be completed. * If the task has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See the [Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/_index/#generated-task-forms) section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/) for more information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to submit the form for.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<Response> submitWithHttpInfo(String id, { CompleteTaskDto? completeTaskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/submit-form'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = completeTaskDto;

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

  /// Submit Form
  ///
  /// Completes a task and updates process variables using a form submit. There are two difference between this method and the `complete` method:  * If the task is in state `PENDING` - i.e., has been delegated before, it is not completed but resolved. Otherwise it will be completed. * If the task has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See the [Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/_index/#generated-task-forms) section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/) for more information.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to submit the form for.
  ///
  /// * [CompleteTaskDto] completeTaskDto:
  Future<Map<String, VariableValueDto>?> submit(String id, { CompleteTaskDto? completeTaskDto, }) async {
    final response = await submitWithHttpInfo(id,  completeTaskDto: completeTaskDto, );
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

  /// Unclaim
  ///
  /// Resets a task's assignee. If successful, the task is not assigned to a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to unclaim.
  Future<Response> unclaimWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/unclaim'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Unclaim
  ///
  /// Resets a task's assignee. If successful, the task is not assigned to a user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to unclaim.
  Future<void> unclaim(String id,) async {
    final response = await unclaimWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update
  ///
  /// Updates a task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be updated.
  ///
  /// * [TaskDto] taskDto:
  Future<Response> updateTaskWithHttpInfo(String id, { TaskDto? taskDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = taskDto;

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

  /// Update
  ///
  /// Updates a task.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to be updated.
  ///
  /// * [TaskDto] taskDto:
  Future<void> updateTask(String id, { TaskDto? taskDto, }) async {
    final response = await updateTaskWithHttpInfo(id,  taskDto: taskDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
