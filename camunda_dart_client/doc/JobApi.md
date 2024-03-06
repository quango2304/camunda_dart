# openapi.api.JobApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteJob**](JobApi.md#deletejob) | **DELETE** /job/{id} | Delete Job
[**executeJob**](JobApi.md#executejob) | **POST** /job/{id}/execute | Execute Job
[**getJob**](JobApi.md#getjob) | **GET** /job/{id} | Get Job
[**getJobs**](JobApi.md#getjobs) | **GET** /job | Get Jobs
[**getJobsCount**](JobApi.md#getjobscount) | **GET** /job/count | Get Job Count
[**getStacktrace**](JobApi.md#getstacktrace) | **GET** /job/{id}/stacktrace | Get Exception Stacktrace
[**queryJobs**](JobApi.md#queryjobs) | **POST** /job | Get Jobs (POST)
[**queryJobsCount**](JobApi.md#queryjobscount) | **POST** /job/count | Get Job Count (POST)
[**recalculateDuedate**](JobApi.md#recalculateduedate) | **POST** /job/{id}/duedate/recalculate | Recalculate Job Due Date
[**setJobDuedate**](JobApi.md#setjobduedate) | **PUT** /job/{id}/duedate | Set Job Due Date
[**setJobPriority**](JobApi.md#setjobpriority) | **PUT** /job/{id}/priority | Set Job Priority
[**setJobRetries**](JobApi.md#setjobretries) | **PUT** /job/{id}/retries | Set Job Retries
[**setJobRetriesAsyncOperation**](JobApi.md#setjobretriesasyncoperation) | **POST** /job/retries | Set Job Retries Async (POST)
[**updateJobSuspensionState**](JobApi.md#updatejobsuspensionstate) | **PUT** /job/{id}/suspended | Activate/Suspend Job By Id
[**updateSuspensionStateBy**](JobApi.md#updatesuspensionstateby) | **PUT** /job/suspended | Activate/Suspend Jobs


# **deleteJob**
> deleteJob(id)

Delete Job

Deletes a job by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be deleted.

try {
    api_instance.deleteJob(id);
} catch (e) {
    print('Exception when calling JobApi->deleteJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeJob**
> executeJob(id)

Execute Job

Executes a job by id. **Note:** The execution of the job happens synchronously in the same thread.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be executed.

try {
    api_instance.executeJob(id);
} catch (e) {
    print('Exception when calling JobApi->executeJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be executed. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> JobDto getJob(id)

Get Job

Retrieves a job by id, according to the `Job` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be retrieved.

try {
    final result = api_instance.getJob(id);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->getJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be retrieved. | 

### Return type

[**JobDto**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
> List<JobDto> getJobs(jobId, jobIds, jobDefinitionId, processInstanceId, processInstanceIds, executionId, processDefinitionId, processDefinitionKey, activityId, withRetriesLeft, executable, timers, messages, dueDates, createTimes, withException, exceptionMessage, failedActivityId, noRetriesLeft, active, suspended, priorityLowerThanOrEquals, priorityHigherThanOrEquals, tenantIdIn, withoutTenantId, includeJobsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get Jobs

Queries for jobs that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final jobId = jobId_example; // String | Filter by job id.
final jobIds = jobIds_example; // String | Filter by a comma-separated list of job ids.
final jobDefinitionId = jobDefinitionId_example; // String | Only select jobs which exist for the given job definition.
final processInstanceId = processInstanceId_example; // String | Only select jobs which exist for the given process instance.
final processInstanceIds = processInstanceIds_example; // String | Only select jobs which exist for the given comma-separated list of process instance ids.
final executionId = executionId_example; // String | Only select jobs which exist for the given execution.
final processDefinitionId = processDefinitionId_example; // String | Filter by the id of the process definition the jobs run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the jobs run on.
final activityId = activityId_example; // String | Only select jobs which exist for an activity with the given id.
final withRetriesLeft = true; // bool | Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
final executable = true; // bool | Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
final timers = true; // bool | Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
final messages = true; // bool | Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
final dueDates = dueDates_example; // String | Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
final createTimes = createTimes_example; // String | Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
final withException = true; // bool | Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
final exceptionMessage = exceptionMessage_example; // String | Only select jobs that failed due to an exception with the given message.
final failedActivityId = failedActivityId_example; // String | Only select jobs that failed due to an exception at an activity with the given id.
final noRetriesLeft = true; // bool | Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
final active = true; // bool | Only include active jobs. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
final priorityLowerThanOrEquals = 789; // int | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
final priorityHigherThanOrEquals = 789; // int | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
final tenantIdIn = tenantIdIn_example; // String | Only include jobs which belong to one of the passed comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeJobsWithoutTenantId = true; // bool | Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getJobs(jobId, jobIds, jobDefinitionId, processInstanceId, processInstanceIds, executionId, processDefinitionId, processDefinitionKey, activityId, withRetriesLeft, executable, timers, messages, dueDates, createTimes, withException, exceptionMessage, failedActivityId, noRetriesLeft, active, suspended, priorityLowerThanOrEquals, priorityHigherThanOrEquals, tenantIdIn, withoutTenantId, includeJobsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->getJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobIds** | **String**| Filter by a comma-separated list of job ids. | [optional] 
 **jobDefinitionId** | **String**| Only select jobs which exist for the given job definition. | [optional] 
 **processInstanceId** | **String**| Only select jobs which exist for the given process instance. | [optional] 
 **processInstanceIds** | **String**| Only select jobs which exist for the given comma-separated list of process instance ids. | [optional] 
 **executionId** | **String**| Only select jobs which exist for the given execution. | [optional] 
 **processDefinitionId** | **String**| Filter by the id of the process definition the jobs run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the jobs run on. | [optional] 
 **activityId** | **String**| Only select jobs which exist for an activity with the given id. | [optional] 
 **withRetriesLeft** | **bool**| Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **executable** | **bool**| Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **timers** | **bool**| Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **messages** | **bool**| Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **dueDates** | **String**| Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters. | [optional] 
 **createTimes** | **String**| Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters. | [optional] 
 **withException** | **bool**| Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **exceptionMessage** | **String**| Only select jobs that failed due to an exception with the given message. | [optional] 
 **failedActivityId** | **String**| Only select jobs that failed due to an exception at an activity with the given id. | [optional] 
 **noRetriesLeft** | **bool**| Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **active** | **bool**| Only include active jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **tenantIdIn** | **String**| Only include jobs which belong to one of the passed comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeJobsWithoutTenantId** | **bool**| Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<JobDto>**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobsCount**
> CountResultDto getJobsCount(jobId, jobIds, jobDefinitionId, processInstanceId, processInstanceIds, executionId, processDefinitionId, processDefinitionKey, activityId, withRetriesLeft, executable, timers, messages, dueDates, createTimes, withException, exceptionMessage, failedActivityId, noRetriesLeft, active, suspended, priorityLowerThanOrEquals, priorityHigherThanOrEquals, tenantIdIn, withoutTenantId, includeJobsWithoutTenantId)

Get Job Count

Queries for the number of jobs that fulfill given parameters. Takes the same parameters as the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final jobId = jobId_example; // String | Filter by job id.
final jobIds = jobIds_example; // String | Filter by a comma-separated list of job ids.
final jobDefinitionId = jobDefinitionId_example; // String | Only select jobs which exist for the given job definition.
final processInstanceId = processInstanceId_example; // String | Only select jobs which exist for the given process instance.
final processInstanceIds = processInstanceIds_example; // String | Only select jobs which exist for the given comma-separated list of process instance ids.
final executionId = executionId_example; // String | Only select jobs which exist for the given execution.
final processDefinitionId = processDefinitionId_example; // String | Filter by the id of the process definition the jobs run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the jobs run on.
final activityId = activityId_example; // String | Only select jobs which exist for an activity with the given id.
final withRetriesLeft = true; // bool | Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior.
final executable = true; // bool | Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior.
final timers = true; // bool | Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior.
final messages = true; // bool | Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior.
final dueDates = dueDates_example; // String | Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
final createTimes = createTimes_example; // String | Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters.
final withException = true; // bool | Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior.
final exceptionMessage = exceptionMessage_example; // String | Only select jobs that failed due to an exception with the given message.
final failedActivityId = failedActivityId_example; // String | Only select jobs that failed due to an exception at an activity with the given id.
final noRetriesLeft = true; // bool | Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior.
final active = true; // bool | Only include active jobs. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended jobs. Value may only be `true`, as `false` is the default behavior.
final priorityLowerThanOrEquals = 789; // int | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value.
final priorityHigherThanOrEquals = 789; // int | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value.
final tenantIdIn = tenantIdIn_example; // String | Only include jobs which belong to one of the passed comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeJobsWithoutTenantId = true; // bool | Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getJobsCount(jobId, jobIds, jobDefinitionId, processInstanceId, processInstanceIds, executionId, processDefinitionId, processDefinitionKey, activityId, withRetriesLeft, executable, timers, messages, dueDates, createTimes, withException, exceptionMessage, failedActivityId, noRetriesLeft, active, suspended, priorityLowerThanOrEquals, priorityHigherThanOrEquals, tenantIdIn, withoutTenantId, includeJobsWithoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->getJobsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobIds** | **String**| Filter by a comma-separated list of job ids. | [optional] 
 **jobDefinitionId** | **String**| Only select jobs which exist for the given job definition. | [optional] 
 **processInstanceId** | **String**| Only select jobs which exist for the given process instance. | [optional] 
 **processInstanceIds** | **String**| Only select jobs which exist for the given comma-separated list of process instance ids. | [optional] 
 **executionId** | **String**| Only select jobs which exist for the given execution. | [optional] 
 **processDefinitionId** | **String**| Filter by the id of the process definition the jobs run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the jobs run on. | [optional] 
 **activityId** | **String**| Only select jobs which exist for an activity with the given id. | [optional] 
 **withRetriesLeft** | **bool**| Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **executable** | **bool**| Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **timers** | **bool**| Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **messages** | **bool**| Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **dueDates** | **String**| Only select jobs where the due date is lower or higher than the given date. Due date expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters. | [optional] 
 **createTimes** | **String**| Only select jobs created before or after the given date.  Create time expressions are comma-separated and are structured as follows:  A valid condition value has the form `operator_value`. `operator` is the comparison operator to be used and `value` the date value as string.  Valid operator values are: `gt` - greater than; `lt` - lower than. `value` may not contain underscore or comma characters. | [optional] 
 **withException** | **bool**| Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **exceptionMessage** | **String**| Only select jobs that failed due to an exception with the given message. | [optional] 
 **failedActivityId** | **String**| Only select jobs that failed due to an exception at an activity with the given id. | [optional] 
 **noRetriesLeft** | **bool**| Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **active** | **bool**| Only include active jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **priorityLowerThanOrEquals** | **int**| Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **priorityHigherThanOrEquals** | **int**| Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **tenantIdIn** | **String**| Only include jobs which belong to one of the passed comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeJobsWithoutTenantId** | **bool**| Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStacktrace**
> Object getStacktrace(id)

Get Exception Stacktrace

Retrieves the exception stacktrace corresponding to the passed job id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to get the exception stacktrace for.

try {
    final result = api_instance.getStacktrace(id);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->getStacktrace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to get the exception stacktrace for. | 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryJobs**
> List<JobDto> queryJobs(firstResult, maxResults, jobQueryDto)

Get Jobs (POST)

Queries for jobs that fulfill given parameters. This method is slightly more powerful than the [Get Jobs](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query/) method because it allows filtering by multiple jobs of types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final jobQueryDto = JobQueryDto(); // JobQueryDto | 

try {
    final result = api_instance.queryJobs(firstResult, maxResults, jobQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->queryJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **jobQueryDto** | [**JobQueryDto**](JobQueryDto.md)|  | [optional] 

### Return type

[**List<JobDto>**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryJobsCount**
> CountResultDto queryJobsCount(jobQueryDto)

Get Job Count (POST)

Queries for jobs that fulfill given parameters. This method takes the same message body as the [Get Jobs POST](https://docs.camunda.org/manual/7.20/reference/rest/job/post- query/) method and therefore it is slightly more powerful than the [Get Job Count](https://docs.camunda.org/manual/7.20/reference/rest/job/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final jobQueryDto = JobQueryDto(); // JobQueryDto | 

try {
    final result = api_instance.queryJobsCount(jobQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->queryJobsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobQueryDto** | [**JobQueryDto**](JobQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recalculateDuedate**
> recalculateDuedate(id, creationDateBased)

Recalculate Job Due Date

Recalculates the due date of a job by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be updated.
final creationDateBased = true; // bool | Recalculate the due date based on the creation date of the job or the current date. Value may only be `false`, as `true` is the default behavior. 

try {
    api_instance.recalculateDuedate(id, creationDateBased);
} catch (e) {
    print('Exception when calling JobApi->recalculateDuedate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be updated. | 
 **creationDateBased** | **bool**| Recalculate the due date based on the creation date of the job or the current date. Value may only be `false`, as `true` is the default behavior.  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobDuedate**
> setJobDuedate(id, jobDuedateDto)

Set Job Due Date

Updates the due date of a job by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be updated.
final jobDuedateDto = JobDuedateDto(); // JobDuedateDto | 

try {
    api_instance.setJobDuedate(id, jobDuedateDto);
} catch (e) {
    print('Exception when calling JobApi->setJobDuedate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be updated. | 
 **jobDuedateDto** | [**JobDuedateDto**](JobDuedateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobPriority**
> setJobPriority(id, priorityDto)

Set Job Priority

Sets the execution priority of a job by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be updated.
final priorityDto = PriorityDto(); // PriorityDto | 

try {
    api_instance.setJobPriority(id, priorityDto);
} catch (e) {
    print('Exception when calling JobApi->setJobPriority: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be updated. | 
 **priorityDto** | [**PriorityDto**](PriorityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobRetries**
> setJobRetries(id, jobRetriesDto)

Set Job Retries

Sets the retries of the job to the given number of retries by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to be updated.
final jobRetriesDto = JobRetriesDto(); // JobRetriesDto | 

try {
    api_instance.setJobRetries(id, jobRetriesDto);
} catch (e) {
    print('Exception when calling JobApi->setJobRetries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to be updated. | 
 **jobRetriesDto** | [**JobRetriesDto**](JobRetriesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobRetriesAsyncOperation**
> BatchDto setJobRetriesAsyncOperation(setJobRetriesDto)

Set Job Retries Async (POST)

Create a batch to set retries of jobs asynchronously.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final setJobRetriesDto = SetJobRetriesDto(); // SetJobRetriesDto | 

try {
    final result = api_instance.setJobRetriesAsyncOperation(setJobRetriesDto);
    print(result);
} catch (e) {
    print('Exception when calling JobApi->setJobRetriesAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setJobRetriesDto** | [**SetJobRetriesDto**](SetJobRetriesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJobSuspensionState**
> updateJobSuspensionState(id, suspensionStateDto)

Activate/Suspend Job By Id

Activates or suspends a given job by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final id = id_example; // String | The id of the job to activate or suspend.
final suspensionStateDto = SuspensionStateDto(); // SuspensionStateDto | 

try {
    api_instance.updateJobSuspensionState(id, suspensionStateDto);
} catch (e) {
    print('Exception when calling JobApi->updateJobSuspensionState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job to activate or suspend. | 
 **suspensionStateDto** | [**SuspensionStateDto**](SuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionStateBy**
> updateSuspensionStateBy(jobSuspensionStateDto)

Activate/Suspend Jobs

Activates or suspends jobs matching the given criterion. This can only be on of: * `jobDefinitionId` * `processDefinitionId` * `processInstanceId` * `processDefinitionKey`

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobApi();
final jobSuspensionStateDto = JobSuspensionStateDto(); // JobSuspensionStateDto | 

try {
    api_instance.updateSuspensionStateBy(jobSuspensionStateDto);
} catch (e) {
    print('Exception when calling JobApi->updateSuspensionStateBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobSuspensionStateDto** | [**JobSuspensionStateDto**](JobSuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

