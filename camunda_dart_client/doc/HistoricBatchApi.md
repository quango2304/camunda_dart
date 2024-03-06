# openapi.api.HistoricBatchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteHistoricBatch**](HistoricBatchApi.md#deletehistoricbatch) | **DELETE** /history/batch/{id} | Delete Historic Batch
[**getCleanableHistoricBatchesReport**](HistoricBatchApi.md#getcleanablehistoricbatchesreport) | **GET** /history/batch/cleanable-batch-report | Get Cleanable Batch Report
[**getCleanableHistoricBatchesReportCount**](HistoricBatchApi.md#getcleanablehistoricbatchesreportcount) | **GET** /history/batch/cleanable-batch-report/count | Get Cleanable Batch Report Count
[**getHistoricBatch**](HistoricBatchApi.md#gethistoricbatch) | **GET** /history/batch/{id} | Get Historic Batch
[**getHistoricBatches**](HistoricBatchApi.md#gethistoricbatches) | **GET** /history/batch | Get Historic Batches
[**getHistoricBatchesCount**](HistoricBatchApi.md#gethistoricbatchescount) | **GET** /history/batch/count | Get Historic Batch Count
[**setRemovalTimeAsyncHistoricBatch**](HistoricBatchApi.md#setremovaltimeasynchistoricbatch) | **POST** /history/batch/set-removal-time | Set Removal Time Async (POST)


# **deleteHistoricBatch**
> deleteHistoricBatch(id)

Delete Historic Batch

Deletes a historic batch by id, including related historic job logs.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final id = id_example; // String | The id of the batch to be deleted.

try {
    api_instance.deleteHistoricBatch(id);
} catch (e) {
    print('Exception when calling HistoricBatchApi->deleteHistoricBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the batch to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCleanableHistoricBatchesReport**
> List<CleanableHistoricBatchReportResultDto> getCleanableHistoricBatchesReport(sortBy, sortOrder, firstResult, maxResults)

Get Cleanable Batch Report

Retrieves a report about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ) so that you can tune the history time to live. These reports include the count of the finished batches, cleanable batches and type of the batch. The size of the result set can be retrieved by using the [Get Cleanable Batch Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report-count/) method.  **Please note:** The history time to live for batch operations does not support [Multi-Tenancy](https://docs.camunda.org/manual/7.20/user-guide/process-engine/multi-tenancy.md). The report will return an information for all batch operations (for all tenants) if you have permissions to see the history. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getCleanableHistoricBatchesReport(sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->getCleanableHistoricBatchesReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<CleanableHistoricBatchReportResultDto>**](CleanableHistoricBatchReportResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCleanableHistoricBatchesReportCount**
> CountResultDto getCleanableHistoricBatchesReportCount()

Get Cleanable Batch Report Count

Queries for the number of report results about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ). Takes the same parameters as the [Get Cleanable Batch Report](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();

try {
    final result = api_instance.getCleanableHistoricBatchesReportCount();
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->getCleanableHistoricBatchesReportCount: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricBatch**
> HistoricBatchDto getHistoricBatch(id)

Get Historic Batch

Retrieves a historic batch by id, according to the `HistoricBatch` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final id = id_example; // String | The id of the historic batch to be retrieved.

try {
    final result = api_instance.getHistoricBatch(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->getHistoricBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic batch to be retrieved. | 

### Return type

[**HistoricBatchDto**](HistoricBatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricBatches**
> List<HistoricBatchDto> getHistoricBatches(batchId, type, completed, tenantIdIn, withoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get Historic Batches

Queries for historic batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Historic Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final completed = true; // bool |  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricBatches(batchId, type, completed, tenantIdIn, withoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->getHistoricBatches: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **completed** | **bool**|  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricBatchDto>**](HistoricBatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricBatchesCount**
> CountResultDto getHistoricBatchesCount(batchId, type, completed, tenantIdIn, withoutTenantId)

Get Historic Batch Count

Requests the number of historic batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Historic Batches](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final completed = true; // bool |  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricBatchesCount(batchId, type, completed, tenantIdIn, withoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->getHistoricBatchesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **completed** | **bool**|  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRemovalTimeAsyncHistoricBatch**
> BatchDto setRemovalTimeAsyncHistoricBatch(setRemovalTimeToHistoricBatchesDto)

Set Removal Time Async (POST)

Sets the removal time to multiple historic batches asynchronously (batch).  At least __historicBatchIds__ or __historicBatchQuery__ has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricBatchApi();
final setRemovalTimeToHistoricBatchesDto = SetRemovalTimeToHistoricBatchesDto(); // SetRemovalTimeToHistoricBatchesDto | 

try {
    final result = api_instance.setRemovalTimeAsyncHistoricBatch(setRemovalTimeToHistoricBatchesDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricBatchApi->setRemovalTimeAsyncHistoricBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRemovalTimeToHistoricBatchesDto** | [**SetRemovalTimeToHistoricBatchesDto**](SetRemovalTimeToHistoricBatchesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

