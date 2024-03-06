# openapi.api.HistoricJobLogApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricJobLog**](HistoricJobLogApi.md#gethistoricjoblog) | **GET** /history/job-log/{id} | Get Job Log
[**getHistoricJobLogs**](HistoricJobLogApi.md#gethistoricjoblogs) | **GET** /history/job-log | Get Job Logs
[**getHistoricJobLogsCount**](HistoricJobLogApi.md#gethistoricjoblogscount) | **GET** /history/job-log/count | Get Job Log Count
[**getStacktraceHistoricJobLog**](HistoricJobLogApi.md#getstacktracehistoricjoblog) | **GET** /history/job-log/{id}/stacktrace | Get Job Log Exception Stacktrace
[**queryHistoricJobLogs**](HistoricJobLogApi.md#queryhistoricjoblogs) | **POST** /history/job-log | Get Job Logs (POST)
[**queryHistoricJobLogsCount**](HistoricJobLogApi.md#queryhistoricjoblogscount) | **POST** /history/job-log/count | Get Job Log Count (POST)


# **getHistoricJobLog**
> HistoricJobLogDto getHistoricJobLog(id)

Get Job Log

Retrieves a historic job log by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final id = id_example; // String | The id of the log entry.

try {
    final result = api_instance.getHistoricJobLog(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->getHistoricJobLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the log entry. | 

### Return type

[**HistoricJobLogDto**](HistoricJobLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricJobLogs**
> List<HistoricJobLogDto> getHistoricJobLogs(logId, jobId, jobExceptionMessage, jobDefinitionId, jobDefinitionType, jobDefinitionConfiguration, activityIdIn, failedActivityIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, deploymentId, tenantIdIn, withoutTenantId, hostname, jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog, sortBy, sortOrder, firstResult, maxResults)

Get Job Logs

Queries for historic job logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final logId = logId_example; // String | Filter by historic job log id.
final jobId = jobId_example; // String | Filter by job id.
final jobExceptionMessage = jobExceptionMessage_example; // String | Filter by job exception message.
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final jobDefinitionType = jobDefinitionType_example; // String | Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
final jobDefinitionConfiguration = jobDefinitionConfiguration_example; // String | Filter by job definition configuration.
final activityIdIn = activityIdIn_example; // String | Only include historic job logs which belong to one of the passed activity ids.
final failedActivityIdIn = failedActivityIdIn_example; // String | Only include historic job logs which belong to failures of one of the passed activity ids.
final executionIdIn = executionIdIn_example; // String | Only include historic job logs which belong to one of the passed execution ids.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final deploymentId = deploymentId_example; // String | Filter by deployment id.
final tenantIdIn = tenantIdIn_example; // String | Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
final withoutTenantId = true; // bool | Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final hostname = hostname_example; // String | Filter by hostname.
final jobPriorityLowerThanOrEquals = 789; // int | Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
final jobPriorityHigherThanOrEquals = 789; // int | Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
final creationLog = true; // bool | Only include creation logs. Value may only be `true`, as `false` is the default behavior.
final failureLog = true; // bool | Only include failure logs. Value may only be `true`, as `false` is the default behavior.
final successLog = true; // bool | Only include success logs. Value may only be `true`, as `false` is the default behavior.
final deletionLog = true; // bool | Only include deletion logs. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricJobLogs(logId, jobId, jobExceptionMessage, jobDefinitionId, jobDefinitionType, jobDefinitionConfiguration, activityIdIn, failedActivityIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, deploymentId, tenantIdIn, withoutTenantId, hostname, jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->getHistoricJobLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **String**| Filter by historic job log id. | [optional] 
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobExceptionMessage** | **String**| Filter by job exception message. | [optional] 
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **jobDefinitionType** | **String**| Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types. | [optional] 
 **jobDefinitionConfiguration** | **String**| Filter by job definition configuration. | [optional] 
 **activityIdIn** | **String**| Only include historic job logs which belong to one of the passed activity ids. | [optional] 
 **failedActivityIdIn** | **String**| Only include historic job logs which belong to failures of one of the passed activity ids. | [optional] 
 **executionIdIn** | **String**| Only include historic job logs which belong to one of the passed execution ids. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **deploymentId** | **String**| Filter by deployment id. | [optional] 
 **tenantIdIn** | **String**| Only include historic job log entries which belong to one of the passed and comma- separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **hostname** | **String**| Filter by hostname. | [optional] 
 **jobPriorityLowerThanOrEquals** | **int**| Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **jobPriorityHigherThanOrEquals** | **int**| Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **creationLog** | **bool**| Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **failureLog** | **bool**| Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **successLog** | **bool**| Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **deletionLog** | **bool**| Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricJobLogDto>**](HistoricJobLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricJobLogsCount**
> CountResultDto getHistoricJobLogsCount(logId, jobId, jobExceptionMessage, jobDefinitionId, jobDefinitionType, jobDefinitionConfiguration, activityIdIn, failedActivityIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, deploymentId, tenantIdIn, withoutTenantId, hostname, jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog)

Get Job Log Count

Queries for the number of historic job logs that fulfill the given parameters. Takes the same parameters as the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final logId = logId_example; // String | Filter by historic job log id.
final jobId = jobId_example; // String | Filter by job id.
final jobExceptionMessage = jobExceptionMessage_example; // String | Filter by job exception message.
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final jobDefinitionType = jobDefinitionType_example; // String | Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types.
final jobDefinitionConfiguration = jobDefinitionConfiguration_example; // String | Filter by job definition configuration.
final activityIdIn = activityIdIn_example; // String | Only include historic job logs which belong to one of the passed activity ids.
final failedActivityIdIn = failedActivityIdIn_example; // String | Only include historic job logs which belong to failures of one of the passed activity ids.
final executionIdIn = executionIdIn_example; // String | Only include historic job logs which belong to one of the passed execution ids.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by process definition key.
final deploymentId = deploymentId_example; // String | Filter by deployment id.
final tenantIdIn = tenantIdIn_example; // String | Only include historic job log entries which belong to one of the passed and comma- separated tenant ids.
final withoutTenantId = true; // bool | Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final hostname = hostname_example; // String | Filter by hostname.
final jobPriorityLowerThanOrEquals = 789; // int | Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value.
final jobPriorityHigherThanOrEquals = 789; // int | Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value.
final creationLog = true; // bool | Only include creation logs. Value may only be `true`, as `false` is the default behavior.
final failureLog = true; // bool | Only include failure logs. Value may only be `true`, as `false` is the default behavior.
final successLog = true; // bool | Only include success logs. Value may only be `true`, as `false` is the default behavior.
final deletionLog = true; // bool | Only include deletion logs. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricJobLogsCount(logId, jobId, jobExceptionMessage, jobDefinitionId, jobDefinitionType, jobDefinitionConfiguration, activityIdIn, failedActivityIdIn, executionIdIn, processInstanceId, processDefinitionId, processDefinitionKey, deploymentId, tenantIdIn, withoutTenantId, hostname, jobPriorityLowerThanOrEquals, jobPriorityHigherThanOrEquals, creationLog, failureLog, successLog, deletionLog);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->getHistoricJobLogsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logId** | **String**| Filter by historic job log id. | [optional] 
 **jobId** | **String**| Filter by job id. | [optional] 
 **jobExceptionMessage** | **String**| Filter by job exception message. | [optional] 
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **jobDefinitionType** | **String**| Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types. | [optional] 
 **jobDefinitionConfiguration** | **String**| Filter by job definition configuration. | [optional] 
 **activityIdIn** | **String**| Only include historic job logs which belong to one of the passed activity ids. | [optional] 
 **failedActivityIdIn** | **String**| Only include historic job logs which belong to failures of one of the passed activity ids. | [optional] 
 **executionIdIn** | **String**| Only include historic job logs which belong to one of the passed execution ids. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionKey** | **String**| Filter by process definition key. | [optional] 
 **deploymentId** | **String**| Filter by deployment id. | [optional] 
 **tenantIdIn** | **String**| Only include historic job log entries which belong to one of the passed and comma- separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **hostname** | **String**| Filter by hostname. | [optional] 
 **jobPriorityLowerThanOrEquals** | **int**| Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **jobPriorityHigherThanOrEquals** | **int**| Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
 **creationLog** | **bool**| Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **failureLog** | **bool**| Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **successLog** | **bool**| Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **deletionLog** | **bool**| Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStacktraceHistoricJobLog**
> Object getStacktraceHistoricJobLog(id)

Get Job Log Exception Stacktrace

Retrieves the corresponding exception stacktrace to the passed historic job log by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final id = id_example; // String | The id of the historic job log to get the exception stacktrace for.

try {
    final result = api_instance.getStacktraceHistoricJobLog(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->getStacktraceHistoricJobLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic job log to get the exception stacktrace for. | 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricJobLogs**
> List<HistoricJobLogDto> queryHistoricJobLogs(firstResult, maxResults, historicJobLogQueryDto)

Get Job Logs (POST)

Queries for historic job logs that fulfill the given parameters. This method is slightly more powerful than the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method because it allows filtering by historic job logs values of the different types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final historicJobLogQueryDto = HistoricJobLogQueryDto(); // HistoricJobLogQueryDto | 

try {
    final result = api_instance.queryHistoricJobLogs(firstResult, maxResults, historicJobLogQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->queryHistoricJobLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **historicJobLogQueryDto** | [**HistoricJobLogQueryDto**](HistoricJobLogQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricJobLogDto>**](HistoricJobLogDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricJobLogsCount**
> CountResultDto queryHistoricJobLogsCount(historicJobLogQueryDto)

Get Job Log Count (POST)

Queries for the number of historic job logs that fulfill the given parameters. This method takes the same message body as the [Get Job Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/post-job-log-query/) method and therefore it is slightly more powerful than the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricJobLogApi();
final historicJobLogQueryDto = HistoricJobLogQueryDto(); // HistoricJobLogQueryDto | 

try {
    final result = api_instance.queryHistoricJobLogsCount(historicJobLogQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricJobLogApi->queryHistoricJobLogsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicJobLogQueryDto** | [**HistoricJobLogQueryDto**](HistoricJobLogQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

