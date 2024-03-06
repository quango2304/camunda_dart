# openapi.api.HistoryCleanupApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cleanupAsync**](HistoryCleanupApi.md#cleanupasync) | **POST** /history/cleanup | Clean up history (POST)
[**findCleanupJob**](HistoryCleanupApi.md#findcleanupjob) | **GET** /history/cleanup/job | Find clean up history job (GET)
[**findCleanupJobs**](HistoryCleanupApi.md#findcleanupjobs) | **GET** /history/cleanup/jobs | Find clean up history jobs (GET)
[**getHistoryCleanupConfiguration**](HistoryCleanupApi.md#gethistorycleanupconfiguration) | **GET** /history/cleanup/configuration | Get History Cleanup Configuration


# **cleanupAsync**
> JobDto cleanupAsync(immediatelyDue)

Clean up history (POST)

Schedules asynchronous history cleanup (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).  **Note:** This endpoint will return at most a single history cleanup job. Since version `7.9.0` it is possible to configure multiple [parallel history cleanup jobs](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#parallel-execution). Use [`GET /history/cleanup/jobs`](https://docs.camunda.org/manual/7.20/reference/rest/history/history-cleanup/get-history-cleanup-jobs) to find all the available history cleanup jobs.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoryCleanupApi();
final immediatelyDue = true; // bool | When true the job will be scheduled for nearest future. When `false`, the job will be scheduled for next batch window start time. Default is `true`.

try {
    final result = api_instance.cleanupAsync(immediatelyDue);
    print(result);
} catch (e) {
    print('Exception when calling HistoryCleanupApi->cleanupAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **immediatelyDue** | **bool**| When true the job will be scheduled for nearest future. When `false`, the job will be scheduled for next batch window start time. Default is `true`. | [optional] 

### Return type

[**JobDto**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCleanupJob**
> JobDto findCleanupJob()

Find clean up history job (GET)

**Deprecated!** Use `GET /history/cleanup/jobs` instead.  Finds history cleanup job (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoryCleanupApi();

try {
    final result = api_instance.findCleanupJob();
    print(result);
} catch (e) {
    print('Exception when calling HistoryCleanupApi->findCleanupJob: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JobDto**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findCleanupJobs**
> List<JobDto> findCleanupJobs()

Find clean up history jobs (GET)

Finds history cleanup jobs (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoryCleanupApi();

try {
    final result = api_instance.findCleanupJobs();
    print(result);
} catch (e) {
    print('Exception when calling HistoryCleanupApi->findCleanupJobs: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<JobDto>**](JobDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoryCleanupConfiguration**
> HistoryCleanupConfigurationDto getHistoryCleanupConfiguration()

Get History Cleanup Configuration

Retrieves history cleanup batch window configuration (See [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoryCleanupApi();

try {
    final result = api_instance.getHistoryCleanupConfiguration();
    print(result);
} catch (e) {
    print('Exception when calling HistoryCleanupApi->getHistoryCleanupConfiguration: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HistoryCleanupConfigurationDto**](HistoryCleanupConfigurationDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

