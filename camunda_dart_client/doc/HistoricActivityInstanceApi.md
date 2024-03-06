# openapi.api.HistoricActivityInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricActivityInstance**](HistoricActivityInstanceApi.md#gethistoricactivityinstance) | **GET** /history/activity-instance/{id} | Get
[**getHistoricActivityInstances**](HistoricActivityInstanceApi.md#gethistoricactivityinstances) | **GET** /history/activity-instance | Get List
[**getHistoricActivityInstancesCount**](HistoricActivityInstanceApi.md#gethistoricactivityinstancescount) | **GET** /history/activity-instance/count | Get List Count
[**queryHistoricActivityInstances**](HistoricActivityInstanceApi.md#queryhistoricactivityinstances) | **POST** /history/activity-instance | Get List (POST)
[**queryHistoricActivityInstancesCount**](HistoricActivityInstanceApi.md#queryhistoricactivityinstancescount) | **POST** /history/activity-instance/count | Get List Count (POST)


# **getHistoricActivityInstance**
> HistoricActivityInstanceDto getHistoricActivityInstance(id)

Get

Retrieves a historic activity instance by id, according to the `HistoricActivityInstance` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricActivityInstanceApi();
final id = id_example; // String | The id of the historic activity instance to be retrieved.

try {
    final result = api_instance.getHistoricActivityInstance(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricActivityInstanceApi->getHistoricActivityInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic activity instance to be retrieved. | 

### Return type

[**HistoricActivityInstanceDto**](HistoricActivityInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricActivityInstances**
> List<HistoricActivityInstanceDto> getHistoricActivityInstances(sortBy, sortOrder, firstResult, maxResults, activityInstanceId, processInstanceId, processDefinitionId, executionId, activityId, activityName, activityType, taskAssignee, finished, unfinished, canceled, completeScope, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId)

Get List

Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricActivityInstanceApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final activityInstanceId = activityInstanceId_example; // String | Filter by activity instance id.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final executionId = executionId_example; // String | Filter by the id of the execution that executed the activity instance.
final activityId = activityId_example; // String | Filter by the activity id (according to BPMN 2.0 XML).
final activityName = activityName_example; // String | Filter by the activity name (according to BPMN 2.0 XML).
final activityType = activityType_example; // String | Filter by activity type.
final taskAssignee = taskAssignee_example; // String | Only include activity instances that are user tasks and assigned to a given user.
final finished = true; // bool | Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final unfinished = true; // bool | Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final canceled = true; // bool | Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final completeScope = true; // bool | Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricActivityInstances(sortBy, sortOrder, firstResult, maxResults, activityInstanceId, processInstanceId, processDefinitionId, executionId, activityId, activityName, activityType, taskAssignee, finished, unfinished, canceled, completeScope, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling HistoricActivityInstanceApi->getHistoricActivityInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **activityInstanceId** | **String**| Filter by activity instance id. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that executed the activity instance. | [optional] 
 **activityId** | **String**| Filter by the activity id (according to BPMN 2.0 XML). | [optional] 
 **activityName** | **String**| Filter by the activity name (according to BPMN 2.0 XML). | [optional] 
 **activityType** | **String**| Filter by activity type. | [optional] 
 **taskAssignee** | **String**| Only include activity instances that are user tasks and assigned to a given user. | [optional] 
 **finished** | **bool**| Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **unfinished** | **bool**| Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **canceled** | **bool**| Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **completeScope** | **bool**| Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **startedBefore** | **DateTime**| Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**List<HistoricActivityInstanceDto>**](HistoricActivityInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricActivityInstancesCount**
> CountResultDto getHistoricActivityInstancesCount(activityInstanceId, processInstanceId, processDefinitionId, executionId, activityId, activityName, activityType, taskAssignee, finished, unfinished, canceled, completeScope, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId)

Get List Count

Queries for the number of historic activity instances that fulfill the given parameters. Takes the same parameters as the [Get Historic Activity Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query/)  method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricActivityInstanceApi();
final activityInstanceId = activityInstanceId_example; // String | Filter by activity instance id.
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final executionId = executionId_example; // String | Filter by the id of the execution that executed the activity instance.
final activityId = activityId_example; // String | Filter by the activity id (according to BPMN 2.0 XML).
final activityName = activityName_example; // String | Filter by the activity name (according to BPMN 2.0 XML).
final activityType = activityType_example; // String | Filter by activity type.
final taskAssignee = taskAssignee_example; // String | Only include activity instances that are user tasks and assigned to a given user.
final finished = true; // bool | Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final unfinished = true; // bool | Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final canceled = true; // bool | Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
final completeScope = true; // bool | Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
final startedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final startedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final finishedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricActivityInstancesCount(activityInstanceId, processInstanceId, processDefinitionId, executionId, activityId, activityName, activityType, taskAssignee, finished, unfinished, canceled, completeScope, startedBefore, startedAfter, finishedBefore, finishedAfter, tenantIdIn, withoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling HistoricActivityInstanceApi->getHistoricActivityInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityInstanceId** | **String**| Filter by activity instance id. | [optional] 
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **executionId** | **String**| Filter by the id of the execution that executed the activity instance. | [optional] 
 **activityId** | **String**| Filter by the activity id (according to BPMN 2.0 XML). | [optional] 
 **activityName** | **String**| Filter by the activity name (according to BPMN 2.0 XML). | [optional] 
 **activityType** | **String**| Filter by activity type. | [optional] 
 **taskAssignee** | **String**| Only include activity instances that are user tasks and assigned to a given user. | [optional] 
 **finished** | **bool**| Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **unfinished** | **bool**| Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **canceled** | **bool**| Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **completeScope** | **bool**| Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
 **startedBefore** | **DateTime**| Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **startedAfter** | **DateTime**| Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedBefore** | **DateTime**| Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **finishedAfter** | **DateTime**| Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of ids. An activity instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricActivityInstances**
> List<HistoricActivityInstanceDto> queryHistoricActivityInstances(firstResult, maxResults, historicActivityInstanceQueryDto)

Get List (POST)

Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricActivityInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final historicActivityInstanceQueryDto = HistoricActivityInstanceQueryDto(); // HistoricActivityInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricActivityInstances(firstResult, maxResults, historicActivityInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricActivityInstanceApi->queryHistoricActivityInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **historicActivityInstanceQueryDto** | [**HistoricActivityInstanceQueryDto**](HistoricActivityInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricActivityInstanceDto>**](HistoricActivityInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricActivityInstancesCount**
> CountResultDto queryHistoricActivityInstancesCount(historicActivityInstanceQueryDto)

Get List Count (POST)

Queries for the number of historic activity instances that fulfill the given parameters.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricActivityInstanceApi();
final historicActivityInstanceQueryDto = HistoricActivityInstanceQueryDto(); // HistoricActivityInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricActivityInstancesCount(historicActivityInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricActivityInstanceApi->queryHistoricActivityInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicActivityInstanceQueryDto** | [**HistoricActivityInstanceQueryDto**](HistoricActivityInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

