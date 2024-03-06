# openapi.api.EventSubscriptionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEventSubscriptions**](EventSubscriptionApi.md#geteventsubscriptions) | **GET** /event-subscription | Get List
[**getEventSubscriptionsCount**](EventSubscriptionApi.md#geteventsubscriptionscount) | **GET** /event-subscription/count | Get List Count


# **getEventSubscriptions**
> List<EventSubscriptionDto> getEventSubscriptions(eventSubscriptionId, eventName, eventType, executionId, processInstanceId, activityId, tenantIdIn, withoutTenantId, includeEventSubscriptionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for event subscriptions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Event Subscriptions count](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = EventSubscriptionApi();
final eventSubscriptionId = eventSubscriptionId_example; // String | Only select subscription with the given id.
final eventName = eventName_example; // String | Only select subscriptions for events with the given name.
final eventType = eventType_example; // String | Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
final executionId = executionId_example; // String | Only select subscriptions that belong to an execution with the given id.
final processInstanceId = processInstanceId_example; // String | Only select subscriptions that belong to a process instance with the given id.
final activityId = activityId_example; // String | Only select subscriptions that belong to an activity with the given id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
final withoutTenantId = true; // bool | Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
final includeEventSubscriptionsWithoutTenantId = true; // bool | Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getEventSubscriptions(eventSubscriptionId, eventName, eventType, executionId, processInstanceId, activityId, tenantIdIn, withoutTenantId, includeEventSubscriptionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling EventSubscriptionApi->getEventSubscriptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventSubscriptionId** | **String**| Only select subscription with the given id. | [optional] 
 **eventName** | **String**| Only select subscriptions for events with the given name. | [optional] 
 **eventType** | **String**| Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`. | [optional] 
 **executionId** | **String**| Only select subscriptions that belong to an execution with the given id. | [optional] 
 **processInstanceId** | **String**| Only select subscriptions that belong to a process instance with the given id. | [optional] 
 **activityId** | **String**| Only select subscriptions that belong to an activity with the given id. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeEventSubscriptionsWithoutTenantId** | **bool**| Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<EventSubscriptionDto>**](EventSubscriptionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventSubscriptionsCount**
> CountResultDto getEventSubscriptionsCount(eventSubscriptionId, eventName, eventType, executionId, processInstanceId, activityId, tenantIdIn, withoutTenantId, includeEventSubscriptionsWithoutTenantId)

Get List Count

Queries for the number of event subscriptions that fulfill given parameters. Takes the same parameters as the [Get Event Subscriptions](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = EventSubscriptionApi();
final eventSubscriptionId = eventSubscriptionId_example; // String | Only select subscription with the given id.
final eventName = eventName_example; // String | Only select subscriptions for events with the given name.
final eventType = eventType_example; // String | Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
final executionId = executionId_example; // String | Only select subscriptions that belong to an execution with the given id.
final processInstanceId = processInstanceId_example; // String | Only select subscriptions that belong to a process instance with the given id.
final activityId = activityId_example; // String | Only select subscriptions that belong to an activity with the given id.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
final withoutTenantId = true; // bool | Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
final includeEventSubscriptionsWithoutTenantId = true; // bool | Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getEventSubscriptionsCount(eventSubscriptionId, eventName, eventType, executionId, processInstanceId, activityId, tenantIdIn, withoutTenantId, includeEventSubscriptionsWithoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling EventSubscriptionApi->getEventSubscriptionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eventSubscriptionId** | **String**| Only select subscription with the given id. | [optional] 
 **eventName** | **String**| Only select subscriptions for events with the given name. | [optional] 
 **eventType** | **String**| Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`. | [optional] 
 **executionId** | **String**| Only select subscriptions that belong to an execution with the given id. | [optional] 
 **processInstanceId** | **String**| Only select subscriptions that belong to a process instance with the given id. | [optional] 
 **activityId** | **String**| Only select subscriptions that belong to an activity with the given id. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeEventSubscriptionsWithoutTenantId** | **bool**| Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

