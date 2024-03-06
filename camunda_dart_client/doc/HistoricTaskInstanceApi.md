# openapi.api.HistoricTaskInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricTaskInstanceReport**](HistoricTaskInstanceApi.md#gethistorictaskinstancereport) | **GET** /history/task/report | Get Task Report (Historic)
[**getHistoricTaskInstances**](HistoricTaskInstanceApi.md#gethistorictaskinstances) | **GET** /history/task | Get Tasks (Historic)
[**getHistoricTaskInstancesCount**](HistoricTaskInstanceApi.md#gethistorictaskinstancescount) | **GET** /history/task/count | Get Task Count
[**queryHistoricTaskInstances**](HistoricTaskInstanceApi.md#queryhistorictaskinstances) | **POST** /history/task | Get Tasks (Historic) (POST)
[**queryHistoricTaskInstancesCount**](HistoricTaskInstanceApi.md#queryhistorictaskinstancescount) | **POST** /history/task/count | Get Task Count (POST)


# **getHistoricTaskInstanceReport**
> List<HistoricTaskInstanceReportResultDto> getHistoricTaskInstanceReport(reportType, periodUnit, completedBefore, completedAfter, groupBy)

Get Task Report (Historic)

Retrieves a report of completed tasks. When the report type is set to `count`, the report contains a list of completed task counts where an entry contains the task name, the definition key of the task, the process definition id, the process definition key, the process definition name and the count of how many tasks were completed for the specified key in a given period. When the report type is set to `duration`, the report contains a minimum, maximum and average duration value of all completed task instances in a given period.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricTaskInstanceApi();
final reportType = reportType_example; // String | **Mandatory.** Specifies the kind of the report to execute. To retrieve a report about the duration of process instances the value must be set to `duration`. For a report of the completed tasks in a specific timespan the value must be set to `count`.
final periodUnit = periodUnit_example; // String | When the report type is set to `duration`, this parameter is **mandatory**. Specifies the granularity of the report. Valid values are `month` and `quarter`.
final completedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were completed before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final completedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were completed after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final groupBy = groupBy_example; // String | When the report type is set to `count`, this parameter is **mandatory**. Groups the tasks report by a given criterion. Valid values are `taskName` and `processDefinition`.

try {
    final result = api_instance.getHistoricTaskInstanceReport(reportType, periodUnit, completedBefore, completedAfter, groupBy);
    print(result);
} catch (e) {
    print('Exception when calling HistoricTaskInstanceApi->getHistoricTaskInstanceReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportType** | **String**| **Mandatory.** Specifies the kind of the report to execute. To retrieve a report about the duration of process instances the value must be set to `duration`. For a report of the completed tasks in a specific timespan the value must be set to `count`. | [optional] 
 **periodUnit** | **String**| When the report type is set to `duration`, this parameter is **mandatory**. Specifies the granularity of the report. Valid values are `month` and `quarter`. | [optional] 
 **completedBefore** | **DateTime**| Restrict to tasks that were completed before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **completedAfter** | **DateTime**| Restrict to tasks that were completed after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **groupBy** | **String**| When the report type is set to `count`, this parameter is **mandatory**. Groups the tasks report by a given criterion. Valid values are `taskName` and `processDefinition`. | [optional] 

### Return type

[**List<HistoricTaskInstanceReportResultDto>**](HistoricTaskInstanceReportResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricTaskInstances**
> List<HistoricTaskInstanceDto> getHistoricTaskInstances(taskId, taskParentTaskId, processInstanceId, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, executionId, processDefinitionId, processDefinitionKey, processDefinitionName, caseInstanceId, caseExecutionId, caseDefinitionId, caseDefinitionKey, caseDefinitionName, activityInstanceIdIn, taskName, taskNameLike, taskDescription, taskDescriptionLike, taskDefinitionKey, taskDefinitionKeyIn, taskDeleteReason, taskDeleteReasonLike, taskAssignee, taskAssigneeLike, taskOwner, taskOwnerLike, taskPriority, assigned, unassigned, finished, unfinished, processFinished, processUnfinished, taskDueDate, taskDueDateBefore, taskDueDateAfter, withoutTaskDueDate, taskFollowUpDate, taskFollowUpDateBefore, taskFollowUpDateAfter, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId, taskVariables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, taskInvolvedUser, taskInvolvedGroup, taskHadCandidateUser, taskHadCandidateGroup, withCandidateGroups, withoutCandidateGroups, sortBy, sortOrder, firstResult, maxResults)

Get Tasks (Historic)

Queries for historic tasks that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Task Count](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricTaskInstanceApi();
final taskId = taskId_example; // String | Filter by task id.
final taskParentTaskId = taskParentTaskId_example; // String | Filter by parent task id.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Filter by process instance business key.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Filter by  process instance business key that has the parameter value as a substring.
final executionId = executionId_example; // String | Filter by the id of the execution that executed the task.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Restrict to tasks that belong to a process definition with the given key.
final processDefinitionName = processDefinitionName_example; // String | Restrict to tasks that belong to a process definition with the given name.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by the id of the case execution that executed the task.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by case definition id.
final caseDefinitionKey = caseDefinitionKey_example; // String | Restrict to tasks that belong to a case definition with the given key.
final caseDefinitionName = caseDefinitionName_example; // String | Restrict to tasks that belong to a case definition with the given name.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include tasks which belong to one of the passed comma-separated activity instance ids.
final taskName = taskName_example; // String | Restrict to tasks that have the given name.
final taskNameLike = taskNameLike_example; // String | Restrict to tasks that have a name with the given parameter value as substring.
final taskDescription = taskDescription_example; // String | Restrict to tasks that have the given description.
final taskDescriptionLike = taskDescriptionLike_example; // String | Restrict to tasks that have a description that has the parameter value as a substring.
final taskDefinitionKey = taskDefinitionKey_example; // String | Restrict to tasks that have the given key.
final taskDefinitionKeyIn = taskDefinitionKeyIn_example; // String | Restrict to tasks that have one of the passed comma-separated task definition keys.
final taskDeleteReason = taskDeleteReason_example; // String | Restrict to tasks that have the given delete reason.
final taskDeleteReasonLike = taskDeleteReasonLike_example; // String | Restrict to tasks that have a delete reason that has the parameter value as a substring.
final taskAssignee = taskAssignee_example; // String | Restrict to tasks that the given user is assigned to.
final taskAssigneeLike = taskAssigneeLike_example; // String | Restrict to tasks that are assigned to users with the parameter value as a substring.
final taskOwner = taskOwner_example; // String | Restrict to tasks that the given user owns.
final taskOwnerLike = taskOwnerLike_example; // String | Restrict to tasks that are owned by users with the parameter value as a substring.
final taskPriority = 56; // int | Restrict to tasks that have the given priority.
final assigned = true; // bool | If set to `true`, restricts the query to all tasks that are assigned.
final unassigned = true; // bool | If set to `true`, restricts the query to all tasks that are unassigned.
final finished = true; // bool | Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
final unfinished = true; // bool | Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
final processFinished = true; // bool | Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
final processUnfinished = true; // bool | Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
final taskDueDate = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskDueDateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskDueDateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withoutTaskDueDate = true; // bool | Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
final taskFollowUpDate = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskFollowUpDateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskFollowUpDateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final taskVariables = taskVariables_example; // String | Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final taskInvolvedUser = taskInvolvedUser_example; // String | Restrict to tasks with a historic identity link to the given user.
final taskInvolvedGroup = taskInvolvedGroup_example; // String | Restrict to tasks with a historic identity link to the given group.
final taskHadCandidateUser = taskHadCandidateUser_example; // String | Restrict to tasks with a historic identity link to the given candidate user.
final taskHadCandidateGroup = taskHadCandidateGroup_example; // String | Restrict to tasks with a historic identity link to the given candidate group.
final withCandidateGroups = true; // bool | Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateGroups = true; // bool | Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricTaskInstances(taskId, taskParentTaskId, processInstanceId, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, executionId, processDefinitionId, processDefinitionKey, processDefinitionName, caseInstanceId, caseExecutionId, caseDefinitionId, caseDefinitionKey, caseDefinitionName, activityInstanceIdIn, taskName, taskNameLike, taskDescription, taskDescriptionLike, taskDefinitionKey, taskDefinitionKeyIn, taskDeleteReason, taskDeleteReasonLike, taskAssignee, taskAssigneeLike, taskOwner, taskOwnerLike, taskPriority, assigned, unassigned, finished, unfinished, processFinished, processUnfinished, taskDueDate, taskDueDateBefore, taskDueDateAfter, withoutTaskDueDate, taskFollowUpDate, taskFollowUpDateBefore, taskFollowUpDateAfter, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId, taskVariables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, taskInvolvedUser, taskInvolvedGroup, taskHadCandidateUser, taskHadCandidateGroup, withCandidateGroups, withoutCandidateGroups, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricTaskInstanceApi->getHistoricTaskInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| Filter by task id. | [optional] 
 **taskParentTaskId** | **String**| Filter by parent task id. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceBusinessKey** | **String**| Filter by process instance business key. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list. | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Filter by  process instance business key that has the parameter value as a substring. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that executed the task. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Restrict to tasks that belong to a process definition with the given key. | [optional] 
 **processDefinitionName** | **String**| Restrict to tasks that belong to a process definition with the given name. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by the id of the case execution that executed the task. | [optional] 
 **caseDefinitionId** | **String**| Filter by case definition id. | [optional] 
 **caseDefinitionKey** | **String**| Restrict to tasks that belong to a case definition with the given key. | [optional] 
 **caseDefinitionName** | **String**| Restrict to tasks that belong to a case definition with the given name. | [optional] 
 **activityInstanceIdIn** | **String**| Only include tasks which belong to one of the passed comma-separated activity instance ids. | [optional] 
 **taskName** | **String**| Restrict to tasks that have the given name. | [optional] 
 **taskNameLike** | **String**| Restrict to tasks that have a name with the given parameter value as substring. | [optional] 
 **taskDescription** | **String**| Restrict to tasks that have the given description. | [optional] 
 **taskDescriptionLike** | **String**| Restrict to tasks that have a description that has the parameter value as a substring. | [optional] 
 **taskDefinitionKey** | **String**| Restrict to tasks that have the given key. | [optional] 
 **taskDefinitionKeyIn** | **String**| Restrict to tasks that have one of the passed comma-separated task definition keys. | [optional] 
 **taskDeleteReason** | **String**| Restrict to tasks that have the given delete reason. | [optional] 
 **taskDeleteReasonLike** | **String**| Restrict to tasks that have a delete reason that has the parameter value as a substring. | [optional] 
 **taskAssignee** | **String**| Restrict to tasks that the given user is assigned to. | [optional] 
 **taskAssigneeLike** | **String**| Restrict to tasks that are assigned to users with the parameter value as a substring. | [optional] 
 **taskOwner** | **String**| Restrict to tasks that the given user owns. | [optional] 
 **taskOwnerLike** | **String**| Restrict to tasks that are owned by users with the parameter value as a substring. | [optional] 
 **taskPriority** | **int**| Restrict to tasks that have the given priority. | [optional] 
 **assigned** | **bool**| If set to `true`, restricts the query to all tasks that are assigned. | [optional] 
 **unassigned** | **bool**| If set to `true`, restricts the query to all tasks that are unassigned. | [optional] 
 **finished** | **bool**| Only include finished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **unfinished** | **bool**| Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **processFinished** | **bool**| Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **processUnfinished** | **bool**| Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskDueDate** | **DateTime**| Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskDueDateBefore** | **DateTime**| Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskDueDateAfter** | **DateTime**| Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withoutTaskDueDate** | **bool**| Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskFollowUpDate** | **DateTime**| Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskFollowUpDateBefore** | **DateTime**| Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskFollowUpDateAfter** | **DateTime**| Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedBefore** | **DateTime**| Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskVariables** | **String**| Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **taskInvolvedUser** | **String**| Restrict to tasks with a historic identity link to the given user. | [optional] 
 **taskInvolvedGroup** | **String**| Restrict to tasks with a historic identity link to the given group. | [optional] 
 **taskHadCandidateUser** | **String**| Restrict to tasks with a historic identity link to the given candidate user. | [optional] 
 **taskHadCandidateGroup** | **String**| Restrict to tasks with a historic identity link to the given candidate group. | [optional] 
 **withCandidateGroups** | **bool**| Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withoutCandidateGroups** | **bool**| Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricTaskInstanceDto>**](HistoricTaskInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricTaskInstancesCount**
> CountResultDto getHistoricTaskInstancesCount(taskId, taskParentTaskId, processInstanceId, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, executionId, processDefinitionId, processDefinitionKey, processDefinitionName, caseInstanceId, caseExecutionId, caseDefinitionId, caseDefinitionKey, caseDefinitionName, activityInstanceIdIn, taskName, taskNameLike, taskDescription, taskDescriptionLike, taskDefinitionKey, taskDefinitionKeyIn, taskDeleteReason, taskDeleteReasonLike, taskAssignee, taskAssigneeLike, taskOwner, taskOwnerLike, taskPriority, assigned, unassigned, finished, unfinished, processFinished, processUnfinished, taskDueDate, taskDueDateBefore, taskDueDateAfter, withoutTaskDueDate, taskFollowUpDate, taskFollowUpDateBefore, taskFollowUpDateAfter, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId, taskVariables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, taskInvolvedUser, taskInvolvedGroup, taskHadCandidateUser, taskHadCandidateGroup, withCandidateGroups, withoutCandidateGroups)

Get Task Count

Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricTaskInstanceApi();
final taskId = taskId_example; // String | Filter by task id.
final taskParentTaskId = taskParentTaskId_example; // String | Filter by parent task id.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceBusinessKey = processInstanceBusinessKey_example; // String | Filter by process instance business key.
final processInstanceBusinessKeyIn = processInstanceBusinessKeyIn_example; // String | Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
final processInstanceBusinessKeyLike = processInstanceBusinessKeyLike_example; // String | Filter by  process instance business key that has the parameter value as a substring.
final executionId = executionId_example; // String | Filter by the id of the execution that executed the task.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Restrict to tasks that belong to a process definition with the given key.
final processDefinitionName = processDefinitionName_example; // String | Restrict to tasks that belong to a process definition with the given name.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by the id of the case execution that executed the task.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by case definition id.
final caseDefinitionKey = caseDefinitionKey_example; // String | Restrict to tasks that belong to a case definition with the given key.
final caseDefinitionName = caseDefinitionName_example; // String | Restrict to tasks that belong to a case definition with the given name.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include tasks which belong to one of the passed comma-separated activity instance ids.
final taskName = taskName_example; // String | Restrict to tasks that have the given name.
final taskNameLike = taskNameLike_example; // String | Restrict to tasks that have a name with the given parameter value as substring.
final taskDescription = taskDescription_example; // String | Restrict to tasks that have the given description.
final taskDescriptionLike = taskDescriptionLike_example; // String | Restrict to tasks that have a description that has the parameter value as a substring.
final taskDefinitionKey = taskDefinitionKey_example; // String | Restrict to tasks that have the given key.
final taskDefinitionKeyIn = taskDefinitionKeyIn_example; // String | Restrict to tasks that have one of the passed comma-separated task definition keys.
final taskDeleteReason = taskDeleteReason_example; // String | Restrict to tasks that have the given delete reason.
final taskDeleteReasonLike = taskDeleteReasonLike_example; // String | Restrict to tasks that have a delete reason that has the parameter value as a substring.
final taskAssignee = taskAssignee_example; // String | Restrict to tasks that the given user is assigned to.
final taskAssigneeLike = taskAssigneeLike_example; // String | Restrict to tasks that are assigned to users with the parameter value as a substring.
final taskOwner = taskOwner_example; // String | Restrict to tasks that the given user owns.
final taskOwnerLike = taskOwnerLike_example; // String | Restrict to tasks that are owned by users with the parameter value as a substring.
final taskPriority = 56; // int | Restrict to tasks that have the given priority.
final assigned = true; // bool | If set to `true`, restricts the query to all tasks that are assigned.
final unassigned = true; // bool | If set to `true`, restricts the query to all tasks that are unassigned.
final finished = true; // bool | Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
final unfinished = true; // bool | Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
final processFinished = true; // bool | Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
final processUnfinished = true; // bool | Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
final taskDueDate = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskDueDateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskDueDateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withoutTaskDueDate = true; // bool | Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
final taskFollowUpDate = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskFollowUpDateBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final taskFollowUpDateAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final taskVariables = taskVariables_example; // String | Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final taskInvolvedUser = taskInvolvedUser_example; // String | Restrict to tasks with a historic identity link to the given user.
final taskInvolvedGroup = taskInvolvedGroup_example; // String | Restrict to tasks with a historic identity link to the given group.
final taskHadCandidateUser = taskHadCandidateUser_example; // String | Restrict to tasks with a historic identity link to the given candidate user.
final taskHadCandidateGroup = taskHadCandidateGroup_example; // String | Restrict to tasks with a historic identity link to the given candidate group.
final withCandidateGroups = true; // bool | Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
final withoutCandidateGroups = true; // bool | Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricTaskInstancesCount(taskId, taskParentTaskId, processInstanceId, processInstanceBusinessKey, processInstanceBusinessKeyIn, processInstanceBusinessKeyLike, executionId, processDefinitionId, processDefinitionKey, processDefinitionName, caseInstanceId, caseExecutionId, caseDefinitionId, caseDefinitionKey, caseDefinitionName, activityInstanceIdIn, taskName, taskNameLike, taskDescription, taskDescriptionLike, taskDefinitionKey, taskDefinitionKeyIn, taskDeleteReason, taskDeleteReasonLike, taskAssignee, taskAssigneeLike, taskOwner, taskOwnerLike, taskPriority, assigned, unassigned, finished, unfinished, processFinished, processUnfinished, taskDueDate, taskDueDateBefore, taskDueDateAfter, withoutTaskDueDate, taskFollowUpDate, taskFollowUpDateBefore, taskFollowUpDateAfter, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId, taskVariables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, taskInvolvedUser, taskInvolvedGroup, taskHadCandidateUser, taskHadCandidateGroup, withCandidateGroups, withoutCandidateGroups);
    print(result);
} catch (e) {
    print('Exception when calling HistoricTaskInstanceApi->getHistoricTaskInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| Filter by task id. | [optional] 
 **taskParentTaskId** | **String**| Filter by parent task id. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceBusinessKey** | **String**| Filter by process instance business key. | [optional] 
 **processInstanceBusinessKeyIn** | **String**| Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list. | [optional] 
 **processInstanceBusinessKeyLike** | **String**| Filter by  process instance business key that has the parameter value as a substring. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that executed the task. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Restrict to tasks that belong to a process definition with the given key. | [optional] 
 **processDefinitionName** | **String**| Restrict to tasks that belong to a process definition with the given name. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by the id of the case execution that executed the task. | [optional] 
 **caseDefinitionId** | **String**| Filter by case definition id. | [optional] 
 **caseDefinitionKey** | **String**| Restrict to tasks that belong to a case definition with the given key. | [optional] 
 **caseDefinitionName** | **String**| Restrict to tasks that belong to a case definition with the given name. | [optional] 
 **activityInstanceIdIn** | **String**| Only include tasks which belong to one of the passed comma-separated activity instance ids. | [optional] 
 **taskName** | **String**| Restrict to tasks that have the given name. | [optional] 
 **taskNameLike** | **String**| Restrict to tasks that have a name with the given parameter value as substring. | [optional] 
 **taskDescription** | **String**| Restrict to tasks that have the given description. | [optional] 
 **taskDescriptionLike** | **String**| Restrict to tasks that have a description that has the parameter value as a substring. | [optional] 
 **taskDefinitionKey** | **String**| Restrict to tasks that have the given key. | [optional] 
 **taskDefinitionKeyIn** | **String**| Restrict to tasks that have one of the passed comma-separated task definition keys. | [optional] 
 **taskDeleteReason** | **String**| Restrict to tasks that have the given delete reason. | [optional] 
 **taskDeleteReasonLike** | **String**| Restrict to tasks that have a delete reason that has the parameter value as a substring. | [optional] 
 **taskAssignee** | **String**| Restrict to tasks that the given user is assigned to. | [optional] 
 **taskAssigneeLike** | **String**| Restrict to tasks that are assigned to users with the parameter value as a substring. | [optional] 
 **taskOwner** | **String**| Restrict to tasks that the given user owns. | [optional] 
 **taskOwnerLike** | **String**| Restrict to tasks that are owned by users with the parameter value as a substring. | [optional] 
 **taskPriority** | **int**| Restrict to tasks that have the given priority. | [optional] 
 **assigned** | **bool**| If set to `true`, restricts the query to all tasks that are assigned. | [optional] 
 **unassigned** | **bool**| If set to `true`, restricts the query to all tasks that are unassigned. | [optional] 
 **finished** | **bool**| Only include finished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **unfinished** | **bool**| Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **processFinished** | **bool**| Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **processUnfinished** | **bool**| Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskDueDate** | **DateTime**| Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskDueDateBefore** | **DateTime**| Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskDueDateAfter** | **DateTime**| Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withoutTaskDueDate** | **bool**| Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskFollowUpDate** | **DateTime**| Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskFollowUpDateBefore** | **DateTime**| Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **taskFollowUpDateAfter** | **DateTime**| Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedBefore** | **DateTime**| Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **taskVariables** | **String**| Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **taskInvolvedUser** | **String**| Restrict to tasks with a historic identity link to the given user. | [optional] 
 **taskInvolvedGroup** | **String**| Restrict to tasks with a historic identity link to the given group. | [optional] 
 **taskHadCandidateUser** | **String**| Restrict to tasks with a historic identity link to the given candidate user. | [optional] 
 **taskHadCandidateGroup** | **String**| Restrict to tasks with a historic identity link to the given candidate group. | [optional] 
 **withCandidateGroups** | **bool**| Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withoutCandidateGroups** | **bool**| Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricTaskInstances**
> List<HistoricTaskInstanceDto> queryHistoricTaskInstances(firstResult, maxResults, historicTaskInstanceQueryDto)

Get Tasks (Historic) (POST)

Queries for historic tasks that fulfill the given parameters. This method is slightly more powerful than the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricTaskInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final historicTaskInstanceQueryDto = HistoricTaskInstanceQueryDto(); // HistoricTaskInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricTaskInstances(firstResult, maxResults, historicTaskInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricTaskInstanceApi->queryHistoricTaskInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **historicTaskInstanceQueryDto** | [**HistoricTaskInstanceQueryDto**](HistoricTaskInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricTaskInstanceDto>**](HistoricTaskInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricTaskInstancesCount**
> CountResultDto queryHistoricTaskInstancesCount(historicTaskInstanceQueryDto)

Get Task Count (POST)

Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method. Corresponds to the size of the result set of the [Get Tasks (Historic) (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query/) method and takes the same parameters.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricTaskInstanceApi();
final historicTaskInstanceQueryDto = HistoricTaskInstanceQueryDto(); // HistoricTaskInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricTaskInstancesCount(historicTaskInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricTaskInstanceApi->queryHistoricTaskInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicTaskInstanceQueryDto** | [**HistoricTaskInstanceQueryDto**](HistoricTaskInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

