# openapi.api.BatchApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteBatch**](BatchApi.md#deletebatch) | **DELETE** /batch/{id} | Delete
[**getBatch**](BatchApi.md#getbatch) | **GET** /batch/{id} | Get
[**getBatchStatistics**](BatchApi.md#getbatchstatistics) | **GET** /batch/statistics | Get Statistics
[**getBatchStatisticsCount**](BatchApi.md#getbatchstatisticscount) | **GET** /batch/statistics/count | Get Statistics Count
[**getBatches**](BatchApi.md#getbatches) | **GET** /batch | Get List
[**getBatchesCount**](BatchApi.md#getbatchescount) | **GET** /batch/count | Get List Count
[**updateBatchSuspensionState**](BatchApi.md#updatebatchsuspensionstate) | **PUT** /batch/{id}/suspended | Activate/Suspend


# **deleteBatch**
> deleteBatch(id, cascade)

Delete

Deletes a batch by id, including all related jobs and job definitions. Optionally also deletes the batch history.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final id = id_example; // String | The id of the batch to be deleted.
final cascade = true; // bool | `true`, if the historic batch and historic job logs for this batch should also be deleted.

try {
    api_instance.deleteBatch(id, cascade);
} catch (e) {
    print('Exception when calling BatchApi->deleteBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the batch to be deleted. | 
 **cascade** | **bool**| `true`, if the historic batch and historic job logs for this batch should also be deleted. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatch**
> BatchDto getBatch(id)

Get

Retrieves a batch by id, according to the Batch interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final id = id_example; // String | The id of the batch to be retrieved.

try {
    final result = api_instance.getBatch(id);
    print(result);
} catch (e) {
    print('Exception when calling BatchApi->getBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the batch to be retrieved. | 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchStatistics**
> List<BatchStatisticsDto> getBatchStatistics(sortBy, sortOrder, firstResult, maxResults, batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures)

Get Statistics

Queries for batch statistics that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the  [Get Batch Statistics Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final suspended = true; // bool | A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
final createdBy = createdBy_example; // String | Only include batches that were started by this user id.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withFailures = true; // bool | Only include batches having jobs with failures. Value can only be `true`.
final withoutFailures = true; // bool | Only include batches having jobs without failures. Value can only be `true`.

try {
    final result = api_instance.getBatchStatistics(sortBy, sortOrder, firstResult, maxResults, batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures);
    print(result);
} catch (e) {
    print('Exception when calling BatchApi->getBatchStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned. | [optional] 
 **createdBy** | **String**| Only include batches that were started by this user id. | [optional] 
 **startedBefore** | **DateTime**| Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withFailures** | **bool**| Only include batches having jobs with failures. Value can only be `true`. | [optional] 
 **withoutFailures** | **bool**| Only include batches having jobs without failures. Value can only be `true`. | [optional] 

### Return type

[**List<BatchStatisticsDto>**](BatchStatisticsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchStatisticsCount**
> CountResultDto getBatchStatisticsCount(batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures)

Get Statistics Count

Requests the number of batch statistics that fulfill the query criteria. Takes the same filtering parameters as the [Get Batch Statistics](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final suspended = true; // bool | A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
final createdBy = createdBy_example; // String | Only include batches that were started by this user id.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withFailures = true; // bool | Only include batches having jobs with failures. Value can only be `true`.
final withoutFailures = true; // bool | Only include batches having jobs without failures. Value can only be `true`.

try {
    final result = api_instance.getBatchStatisticsCount(batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures);
    print(result);
} catch (e) {
    print('Exception when calling BatchApi->getBatchStatisticsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned. | [optional] 
 **createdBy** | **String**| Only include batches that were started by this user id. | [optional] 
 **startedBefore** | **DateTime**| Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withFailures** | **bool**| Only include batches having jobs with failures. Value can only be `true`. | [optional] 
 **withoutFailures** | **bool**| Only include batches having jobs without failures. Value can only be `true`. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatches**
> List<BatchDto> getBatches(sortBy, sortOrder, firstResult, maxResults, batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures)

Get List

Queries for batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final suspended = true; // bool | A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
final createdBy = createdBy_example; // String | Only include batches that were started by this user id.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withFailures = true; // bool | Only include batches having jobs with failures. Value can only be `true`.
final withoutFailures = true; // bool | Only include batches having jobs without failures. Value can only be `true`.

try {
    final result = api_instance.getBatches(sortBy, sortOrder, firstResult, maxResults, batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures);
    print(result);
} catch (e) {
    print('Exception when calling BatchApi->getBatches: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned. | [optional] 
 **createdBy** | **String**| Only include batches that were started by this user id. | [optional] 
 **startedBefore** | **DateTime**| Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withFailures** | **bool**| Only include batches having jobs with failures. Value can only be `true`. | [optional] 
 **withoutFailures** | **bool**| Only include batches having jobs without failures. Value can only be `true`. | [optional] 

### Return type

[**List<BatchDto>**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchesCount**
> CountResultDto getBatchesCount(batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures)

Get List Count

Requests the number of batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Batches](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final batchId = batchId_example; // String | Filter by batch id.
final type = type_example; // String | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids.
final withoutTenantId = true; // bool | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final suspended = true; // bool | A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned.
final createdBy = createdBy_example; // String | Only include batches that were started by this user id.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final withFailures = true; // bool | Only include batches having jobs with failures. Value can only be `true`.
final withoutFailures = true; // bool | Only include batches having jobs without failures. Value can only be `true`.

try {
    final result = api_instance.getBatchesCount(batchId, type, tenantIdIn, withoutTenantId, suspended, createdBy, startedBefore, startedAfter, withFailures, withoutFailures);
    print(result);
} catch (e) {
    print('Exception when calling BatchApi->getBatchesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchId** | **String**| Filter by batch id. | [optional] 
 **type** | **String**| Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A batch matches if it has one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| A `Boolean` value which indicates whether only active or suspended batches should be included. When the value is set to `true`, only suspended batches will be returned and when the value is set to `false`, only active batches will be returned. | [optional] 
 **createdBy** | **String**| Only include batches that were started by this user id. | [optional] 
 **startedBefore** | **DateTime**| Only include batches that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Only include batches that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **withFailures** | **bool**| Only include batches having jobs with failures. Value can only be `true`. | [optional] 
 **withoutFailures** | **bool**| Only include batches having jobs without failures. Value can only be `true`. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBatchSuspensionState**
> updateBatchSuspensionState(id, suspensionStateDto)

Activate/Suspend

Activates or suspends a batch by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = BatchApi();
final id = id_example; // String | The id of the batch to activate or suspend.
final suspensionStateDto = SuspensionStateDto(); // SuspensionStateDto | 

try {
    api_instance.updateBatchSuspensionState(id, suspensionStateDto);
} catch (e) {
    print('Exception when calling BatchApi->updateBatchSuspensionState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the batch to activate or suspend. | 
 **suspensionStateDto** | [**SuspensionStateDto**](SuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

