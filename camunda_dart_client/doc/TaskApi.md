# openapi.api.TaskApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claim**](TaskApi.md#claim) | **POST** /task/{id}/claim | Claim
[**complete**](TaskApi.md#complete) | **POST** /task/{id}/complete | Complete
[**createTask**](TaskApi.md#createtask) | **POST** /task/create | Create
[**delegateTask**](TaskApi.md#delegatetask) | **POST** /task/{id}/delegate | Delegate
[**deleteTask**](TaskApi.md#deletetask) | **DELETE** /task/{id} | Delete
[**getDeployedForm**](TaskApi.md#getdeployedform) | **GET** /task/{id}/deployed-form | Get Deployed Form
[**getForm**](TaskApi.md#getform) | **GET** /task/{id}/form | Get Form Key
[**getFormVariables**](TaskApi.md#getformvariables) | **GET** /task/{id}/form-variables | Get Task Form Variables
[**getRenderedForm**](TaskApi.md#getrenderedform) | **GET** /task/{id}/rendered-form | Get Rendered Form
[**getTask**](TaskApi.md#gettask) | **GET** /task/{id} | Get
[**getTaskCountByCandidateGroup**](TaskApi.md#gettaskcountbycandidategroup) | **GET** /task/report/candidate-group-count | Get Task Count By Candidate Group
[**getTasks**](TaskApi.md#gettasks) | **GET** /task | Get List
[**getTasksCount**](TaskApi.md#gettaskscount) | **GET** /task/count | Get List Count
[**handleBpmnError**](TaskApi.md#handlebpmnerror) | **POST** /task/{id}/bpmnError | Handle BPMN Error
[**handleEscalation**](TaskApi.md#handleescalation) | **POST** /task/{id}/bpmnEscalation | Handle BPMN Escalation
[**queryTasks**](TaskApi.md#querytasks) | **POST** /task | Get List (POST)
[**queryTasksCount**](TaskApi.md#querytaskscount) | **POST** /task/count | Get List Count (POST)
[**resolve**](TaskApi.md#resolve) | **POST** /task/{id}/resolve | Resolve
[**setAssignee**](TaskApi.md#setassignee) | **POST** /task/{id}/assignee | Set Assignee
[**submit**](TaskApi.md#submit) | **POST** /task/{id}/submit-form | Submit Form
[**unclaim**](TaskApi.md#unclaim) | **POST** /task/{id}/unclaim | Unclaim
[**updateTask**](TaskApi.md#updatetask) | **PUT** /task/{id} | Update


# **claim**
> claim(id, userIdDto)

Claim

Claims a task for a specific user.  **Note:** The difference with the [Set Assignee](https://docs.camunda.org/manual/7.20/reference/rest/task/post-assignee/) method is that here a check is performed to see if the task already has a user assigned to it.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to claim.
final userIdDto = UserIdDto(); // UserIdDto | Provide the id of the user that claims the task.

try {
    api_instance.claim(id, userIdDto);
} catch (e) {
    print('Exception when calling TaskApi->claim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to claim. | 
 **userIdDto** | [**UserIdDto**](UserIdDto.md)| Provide the id of the user that claims the task. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **complete**
> Map<String, VariableValueDto> complete(id, completeTaskDto)

Complete

Completes a task and updates process variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to complete.
final completeTaskDto = CompleteTaskDto(); // CompleteTaskDto | 

try {
    final result = api_instance.complete(id, completeTaskDto);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->complete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to complete. | 
 **completeTaskDto** | [**CompleteTaskDto**](CompleteTaskDto.md)|  | [optional] 

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTask**
> createTask(taskDto)

Create

Creates a new task.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final taskDto = TaskDto(); // TaskDto | 

try {
    api_instance.createTask(taskDto);
} catch (e) {
    print('Exception when calling TaskApi->createTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskDto** | [**TaskDto**](TaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delegateTask**
> delegateTask(id, userIdDto)

Delegate

Delegates a task to another user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to delegate.
final userIdDto = UserIdDto(); // UserIdDto | Provide the id of the user that the task should be delegated to.

try {
    api_instance.delegateTask(id, userIdDto);
} catch (e) {
    print('Exception when calling TaskApi->delegateTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to delegate. | 
 **userIdDto** | [**UserIdDto**](UserIdDto.md)| Provide the id of the user that the task should be delegated to. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTask**
> deleteTask(id)

Delete

Removes a task by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to be removed.

try {
    api_instance.deleteTask(id);
} catch (e) {
    print('Exception when calling TaskApi->deleteTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to be removed. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployedForm**
> MultipartFile getDeployedForm(id)

Get Deployed Form

Retrieves the deployed form that is referenced from a given task. For further information please refer to the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to get the deployed form for.

try {
    final result = api_instance.getDeployedForm(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getDeployedForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to get the deployed form for. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getForm**
> FormDto getForm(id)

Get Form Key

Retrieves the form key for a task. The form key corresponds to the `FormData#formKey` property in the engine. This key can be used to do task-specific form rendering in client applications. Additionally, the context path of the containing process application is returned.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to retrieve the form for.

try {
    final result = api_instance.getForm(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to retrieve the form for. | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFormVariables**
> Map<String, VariableValueDto> getFormVariables(id, variableNames, deserializeValues)

Get Task Form Variables

Retrieves the form variables for a task. The form variables take form data specified on the task into account. If form fields are defined, the variable types and default values of the form fields are taken into account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to retrieve the variables for.
final variableNames = variableNames_example; // String | A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getFormVariables(id, variableNames, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getFormVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to retrieve the variables for. | 
 **variableNames** | **String**| A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRenderedForm**
> MultipartFile getRenderedForm(id)

Get Rendered Form

Retrieves the rendered form for a task. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to get the rendered form for.

try {
    final result = api_instance.getRenderedForm(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getRenderedForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to get the rendered form for. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTask**
> TaskDto getTask(id)

Get

Retrieves a task by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to be retrieved.

try {
    final result = api_instance.getTask(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to be retrieved. | 

### Return type

[**TaskDto**](TaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTaskCountByCandidateGroup**
> List<TaskCountByCandidateGroupResultDto> getTaskCountByCandidateGroup()

Get Task Count By Candidate Group

Retrieves the number of tasks for each candidate group.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();

try {
    final result = api_instance.getTaskCountByCandidateGroup();
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getTaskCountByCandidateGroup: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TaskCountByCandidateGroupResultDto>**](TaskCountByCandidateGroupResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/csv, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTasks**
> List<TaskDto> getTasks(taskId, taskIdIn, processInstanceId, processInstanceIdIn, processInstanceBusinessKey, processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, executionId, caseInstanceId, caseInstanceBusinessKey, caseInstanceBusinessKeyLike, caseDefinitionId, caseDefinitionKey, caseDefinitionName, caseDefinitionNameLike, caseExecutionId, activityInstanceIdIn, tenantIdIn, withoutTenantId, assignee, assigneeExpression, assigneeLike, assigneeLikeExpression, assigneeIn, assigneeNotIn, owner, ownerExpression, candidateGroup, candidateGroupExpression, candidateUser, candidateUserExpression, includeAssignedTasks, involvedUser, involvedUserExpression, assigned, unassigned, taskDefinitionKey, taskDefinitionKeyIn, taskDefinitionKeyLike, name, nameNotEqual, nameLike, nameNotLike, description, descriptionLike, priority, maxPriority, minPriority, dueDate, dueDateExpression, dueAfter, dueAfterExpression, dueBefore, dueBeforeExpression, withoutDueDate, followUpDate, followUpDateExpression, followUpAfter, followUpAfterExpression, followUpBefore, followUpBeforeExpression, followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression, createdOn, createdOnExpression, createdAfter, createdAfterExpression, createdBefore, createdBeforeExpression, updatedAfter, updatedAfterExpression, delegationState, candidateGroups, candidateGroupsExpression, withCandidateGroups, withoutCandidateGroups, withCandidateUsers, withoutCandidateUsers, active, suspended, taskVariables, processVariables, caseInstanceVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, parentTaskId, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for tasks that fulfill a given filter. The size of the result set can be retrieved by using the Get Task Count method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final taskId = taskId_example; // String | Restrict to task with the given id.
final taskIdIn = taskIdIn_example; // String | Restrict to tasks with any of the given ids.
final processInstanceId = processInstanceId_example; // String | Restrict to tasks that belong to process instances with the given id.
final processInstanceIdIn = processInstanceIdIn_example; // String | Restrict to tasks that belong to process instances with the given ids.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Restrict to tasks that belong to process instances with the given business key.
final processInstanceBusinessKeyExpression = processInstanceBusinessKeyExpression_example; // String | Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
final processInstanceBusinessKeyLikeExpression = processInstanceBusinessKeyLikeExpression_example; // String | Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final processDefinitionId = processDefinitionId_example; // String | Restrict to tasks that belong to a process definition with the given id.
final processDefinitionKey = processDefinitionKey_example; // String | Restrict to tasks that belong to a process definition with the given key.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
final processDefinitionName = processDefinitionName_example; // String | Restrict to tasks that belong to a process definition with the given name.
final processDefinitionNameLike = processDefinitionNameLike_example; // String | Restrict to tasks that have a process definition name that has the parameter value as  a substring.
final executionId = executionId_example; // String | Restrict to tasks that belong to an execution with the given id.
final caseInstanceId = caseInstanceId_example; // String | Restrict to tasks that belong to case instances with the given id.
final caseInstanceBusinessKey = caseInstanceBusinessKey_example; // String | Restrict to tasks that belong to case instances with the given business key.
final caseInstanceBusinessKeyLike = caseInstanceBusinessKeyLike_example; // String | Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
final caseDefinitionId = caseDefinitionId_example; // String | Restrict to tasks that belong to a case definition with the given id.
final caseDefinitionKey = caseDefinitionKey_example; // String | Restrict to tasks that belong to a case definition with the given key.
final caseDefinitionName = caseDefinitionName_example; // String | Restrict to tasks that belong to a case definition with the given name.
final caseDefinitionNameLike = caseDefinitionNameLike_example; // String | Restrict to tasks that have a case definition name that has the parameter value as a  substring.
final caseExecutionId = caseExecutionId_example; // String | Restrict to tasks that belong to a case execution with the given id.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include tasks which belong to one of the passed and comma-separated  tenant ids.
final withoutTenantId = true; // bool | Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
final assignee = assignee_example; // String | Restrict to tasks that the given user is assigned to.
final assigneeExpression = assigneeExpression_example; // String | Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final assigneeLike = assigneeLike_example; // String | Restrict to tasks that have an assignee that has the parameter  value as a substring.
final assigneeLikeExpression = assigneeLikeExpression_example; // String | Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final assigneeIn = assigneeIn_example; // String | Only include tasks which are assigned to one of the passed and  comma-separated user ids.
final assigneeNotIn = assigneeNotIn_example; // String | Only include tasks which are not assigned to one of the passed and comma-separated user ids.
final owner = owner_example; // String | Restrict to tasks that the given user owns.
final ownerExpression = ownerExpression_example; // String | Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final candidateGroup = candidateGroup_example; // String | Only include tasks that are offered to the given group.
final candidateGroupExpression = candidateGroupExpression_example; // String | Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final candidateUser = candidateUser_example; // String | Only include tasks that are offered to the given user or to one of his groups.
final candidateUserExpression = candidateUserExpression_example; // String | Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final includeAssignedTasks = true; // bool | Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
final involvedUser = involvedUser_example; // String | Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
final involvedUserExpression = involvedUserExpression_example; // String | Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
final assigned = true; // bool | If set to `true`, restricts the query to all tasks that are assigned.
final unassigned = true; // bool | If set to `true`, restricts the query to all tasks that are unassigned.
final taskDefinitionKey = taskDefinitionKey_example; // String | Restrict to tasks that have the given key.
final taskDefinitionKeyIn = taskDefinitionKeyIn_example; // String | Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
final taskDefinitionKeyLike = taskDefinitionKeyLike_example; // String | Restrict to tasks that have a key that has the parameter value as a substring.
final name = name_example; // String | Restrict to tasks that have the given name.
final nameNotEqual = nameNotEqual_example; // String | Restrict to tasks that do not have the given name.
final nameLike = nameLike_example; // String | Restrict to tasks that have a name with the given parameter value as substring.
final nameNotLike = nameNotLike_example; // String | Restrict to tasks that do not have a name with the given parameter value as substring.
final description = description_example; // String | Restrict to tasks that have the given description.
final descriptionLike = descriptionLike_example; // String | Restrict to tasks that have a description that has the parameter value as a substring.
final priority = 56; // int | Restrict to tasks that have the given priority.
final maxPriority = 56; // int | Restrict to tasks that have a lower or equal priority.
final minPriority = 56; // int | Restrict to tasks that have a higher or equal priority.
final dueDate = dueDate_example; // String | Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final dueDateExpression = dueDateExpression_example; // String | Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final dueAfter = dueAfter_example; // String | Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
final dueAfterExpression = dueAfterExpression_example; // String | Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final dueBefore = dueBefore_example; // String | Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
final dueBeforeExpression = dueBeforeExpression_example; // String | Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final withoutDueDate = true; // bool | Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
final followUpDate = followUpDate_example; // String | Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
final followUpDateExpression = followUpDateExpression_example; // String | Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpAfter = followUpAfter_example; // String | Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
final followUpAfterExpression = followUpAfterExpression_example; // String | Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpBefore = followUpBefore_example; // String | Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
final followUpBeforeExpression = followUpBeforeExpression_example; // String | Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpBeforeOrNotExistent = followUpBeforeOrNotExistent_example; // String | Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
final followUpBeforeOrNotExistentExpression = followUpBeforeOrNotExistentExpression_example; // String | Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdOn = createdOn_example; // String | Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
final createdOnExpression = createdOnExpression_example; // String | Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdAfter = createdAfter_example; // String | Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
final createdAfterExpression = createdAfterExpression_example; // String | Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdBefore = createdBefore_example; // String | Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
final createdBeforeExpression = createdBeforeExpression_example; // String | Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final updatedAfter = updatedAfter_example; // String | Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
final updatedAfterExpression = updatedAfterExpression_example; // String | Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final delegationState = delegationState_example; // String | Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
final candidateGroups = candidateGroups_example; // String | Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
final candidateGroupsExpression = candidateGroupsExpression_example; // String | Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
final withCandidateGroups = true; // bool | Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateGroups = true; // bool | Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
final withCandidateUsers = true; // bool | Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateUsers = true; // bool | Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
final active = true; // bool | Only include active tasks. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
final taskVariables = taskVariables_example; // String | Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
final caseInstanceVariables = caseInstanceVariables_example; // String | Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
final parentTaskId = parentTaskId_example; // String | Restrict query to all tasks that are sub tasks of the given task. Takes a task id.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getTasks(taskId, taskIdIn, processInstanceId, processInstanceIdIn, processInstanceBusinessKey, processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, executionId, caseInstanceId, caseInstanceBusinessKey, caseInstanceBusinessKeyLike, caseDefinitionId, caseDefinitionKey, caseDefinitionName, caseDefinitionNameLike, caseExecutionId, activityInstanceIdIn, tenantIdIn, withoutTenantId, assignee, assigneeExpression, assigneeLike, assigneeLikeExpression, assigneeIn, assigneeNotIn, owner, ownerExpression, candidateGroup, candidateGroupExpression, candidateUser, candidateUserExpression, includeAssignedTasks, involvedUser, involvedUserExpression, assigned, unassigned, taskDefinitionKey, taskDefinitionKeyIn, taskDefinitionKeyLike, name, nameNotEqual, nameLike, nameNotLike, description, descriptionLike, priority, maxPriority, minPriority, dueDate, dueDateExpression, dueAfter, dueAfterExpression, dueBefore, dueBeforeExpression, withoutDueDate, followUpDate, followUpDateExpression, followUpAfter, followUpAfterExpression, followUpBefore, followUpBeforeExpression, followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression, createdOn, createdOnExpression, createdAfter, createdAfterExpression, createdBefore, createdBeforeExpression, updatedAfter, updatedAfterExpression, delegationState, candidateGroups, candidateGroupsExpression, withCandidateGroups, withoutCandidateGroups, withCandidateUsers, withoutCandidateUsers, active, suspended, taskVariables, processVariables, caseInstanceVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, parentTaskId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| Restrict to task with the given id. | [optional] 
 **taskIdIn** | **String**| Restrict to tasks with any of the given ids. | [optional] 
 **processInstanceId** | **String**| Restrict to tasks that belong to process instances with the given id. | [optional] 
 **processInstanceIdIn** | **String**| Restrict to tasks that belong to process instances with the given ids. | [optional] 
 **processInstanceBusinessKey** | **String**| Restrict to tasks that belong to process instances with the given business key. | [optional] 
 **processInstanceBusinessKeyExpression** | **String**| Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list. | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Restrict to tasks that have a process instance business key that has the parameter  value as a substring. | [optional] 
 **processInstanceBusinessKeyLikeExpression** | **String**| Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **processDefinitionId** | **String**| Restrict to tasks that belong to a process definition with the given id. | [optional] 
 **processDefinitionKey** | **String**| Restrict to tasks that belong to a process definition with the given key. | [optional] 
 **processDefinitionKeyIn** | **String**| Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list. | [optional] 
 **processDefinitionName** | **String**| Restrict to tasks that belong to a process definition with the given name. | [optional] 
 **processDefinitionNameLike** | **String**| Restrict to tasks that have a process definition name that has the parameter value as  a substring. | [optional] 
 **executionId** | **String**| Restrict to tasks that belong to an execution with the given id. | [optional] 
 **caseInstanceId** | **String**| Restrict to tasks that belong to case instances with the given id. | [optional] 
 **caseInstanceBusinessKey** | **String**| Restrict to tasks that belong to case instances with the given business key. | [optional] 
 **caseInstanceBusinessKeyLike** | **String**| Restrict to tasks that have a case instance business key that has the parameter value  as a substring. | [optional] 
 **caseDefinitionId** | **String**| Restrict to tasks that belong to a case definition with the given id. | [optional] 
 **caseDefinitionKey** | **String**| Restrict to tasks that belong to a case definition with the given key. | [optional] 
 **caseDefinitionName** | **String**| Restrict to tasks that belong to a case definition with the given name. | [optional] 
 **caseDefinitionNameLike** | **String**| Restrict to tasks that have a case definition name that has the parameter value as a  substring. | [optional] 
 **caseExecutionId** | **String**| Restrict to tasks that belong to a case execution with the given id. | [optional] 
 **activityInstanceIdIn** | **String**| Only include tasks which belong to one of the passed and comma-separated activity  instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include tasks which belong to one of the passed and comma-separated  tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior. | [optional] [default to false]
 **assignee** | **String**| Restrict to tasks that the given user is assigned to. | [optional] 
 **assigneeExpression** | **String**| Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **assigneeLike** | **String**| Restrict to tasks that have an assignee that has the parameter  value as a substring. | [optional] 
 **assigneeLikeExpression** | **String**| Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **assigneeIn** | **String**| Only include tasks which are assigned to one of the passed and  comma-separated user ids. | [optional] 
 **assigneeNotIn** | **String**| Only include tasks which are not assigned to one of the passed and comma-separated user ids. | [optional] 
 **owner** | **String**| Restrict to tasks that the given user owns. | [optional] 
 **ownerExpression** | **String**| Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **candidateGroup** | **String**| Only include tasks that are offered to the given group. | [optional] 
 **candidateGroupExpression** | **String**| Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **candidateUser** | **String**| Only include tasks that are offered to the given user or to one of his groups. | [optional] 
 **candidateUserExpression** | **String**| Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **includeAssignedTasks** | **bool**| Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s). | [optional] [default to false]
 **involvedUser** | **String**| Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee). | [optional] 
 **involvedUserExpression** | **String**| Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. | [optional] 
 **assigned** | **bool**| If set to `true`, restricts the query to all tasks that are assigned. | [optional] [default to false]
 **unassigned** | **bool**| If set to `true`, restricts the query to all tasks that are unassigned. | [optional] [default to false]
 **taskDefinitionKey** | **String**| Restrict to tasks that have the given key. | [optional] 
 **taskDefinitionKeyIn** | **String**| Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list. | [optional] 
 **taskDefinitionKeyLike** | **String**| Restrict to tasks that have a key that has the parameter value as a substring. | [optional] 
 **name** | **String**| Restrict to tasks that have the given name. | [optional] 
 **nameNotEqual** | **String**| Restrict to tasks that do not have the given name. | [optional] 
 **nameLike** | **String**| Restrict to tasks that have a name with the given parameter value as substring. | [optional] 
 **nameNotLike** | **String**| Restrict to tasks that do not have a name with the given parameter value as substring. | [optional] 
 **description** | **String**| Restrict to tasks that have the given description. | [optional] 
 **descriptionLike** | **String**| Restrict to tasks that have a description that has the parameter value as a substring. | [optional] 
 **priority** | **int**| Restrict to tasks that have the given priority. | [optional] 
 **maxPriority** | **int**| Restrict to tasks that have a lower or equal priority. | [optional] 
 **minPriority** | **int**| Restrict to tasks that have a higher or equal priority. | [optional] 
 **dueDate** | **String**| Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **dueDateExpression** | **String**| Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **dueAfter** | **String**| Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`. | [optional] 
 **dueAfterExpression** | **String**| Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **dueBefore** | **String**| Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`. | [optional] 
 **dueBeforeExpression** | **String**| Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **withoutDueDate** | **bool**| Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior. | [optional] [default to false]
 **followUpDate** | **String**| Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`. | [optional] 
 **followUpDateExpression** | **String**| Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpAfter** | **String**| Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`. | [optional] 
 **followUpAfterExpression** | **String**| Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpBefore** | **String**| Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`. | [optional] 
 **followUpBeforeExpression** | **String**| Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpBeforeOrNotExistent** | **String**| Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date. | [optional] 
 **followUpBeforeOrNotExistentExpression** | **String**| Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdOn** | **String**| Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`. | [optional] 
 **createdOnExpression** | **String**| Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdAfter** | **String**| Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`. | [optional] 
 **createdAfterExpression** | **String**| Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdBefore** | **String**| Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`. | [optional] 
 **createdBeforeExpression** | **String**| Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **updatedAfter** | **String**| Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`. | [optional] 
 **updatedAfterExpression** | **String**| Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **delegationState** | **String**| Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`. | [optional] 
 **candidateGroups** | **String**| Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`. | [optional] 
 **candidateGroupsExpression** | **String**| Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings. | [optional] 
 **withCandidateGroups** | **bool**| Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withoutCandidateGroups** | **bool**| Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withCandidateUsers** | **bool**| Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withoutCandidateUsers** | **bool**| Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **active** | **bool**| Only include active tasks. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **suspended** | **bool**| Only include suspended tasks. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **taskVariables** | **String**| Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **caseInstanceVariables** | **String**| Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal. | [optional] [default to false]
 **variableValuesIgnoreCase** | **bool**| Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal. | [optional] [default to false]
 **parentTaskId** | **String**| Restrict query to all tasks that are sub tasks of the given task. Takes a task id. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<TaskDto>**](TaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTasksCount**
> CountResultDto getTasksCount(taskId, taskIdIn, processInstanceId, processInstanceIdIn, processInstanceBusinessKey, processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, executionId, caseInstanceId, caseInstanceBusinessKey, caseInstanceBusinessKeyLike, caseDefinitionId, caseDefinitionKey, caseDefinitionName, caseDefinitionNameLike, caseExecutionId, activityInstanceIdIn, tenantIdIn, withoutTenantId, assignee, assigneeExpression, assigneeLike, assigneeLikeExpression, assigneeIn, assigneeNotIn, owner, ownerExpression, candidateGroup, candidateGroupExpression, candidateUser, candidateUserExpression, includeAssignedTasks, involvedUser, involvedUserExpression, assigned, unassigned, taskDefinitionKey, taskDefinitionKeyIn, taskDefinitionKeyLike, name, nameNotEqual, nameLike, nameNotLike, description, descriptionLike, priority, maxPriority, minPriority, dueDate, dueDateExpression, dueAfter, dueAfterExpression, dueBefore, dueBeforeExpression, withoutDueDate, followUpDate, followUpDateExpression, followUpAfter, followUpAfterExpression, followUpBefore, followUpBeforeExpression, followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression, createdOn, createdOnExpression, createdAfter, createdAfterExpression, createdBefore, createdBeforeExpression, updatedAfter, updatedAfterExpression, delegationState, candidateGroups, candidateGroupsExpression, withCandidateGroups, withoutCandidateGroups, withCandidateUsers, withoutCandidateUsers, active, suspended, taskVariables, processVariables, caseInstanceVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, parentTaskId)

Get List Count

Retrieves the number of tasks that fulfill a provided filter. Corresponds to the size of the result set when using the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/) method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final taskId = taskId_example; // String | Restrict to task with the given id.
final taskIdIn = taskIdIn_example; // String | Restrict to tasks with any of the given ids.
final processInstanceId = processInstanceId_example; // String | Restrict to tasks that belong to process instances with the given id.
final processInstanceIdIn = processInstanceIdIn_example; // String | Restrict to tasks that belong to process instances with the given ids.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Restrict to tasks that belong to process instances with the given business key.
final processInstanceBusinessKeyExpression = processInstanceBusinessKeyExpression_example; // String | Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list.
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Restrict to tasks that have a process instance business key that has the parameter  value as a substring.
final processInstanceBusinessKeyLikeExpression = processInstanceBusinessKeyLikeExpression_example; // String | Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final processDefinitionId = processDefinitionId_example; // String | Restrict to tasks that belong to a process definition with the given id.
final processDefinitionKey = processDefinitionKey_example; // String | Restrict to tasks that belong to a process definition with the given key.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list.
final processDefinitionName = processDefinitionName_example; // String | Restrict to tasks that belong to a process definition with the given name.
final processDefinitionNameLike = processDefinitionNameLike_example; // String | Restrict to tasks that have a process definition name that has the parameter value as  a substring.
final executionId = executionId_example; // String | Restrict to tasks that belong to an execution with the given id.
final caseInstanceId = caseInstanceId_example; // String | Restrict to tasks that belong to case instances with the given id.
final caseInstanceBusinessKey = caseInstanceBusinessKey_example; // String | Restrict to tasks that belong to case instances with the given business key.
final caseInstanceBusinessKeyLike = caseInstanceBusinessKeyLike_example; // String | Restrict to tasks that have a case instance business key that has the parameter value  as a substring.
final caseDefinitionId = caseDefinitionId_example; // String | Restrict to tasks that belong to a case definition with the given id.
final caseDefinitionKey = caseDefinitionKey_example; // String | Restrict to tasks that belong to a case definition with the given key.
final caseDefinitionName = caseDefinitionName_example; // String | Restrict to tasks that belong to a case definition with the given name.
final caseDefinitionNameLike = caseDefinitionNameLike_example; // String | Restrict to tasks that have a case definition name that has the parameter value as a  substring.
final caseExecutionId = caseExecutionId_example; // String | Restrict to tasks that belong to a case execution with the given id.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include tasks which belong to one of the passed and comma-separated activity  instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include tasks which belong to one of the passed and comma-separated  tenant ids.
final withoutTenantId = true; // bool | Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior.
final assignee = assignee_example; // String | Restrict to tasks that the given user is assigned to.
final assigneeExpression = assigneeExpression_example; // String | Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final assigneeLike = assigneeLike_example; // String | Restrict to tasks that have an assignee that has the parameter  value as a substring.
final assigneeLikeExpression = assigneeLikeExpression_example; // String | Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final assigneeIn = assigneeIn_example; // String | Only include tasks which are assigned to one of the passed and  comma-separated user ids.
final assigneeNotIn = assigneeNotIn_example; // String | Only include tasks which are not assigned to one of the passed and comma-separated user ids.
final owner = owner_example; // String | Restrict to tasks that the given user owns.
final ownerExpression = ownerExpression_example; // String | Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final candidateGroup = candidateGroup_example; // String | Only include tasks that are offered to the given group.
final candidateGroupExpression = candidateGroupExpression_example; // String | Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final candidateUser = candidateUser_example; // String | Only include tasks that are offered to the given user or to one of his groups.
final candidateUserExpression = candidateUserExpression_example; // String | Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions.
final includeAssignedTasks = true; // bool | Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s).
final involvedUser = involvedUser_example; // String | Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee).
final involvedUserExpression = involvedUserExpression_example; // String | Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions.
final assigned = true; // bool | If set to `true`, restricts the query to all tasks that are assigned.
final unassigned = true; // bool | If set to `true`, restricts the query to all tasks that are unassigned.
final taskDefinitionKey = taskDefinitionKey_example; // String | Restrict to tasks that have the given key.
final taskDefinitionKeyIn = taskDefinitionKeyIn_example; // String | Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list.
final taskDefinitionKeyLike = taskDefinitionKeyLike_example; // String | Restrict to tasks that have a key that has the parameter value as a substring.
final name = name_example; // String | Restrict to tasks that have the given name.
final nameNotEqual = nameNotEqual_example; // String | Restrict to tasks that do not have the given name.
final nameLike = nameLike_example; // String | Restrict to tasks that have a name with the given parameter value as substring.
final nameNotLike = nameNotLike_example; // String | Restrict to tasks that do not have a name with the given parameter value as substring.
final description = description_example; // String | Restrict to tasks that have the given description.
final descriptionLike = descriptionLike_example; // String | Restrict to tasks that have a description that has the parameter value as a substring.
final priority = 56; // int | Restrict to tasks that have the given priority.
final maxPriority = 56; // int | Restrict to tasks that have a lower or equal priority.
final minPriority = 56; // int | Restrict to tasks that have a higher or equal priority.
final dueDate = dueDate_example; // String | Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final dueDateExpression = dueDateExpression_example; // String | Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final dueAfter = dueAfter_example; // String | Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`.
final dueAfterExpression = dueAfterExpression_example; // String | Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final dueBefore = dueBefore_example; // String | Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`.
final dueBeforeExpression = dueBeforeExpression_example; // String | Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final withoutDueDate = true; // bool | Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior.
final followUpDate = followUpDate_example; // String | Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
final followUpDateExpression = followUpDateExpression_example; // String | Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpAfter = followUpAfter_example; // String | Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`.
final followUpAfterExpression = followUpAfterExpression_example; // String | Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpBefore = followUpBefore_example; // String | Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`.
final followUpBeforeExpression = followUpBeforeExpression_example; // String | Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final followUpBeforeOrNotExistent = followUpBeforeOrNotExistent_example; // String | Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date.
final followUpBeforeOrNotExistentExpression = followUpBeforeOrNotExistentExpression_example; // String | Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdOn = createdOn_example; // String | Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`.
final createdOnExpression = createdOnExpression_example; // String | Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdAfter = createdAfter_example; // String | Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`.
final createdAfterExpression = createdAfterExpression_example; // String | Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final createdBefore = createdBefore_example; // String | Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
final createdBeforeExpression = createdBeforeExpression_example; // String | Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final updatedAfter = updatedAfter_example; // String | Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`.
final updatedAfterExpression = updatedAfterExpression_example; // String | Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object.
final delegationState = delegationState_example; // String | Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`.
final candidateGroups = candidateGroups_example; // String | Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`.
final candidateGroupsExpression = candidateGroupsExpression_example; // String | Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings.
final withCandidateGroups = true; // bool | Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateGroups = true; // bool | Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
final withCandidateUsers = true; // bool | Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateUsers = true; // bool | Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior.
final active = true; // bool | Only include active tasks. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended tasks. Value may only be `true`, as `false` is the default behavior.
final taskVariables = taskVariables_example; // String | Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters.
final caseInstanceVariables = caseInstanceVariables_example; // String | Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal.
final parentTaskId = parentTaskId_example; // String | Restrict query to all tasks that are sub tasks of the given task. Takes a task id.

try {
    final result = api_instance.getTasksCount(taskId, taskIdIn, processInstanceId, processInstanceIdIn, processInstanceBusinessKey, processInstanceBusinessKeyExpression, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, processInstanceBusinessKeyLikeExpression, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionName, processDefinitionNameLike, executionId, caseInstanceId, caseInstanceBusinessKey, caseInstanceBusinessKeyLike, caseDefinitionId, caseDefinitionKey, caseDefinitionName, caseDefinitionNameLike, caseExecutionId, activityInstanceIdIn, tenantIdIn, withoutTenantId, assignee, assigneeExpression, assigneeLike, assigneeLikeExpression, assigneeIn, assigneeNotIn, owner, ownerExpression, candidateGroup, candidateGroupExpression, candidateUser, candidateUserExpression, includeAssignedTasks, involvedUser, involvedUserExpression, assigned, unassigned, taskDefinitionKey, taskDefinitionKeyIn, taskDefinitionKeyLike, name, nameNotEqual, nameLike, nameNotLike, description, descriptionLike, priority, maxPriority, minPriority, dueDate, dueDateExpression, dueAfter, dueAfterExpression, dueBefore, dueBeforeExpression, withoutDueDate, followUpDate, followUpDateExpression, followUpAfter, followUpAfterExpression, followUpBefore, followUpBeforeExpression, followUpBeforeOrNotExistent, followUpBeforeOrNotExistentExpression, createdOn, createdOnExpression, createdAfter, createdAfterExpression, createdBefore, createdBeforeExpression, updatedAfter, updatedAfterExpression, delegationState, candidateGroups, candidateGroupsExpression, withCandidateGroups, withoutCandidateGroups, withCandidateUsers, withoutCandidateUsers, active, suspended, taskVariables, processVariables, caseInstanceVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, parentTaskId);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->getTasksCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| Restrict to task with the given id. | [optional] 
 **taskIdIn** | **String**| Restrict to tasks with any of the given ids. | [optional] 
 **processInstanceId** | **String**| Restrict to tasks that belong to process instances with the given id. | [optional] 
 **processInstanceIdIn** | **String**| Restrict to tasks that belong to process instances with the given ids. | [optional] 
 **processInstanceBusinessKey** | **String**| Restrict to tasks that belong to process instances with the given business key. | [optional] 
 **processInstanceBusinessKeyExpression** | **String**| Restrict to tasks that belong to process instances with the given business key which  is described by an expression. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Restrict to tasks that belong to process instances with one of the give business keys.  The keys need to be in a comma-separated list. | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Restrict to tasks that have a process instance business key that has the parameter  value as a substring. | [optional] 
 **processInstanceBusinessKeyLikeExpression** | **String**| Restrict to tasks that have a process instance business key that has the parameter  value as a substring and is described by an expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **processDefinitionId** | **String**| Restrict to tasks that belong to a process definition with the given id. | [optional] 
 **processDefinitionKey** | **String**| Restrict to tasks that belong to a process definition with the given key. | [optional] 
 **processDefinitionKeyIn** | **String**| Restrict to tasks that belong to a process definition with one of the given keys. The  keys need to be in a comma-separated list. | [optional] 
 **processDefinitionName** | **String**| Restrict to tasks that belong to a process definition with the given name. | [optional] 
 **processDefinitionNameLike** | **String**| Restrict to tasks that have a process definition name that has the parameter value as  a substring. | [optional] 
 **executionId** | **String**| Restrict to tasks that belong to an execution with the given id. | [optional] 
 **caseInstanceId** | **String**| Restrict to tasks that belong to case instances with the given id. | [optional] 
 **caseInstanceBusinessKey** | **String**| Restrict to tasks that belong to case instances with the given business key. | [optional] 
 **caseInstanceBusinessKeyLike** | **String**| Restrict to tasks that have a case instance business key that has the parameter value  as a substring. | [optional] 
 **caseDefinitionId** | **String**| Restrict to tasks that belong to a case definition with the given id. | [optional] 
 **caseDefinitionKey** | **String**| Restrict to tasks that belong to a case definition with the given key. | [optional] 
 **caseDefinitionName** | **String**| Restrict to tasks that belong to a case definition with the given name. | [optional] 
 **caseDefinitionNameLike** | **String**| Restrict to tasks that have a case definition name that has the parameter value as a  substring. | [optional] 
 **caseExecutionId** | **String**| Restrict to tasks that belong to a case execution with the given id. | [optional] 
 **activityInstanceIdIn** | **String**| Only include tasks which belong to one of the passed and comma-separated activity  instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include tasks which belong to one of the passed and comma-separated  tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include tasks which belong to no tenant. Value may only be `true`,  as `false` is the default behavior. | [optional] [default to false]
 **assignee** | **String**| Restrict to tasks that the given user is assigned to. | [optional] 
 **assigneeExpression** | **String**| Restrict to tasks that the user described by the given expression is assigned to.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **assigneeLike** | **String**| Restrict to tasks that have an assignee that has the parameter  value as a substring. | [optional] 
 **assigneeLikeExpression** | **String**| Restrict to tasks that have an assignee that has the parameter value described by the  given expression as a substring. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **assigneeIn** | **String**| Only include tasks which are assigned to one of the passed and  comma-separated user ids. | [optional] 
 **assigneeNotIn** | **String**| Only include tasks which are not assigned to one of the passed and comma-separated user ids. | [optional] 
 **owner** | **String**| Restrict to tasks that the given user owns. | [optional] 
 **ownerExpression** | **String**| Restrict to tasks that the user described by the given expression owns. See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **candidateGroup** | **String**| Only include tasks that are offered to the given group. | [optional] 
 **candidateGroupExpression** | **String**| Only include tasks that are offered to the group described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **candidateUser** | **String**| Only include tasks that are offered to the given user or to one of his groups. | [optional] 
 **candidateUserExpression** | **String**| Only include tasks that are offered to the user described by the given expression.  See the  [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions)  for more information on available functions. | [optional] 
 **includeAssignedTasks** | **bool**| Also include tasks that are assigned to users in candidate queries. Default is to only  include tasks that are not assigned to any user if you query by candidate user or group(s). | [optional] [default to false]
 **involvedUser** | **String**| Only include tasks that the given user is involved in. A user is involved in a task if  an identity link exists between task and user (e.g., the user is the assignee). | [optional] 
 **involvedUserExpression** | **String**| Only include tasks that the user described by the given expression is involved in. A user is involved in a task if an identity link exists between task and user (e.g., the user is the assignee). See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. | [optional] 
 **assigned** | **bool**| If set to `true`, restricts the query to all tasks that are assigned. | [optional] [default to false]
 **unassigned** | **bool**| If set to `true`, restricts the query to all tasks that are unassigned. | [optional] [default to false]
 **taskDefinitionKey** | **String**| Restrict to tasks that have the given key. | [optional] 
 **taskDefinitionKeyIn** | **String**| Restrict to tasks that have one of the given keys. The keys need to be in a comma-separated list. | [optional] 
 **taskDefinitionKeyLike** | **String**| Restrict to tasks that have a key that has the parameter value as a substring. | [optional] 
 **name** | **String**| Restrict to tasks that have the given name. | [optional] 
 **nameNotEqual** | **String**| Restrict to tasks that do not have the given name. | [optional] 
 **nameLike** | **String**| Restrict to tasks that have a name with the given parameter value as substring. | [optional] 
 **nameNotLike** | **String**| Restrict to tasks that do not have a name with the given parameter value as substring. | [optional] 
 **description** | **String**| Restrict to tasks that have the given description. | [optional] 
 **descriptionLike** | **String**| Restrict to tasks that have a description that has the parameter value as a substring. | [optional] 
 **priority** | **int**| Restrict to tasks that have the given priority. | [optional] 
 **maxPriority** | **int**| Restrict to tasks that have a lower or equal priority. | [optional] 
 **minPriority** | **int**| Restrict to tasks that have a higher or equal priority. | [optional] 
 **dueDate** | **String**| Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **dueDateExpression** | **String**| Restrict to tasks that are due on the date described by the given expression. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **dueAfter** | **String**| Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.435+0200`. | [optional] 
 **dueAfterExpression** | **String**| Restrict to tasks that are due after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **dueBefore** | **String**| Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.243+0200`. | [optional] 
 **dueBeforeExpression** | **String**| Restrict to tasks that are due before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **withoutDueDate** | **bool**| Only include tasks which have no due date. Value may only be `true`,  as `false` is the default behavior. | [optional] [default to false]
 **followUpDate** | **String**| Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`. | [optional] 
 **followUpDateExpression** | **String**| Restrict to tasks that have a followUp date on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpAfter** | **String**| Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.542+0200`. | [optional] 
 **followUpAfterExpression** | **String**| Restrict to tasks that have a followUp date after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpBefore** | **String**| Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.234+0200`. | [optional] 
 **followUpBeforeExpression** | **String**| Restrict to tasks that have a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **followUpBeforeOrNotExistent** | **String**| Restrict to tasks that have no followUp date or a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.432+0200`. The typical use case is to query all `active` tasks for a user for a given date. | [optional] 
 **followUpBeforeOrNotExistentExpression** | **String**| Restrict to tasks that have no followUp date or a followUp date before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdOn** | **String**| Restrict to tasks that were created on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.324+0200`. | [optional] 
 **createdOnExpression** | **String**| Restrict to tasks that were created on the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdAfter** | **String**| Restrict to tasks that were created after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.342+0200`. | [optional] 
 **createdAfterExpression** | **String**| Restrict to tasks that were created after the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **createdBefore** | **String**| Restrict to tasks that were created before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`. | [optional] 
 **createdBeforeExpression** | **String**| Restrict to tasks that were created before the date described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **updatedAfter** | **String**| Restrict to tasks that were updated after the given date. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.332+0200`. | [optional] 
 **updatedAfterExpression** | **String**| Restrict to tasks that were updated after the date described by the given expression. Every action that fires  a [task update event](https://docs.camunda.org/manual/7.20/user-guide/process-engine/delegation-code/#task-listener-event-lifecycle) is considered as updating the task. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to a `java.util.Date` or `org.joda.time.DateTime` object. | [optional] 
 **delegationState** | **String**| Restrict to tasks that are in the given delegation state. Valid values are `PENDING` and `RESOLVED`. | [optional] 
 **candidateGroups** | **String**| Restrict to tasks that are offered to any of the given candidate groups. Takes a comma-separated list of group names, so for example `developers,support,sales`. | [optional] 
 **candidateGroupsExpression** | **String**| Restrict to tasks that are offered to any of the candidate groups described by the given expression. See the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/expression-language/#internal-context-functions) for more information on available functions. The expression must evaluate to `java.util.List` of Strings. | [optional] 
 **withCandidateGroups** | **bool**| Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withoutCandidateGroups** | **bool**| Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withCandidateUsers** | **bool**| Only include tasks which have a candidate user. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **withoutCandidateUsers** | **bool**| Only include tasks which have no candidate users. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **active** | **bool**| Only include active tasks. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **suspended** | **bool**| Only include suspended tasks. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **taskVariables** | **String**| Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include tasks that belong to process instances that have variables with certain  values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`; `notLike`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **caseInstanceVariables** | **String**| Only include tasks that belong to case instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names in this query case-insensitively. If set `variableName` and `variablename` are treated as equal. | [optional] [default to false]
 **variableValuesIgnoreCase** | **bool**| Match all variable values in this query case-insensitively. If set `variableValue` and `variablevalue` are treated as equal. | [optional] [default to false]
 **parentTaskId** | **String**| Restrict query to all tasks that are sub tasks of the given task. Takes a task id. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleBpmnError**
> handleBpmnError(id, taskBpmnErrorDto)

Handle BPMN Error

Reports a business error in the context of a running task by id. The error code must be specified to identify the BPMN error handler. See the documentation for [Reporting Bpmn Error](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-error) in User Tasks.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task a BPMN error is reported for.
final taskBpmnErrorDto = TaskBpmnErrorDto(); // TaskBpmnErrorDto | 

try {
    api_instance.handleBpmnError(id, taskBpmnErrorDto);
} catch (e) {
    print('Exception when calling TaskApi->handleBpmnError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task a BPMN error is reported for. | 
 **taskBpmnErrorDto** | [**TaskBpmnErrorDto**](TaskBpmnErrorDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleEscalation**
> handleEscalation(id, taskEscalationDto)

Handle BPMN Escalation

Reports an escalation in the context of a running task by id. The escalation code must be specified to identify the escalation handler. See the documentation for [Reporting Bpmn Escalation](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-escalation) in User Tasks.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task in which context a BPMN escalation is reported.
final taskEscalationDto = TaskEscalationDto(); // TaskEscalationDto | 

try {
    api_instance.handleEscalation(id, taskEscalationDto);
} catch (e) {
    print('Exception when calling TaskApi->handleEscalation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task in which context a BPMN escalation is reported. | 
 **taskEscalationDto** | [**TaskEscalationDto**](TaskEscalationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryTasks**
> List<TaskDto> queryTasks(firstResult, maxResults, taskQueryDto)

Get List (POST)

Queries for tasks that fulfill a given filter. This method is slightly more powerful than the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/get-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query-count/) method.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final taskQueryDto = TaskQueryDto(); // TaskQueryDto | 

try {
    final result = api_instance.queryTasks(firstResult, maxResults, taskQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->queryTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **taskQueryDto** | [**TaskQueryDto**](TaskQueryDto.md)|  | [optional] 

### Return type

[**List<TaskDto>**](TaskDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryTasksCount**
> CountResultDto queryTasksCount(taskQueryDto)

Get List Count (POST)

Retrieves the number of tasks that fulfill the given filter. Corresponds to the size of the result set of the [Get Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query/) method and takes the same parameters.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final taskQueryDto = TaskQueryDto(); // TaskQueryDto | 

try {
    final result = api_instance.queryTasksCount(taskQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->queryTasksCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskQueryDto** | [**TaskQueryDto**](TaskQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolve**
> resolve(id, completeTaskDto)

Resolve

Resolves a task and updates execution variables.  Resolving a task marks that the assignee is done with the task delegated to them, and that it can be sent back to the owner. Can only be executed when the task has been delegated. The assignee will be set to the owner, who performed the delegation.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to resolve.
final completeTaskDto = CompleteTaskDto(); // CompleteTaskDto | 

try {
    api_instance.resolve(id, completeTaskDto);
} catch (e) {
    print('Exception when calling TaskApi->resolve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to resolve. | 
 **completeTaskDto** | [**CompleteTaskDto**](CompleteTaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAssignee**
> setAssignee(id, userIdDto)

Set Assignee

Changes the assignee of a task to a specific user.  **Note:** The difference with the [Claim Task](https://docs.camunda.org/manual/7.20/reference/rest/task/post-claim/) method is that this method does not check if the task already has a user assigned to it.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to set the assignee for.
final userIdDto = UserIdDto(); // UserIdDto | Provide the id of the user that will be the assignee of the task.

try {
    api_instance.setAssignee(id, userIdDto);
} catch (e) {
    print('Exception when calling TaskApi->setAssignee: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to set the assignee for. | 
 **userIdDto** | [**UserIdDto**](UserIdDto.md)| Provide the id of the user that will be the assignee of the task. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submit**
> Map<String, VariableValueDto> submit(id, completeTaskDto)

Submit Form

Completes a task and updates process variables using a form submit. There are two difference between this method and the `complete` method:  * If the task is in state `PENDING` - i.e., has been delegated before, it is not completed but resolved. Otherwise it will be completed. * If the task has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See the [Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/_index/#generated-task-forms) section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/) for more information.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to submit the form for.
final completeTaskDto = CompleteTaskDto(); // CompleteTaskDto | 

try {
    final result = api_instance.submit(id, completeTaskDto);
    print(result);
} catch (e) {
    print('Exception when calling TaskApi->submit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to submit the form for. | 
 **completeTaskDto** | [**CompleteTaskDto**](CompleteTaskDto.md)|  | [optional] 

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unclaim**
> unclaim(id)

Unclaim

Resets a task's assignee. If successful, the task is not assigned to a user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to unclaim.

try {
    api_instance.unclaim(id);
} catch (e) {
    print('Exception when calling TaskApi->unclaim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to unclaim. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTask**
> updateTask(id, taskDto)

Update

Updates a task.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskApi();
final id = id_example; // String | The id of the task to be updated.
final taskDto = TaskDto(); // TaskDto | 

try {
    api_instance.updateTask(id, taskDto);
} catch (e) {
    print('Exception when calling TaskApi->updateTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to be updated. | 
 **taskDto** | [**TaskDto**](TaskDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

