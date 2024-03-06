# openapi.api.MetricsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTaskMetrics**](MetricsApi.md#deletetaskmetrics) | **DELETE** /metrics/task-worker | Delete Task Worker Metrics
[**getMetrics**](MetricsApi.md#getmetrics) | **GET** /metrics/{metrics-name}/sum | Get Sum
[**interval**](MetricsApi.md#interval) | **GET** /metrics | Get Metrics in Interval


# **deleteTaskMetrics**
> deleteTaskMetrics(date)

Delete Task Worker Metrics

Deletes all task worker metrics prior to the given date or all if no date is provided.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MetricsApi();
final date = 2013-10-20T19:20:30+01:00; // DateTime | The date prior to which all task worker metrics should be deleted.

try {
    api_instance.deleteTaskMetrics(date);
} catch (e) {
    print('Exception when calling MetricsApi->deleteTaskMetrics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **DateTime**| The date prior to which all task worker metrics should be deleted. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMetrics**
> MetricsResultDto getMetrics(metricsName, startDate, endDate)

Get Sum

Retrieves the `sum` (count) for a given metric.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MetricsApi();
final metricsName = metricsName_example; // String | The name of the metric.
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date (inclusive).
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date (exclusive).

try {
    final result = api_instance.getMetrics(metricsName, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->getMetrics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metricsName** | **String**| The name of the metric. | 
 **startDate** | **DateTime**| The start date (inclusive). | [optional] 
 **endDate** | **DateTime**| The end date (exclusive). | [optional] 

### Return type

[**MetricsResultDto**](MetricsResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **interval**
> List<MetricsIntervalResultDto> interval(name, reporter, startDate, endDate, firstResult, maxResults, interval, aggregateByReporter)

Get Metrics in Interval

Retrieves a list of metrics, aggregated for a given interval.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MetricsApi();
final name = name_example; // String | The name of the metric.
final reporter = reporter_example; // String | The name of the reporter (host), on which the metrics was logged. This will have value provided by the [hostname configuration property](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#hostname).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date (inclusive).
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date (exclusive).
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final interval = interval_example; // String | The interval for which the metrics should be aggregated. Time unit is seconds. Default: The interval is set to 15 minutes (900 seconds).
final aggregateByReporter = aggregateByReporter_example; // String | Aggregate metrics by reporter.

try {
    final result = api_instance.interval(name, reporter, startDate, endDate, firstResult, maxResults, interval, aggregateByReporter);
    print(result);
} catch (e) {
    print('Exception when calling MetricsApi->interval: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the metric. | [optional] 
 **reporter** | **String**| The name of the reporter (host), on which the metrics was logged. This will have value provided by the [hostname configuration property](https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine/#hostname). | [optional] 
 **startDate** | **DateTime**| The start date (inclusive). | [optional] 
 **endDate** | **DateTime**| The end date (exclusive). | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **interval** | **String**| The interval for which the metrics should be aggregated. Time unit is seconds. Default: The interval is set to 15 minutes (900 seconds). | [optional] [default to '900']
 **aggregateByReporter** | **String**| Aggregate metrics by reporter. | [optional] 

### Return type

[**List<MetricsIntervalResultDto>**](MetricsIntervalResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

