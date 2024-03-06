# openapi.api.HistoricDecisionInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAsync**](HistoricDecisionInstanceApi.md#deleteasync) | **POST** /history/decision-instance/delete | Delete Async (POST)
[**getHistoricDecisionInstance**](HistoricDecisionInstanceApi.md#gethistoricdecisioninstance) | **GET** /history/decision-instance/{id} | Get Historic Decision Instance
[**getHistoricDecisionInstances**](HistoricDecisionInstanceApi.md#gethistoricdecisioninstances) | **GET** /history/decision-instance | Get Historic Decision Instances
[**getHistoricDecisionInstancesCount**](HistoricDecisionInstanceApi.md#gethistoricdecisioninstancescount) | **GET** /history/decision-instance/count | Get Historic Decision Instance Count
[**setRemovalTimeAsyncHistoricDecisionInstance**](HistoricDecisionInstanceApi.md#setremovaltimeasynchistoricdecisioninstance) | **POST** /history/decision-instance/set-removal-time | Set Removal Time Async (POST)


# **deleteAsync**
> BatchDto deleteAsync(deleteHistoricDecisionInstancesDto)

Delete Async (POST)

Delete multiple historic decision instances asynchronously (batch). At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery`  has to be provided. If both are provided then all instances matching query  criterion and instances from the list will be deleted.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionInstanceApi();
final deleteHistoricDecisionInstancesDto = DeleteHistoricDecisionInstancesDto(); // DeleteHistoricDecisionInstancesDto | 

try {
    final result = api_instance.deleteAsync(deleteHistoricDecisionInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionInstanceApi->deleteAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteHistoricDecisionInstancesDto** | [**DeleteHistoricDecisionInstancesDto**](DeleteHistoricDecisionInstancesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricDecisionInstance**
> HistoricDecisionInstanceDto getHistoricDecisionInstance(id, includeInputs, includeOutputs, disableBinaryFetching, disableCustomObjectDeserialization)

Get Historic Decision Instance

Retrieves a historic decision instance by id, according to the  `HistoricDecisionInstance` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionInstanceApi();
final id = id_example; // String | The id of the historic decision instance to be retrieved.
final includeInputs = true; // bool | Include input values in the result. Value may only be `true`, as `false` is the default behavior.
final includeOutputs = true; // bool | Include output values in the result. Value may only be `true`, as `false` is the default behavior.
final disableBinaryFetching = true; // bool | Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
final disableCustomObjectDeserialization = true; // bool | Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getHistoricDecisionInstance(id, includeInputs, includeOutputs, disableBinaryFetching, disableCustomObjectDeserialization);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionInstanceApi->getHistoricDecisionInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic decision instance to be retrieved. | 
 **includeInputs** | **bool**| Include input values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeOutputs** | **bool**| Include output values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **disableBinaryFetching** | **bool**| Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **disableCustomObjectDeserialization** | **bool**| Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**HistoricDecisionInstanceDto**](HistoricDecisionInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricDecisionInstances**
> List<HistoricDecisionInstanceDto> getHistoricDecisionInstances(decisionInstanceId, decisionInstanceIdIn, decisionDefinitionId, decisionDefinitionIdIn, decisionDefinitionKey, decisionDefinitionKeyIn, decisionDefinitionName, decisionDefinitionNameLike, processDefinitionId, processDefinitionKey, processInstanceId, caseDefinitionId, caseDefinitionKey, caseInstanceId, activityIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, evaluatedBefore, evaluatedAfter, userId, rootDecisionInstanceId, rootDecisionInstancesOnly, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, includeInputs, includeOutputs, disableBinaryFetching, disableCustomObjectDeserialization, sortBy, sortOrder, firstResult, maxResults)

Get Historic Decision Instances

Queries for historic decision instances that fulfill the given parameters.  The size of the result set can be retrieved by using the  [Get Historic Decision Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query-count/)  method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionInstanceApi();
final decisionInstanceId = decisionInstanceId_example; // String | Filter by decision instance id.
final decisionInstanceIdIn = decisionInstanceIdIn_example; // String | Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
final decisionDefinitionId = decisionDefinitionId_example; // String | Filter by the decision definition the instances belongs to.
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
final decisionDefinitionKey = decisionDefinitionKey_example; // String | Filter by the key of the decision definition the instances belongs to.
final decisionDefinitionKeyIn = decisionDefinitionKeyIn_example; // String | Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
final decisionDefinitionName = decisionDefinitionName_example; // String | Filter by the name of the decision definition the instances belongs to.
final decisionDefinitionNameLike = decisionDefinitionNameLike_example; // String | Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the instances belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances belongs to.
final processInstanceId = processInstanceId_example; // String | Filter by the process instance the instances belongs to.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by the case definition the instances belongs to.
final caseDefinitionKey = caseDefinitionKey_example; // String | Filter by the key of the case definition the instances belongs to.
final caseInstanceId = caseInstanceId_example; // String | Filter by the case instance the instances belongs to.
final activityIdIn = activityIdIn_example; // String | Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final evaluatedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final evaluatedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final userId = userId_example; // String | Restrict to instances that were evaluated by the given user.
final rootDecisionInstanceId = rootDecisionInstanceId_example; // String | Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
final rootDecisionInstancesOnly = true; // bool | Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by the decision requirements definition the instances belongs to.
final decisionRequirementsDefinitionKey = decisionRequirementsDefinitionKey_example; // String | Filter by the key of the decision requirements definition the instances belongs to.
final includeInputs = true; // bool | Include input values in the result. Value may only be `true`, as `false` is the default behavior.
final includeOutputs = true; // bool | Include output values in the result. Value may only be `true`, as `false` is the default behavior.
final disableBinaryFetching = true; // bool | Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior.
final disableCustomObjectDeserialization = true; // bool | Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getHistoricDecisionInstances(decisionInstanceId, decisionInstanceIdIn, decisionDefinitionId, decisionDefinitionIdIn, decisionDefinitionKey, decisionDefinitionKeyIn, decisionDefinitionName, decisionDefinitionNameLike, processDefinitionId, processDefinitionKey, processInstanceId, caseDefinitionId, caseDefinitionKey, caseInstanceId, activityIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, evaluatedBefore, evaluatedAfter, userId, rootDecisionInstanceId, rootDecisionInstancesOnly, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, includeInputs, includeOutputs, disableBinaryFetching, disableCustomObjectDeserialization, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionInstanceApi->getHistoricDecisionInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionInstanceId** | **String**| Filter by decision instance id. | [optional] 
 **decisionInstanceIdIn** | **String**| Filter by decision instance ids. Must be a comma-separated list of decision instance ids. | [optional] 
 **decisionDefinitionId** | **String**| Filter by the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionIdIn** | **String**| Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids. | [optional] 
 **decisionDefinitionKey** | **String**| Filter by the key of the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionKeyIn** | **String**| Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys. | [optional] 
 **decisionDefinitionName** | **String**| Filter by the name of the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionNameLike** | **String**| Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the instances belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances belongs to. | [optional] 
 **processInstanceId** | **String**| Filter by the process instance the instances belongs to. | [optional] 
 **caseDefinitionId** | **String**| Filter by the case definition the instances belongs to. | [optional] 
 **caseDefinitionKey** | **String**| Filter by the key of the case definition the instances belongs to. | [optional] 
 **caseInstanceId** | **String**| Filter by the case instance the instances belongs to. | [optional] 
 **activityIdIn** | **String**| Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids. | [optional] 
 **activityInstanceIdIn** | **String**| Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **evaluatedBefore** | **DateTime**| Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **evaluatedAfter** | **DateTime**| Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **userId** | **String**| Restrict to instances that were evaluated by the given user. | [optional] 
 **rootDecisionInstanceId** | **String**| Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id. | [optional] 
 **rootDecisionInstancesOnly** | **bool**| Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **decisionRequirementsDefinitionId** | **String**| Filter by the decision requirements definition the instances belongs to. | [optional] 
 **decisionRequirementsDefinitionKey** | **String**| Filter by the key of the decision requirements definition the instances belongs to. | [optional] 
 **includeInputs** | **bool**| Include input values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeOutputs** | **bool**| Include output values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **disableBinaryFetching** | **bool**| Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **disableCustomObjectDeserialization** | **bool**| Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<HistoricDecisionInstanceDto>**](HistoricDecisionInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricDecisionInstancesCount**
> CountResultDto getHistoricDecisionInstancesCount(decisionInstanceId, decisionInstanceIdIn, decisionDefinitionId, decisionDefinitionIdIn, decisionDefinitionKey, decisionDefinitionKeyIn, decisionDefinitionName, decisionDefinitionNameLike, processDefinitionId, processDefinitionKey, processInstanceId, caseDefinitionId, caseDefinitionKey, caseInstanceId, activityIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, evaluatedBefore, evaluatedAfter, userId, rootDecisionInstanceId, rootDecisionInstancesOnly, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey)

Get Historic Decision Instance Count

Queries for the number of historic decision instances that fulfill the given parameters.  Takes the same parameters as the  [Get Historic Decision Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-instance/get-decision-instance-query/)  method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionInstanceApi();
final decisionInstanceId = decisionInstanceId_example; // String | Filter by decision instance id.
final decisionInstanceIdIn = decisionInstanceIdIn_example; // String | Filter by decision instance ids. Must be a comma-separated list of decision instance ids.
final decisionDefinitionId = decisionDefinitionId_example; // String | Filter by the decision definition the instances belongs to.
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids.
final decisionDefinitionKey = decisionDefinitionKey_example; // String | Filter by the key of the decision definition the instances belongs to.
final decisionDefinitionKeyIn = decisionDefinitionKeyIn_example; // String | Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys.
final decisionDefinitionName = decisionDefinitionName_example; // String | Filter by the name of the decision definition the instances belongs to.
final decisionDefinitionNameLike = decisionDefinitionNameLike_example; // String | Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the instances belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances belongs to.
final processInstanceId = processInstanceId_example; // String | Filter by the process instance the instances belongs to.
final caseDefinitionId = caseDefinitionId_example; // String | Filter by the case definition the instances belongs to.
final caseDefinitionKey = caseDefinitionKey_example; // String | Filter by the key of the case definition the instances belongs to.
final caseInstanceId = caseInstanceId_example; // String | Filter by the case instance the instances belongs to.
final activityIdIn = activityIdIn_example; // String | Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final evaluatedBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final evaluatedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final userId = userId_example; // String | Restrict to instances that were evaluated by the given user.
final rootDecisionInstanceId = rootDecisionInstanceId_example; // String | Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id.
final rootDecisionInstancesOnly = true; // bool | Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior.
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by the decision requirements definition the instances belongs to.
final decisionRequirementsDefinitionKey = decisionRequirementsDefinitionKey_example; // String | Filter by the key of the decision requirements definition the instances belongs to.

try {
    final result = api_instance.getHistoricDecisionInstancesCount(decisionInstanceId, decisionInstanceIdIn, decisionDefinitionId, decisionDefinitionIdIn, decisionDefinitionKey, decisionDefinitionKeyIn, decisionDefinitionName, decisionDefinitionNameLike, processDefinitionId, processDefinitionKey, processInstanceId, caseDefinitionId, caseDefinitionKey, caseInstanceId, activityIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, evaluatedBefore, evaluatedAfter, userId, rootDecisionInstanceId, rootDecisionInstancesOnly, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionInstanceApi->getHistoricDecisionInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionInstanceId** | **String**| Filter by decision instance id. | [optional] 
 **decisionInstanceIdIn** | **String**| Filter by decision instance ids. Must be a comma-separated list of decision instance ids. | [optional] 
 **decisionDefinitionId** | **String**| Filter by the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionIdIn** | **String**| Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids. | [optional] 
 **decisionDefinitionKey** | **String**| Filter by the key of the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionKeyIn** | **String**| Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys. | [optional] 
 **decisionDefinitionName** | **String**| Filter by the name of the decision definition the instances belongs to. | [optional] 
 **decisionDefinitionNameLike** | **String**| Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the instances belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances belongs to. | [optional] 
 **processInstanceId** | **String**| Filter by the process instance the instances belongs to. | [optional] 
 **caseDefinitionId** | **String**| Filter by the case definition the instances belongs to. | [optional] 
 **caseDefinitionKey** | **String**| Filter by the key of the case definition the instances belongs to. | [optional] 
 **caseInstanceId** | **String**| Filter by the case instance the instances belongs to. | [optional] 
 **activityIdIn** | **String**| Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids. | [optional] 
 **activityInstanceIdIn** | **String**| Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **evaluatedBefore** | **DateTime**| Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **evaluatedAfter** | **DateTime**| Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **userId** | **String**| Restrict to instances that were evaluated by the given user. | [optional] 
 **rootDecisionInstanceId** | **String**| Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id. | [optional] 
 **rootDecisionInstancesOnly** | **bool**| Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **decisionRequirementsDefinitionId** | **String**| Filter by the decision requirements definition the instances belongs to. | [optional] 
 **decisionRequirementsDefinitionKey** | **String**| Filter by the key of the decision requirements definition the instances belongs to. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRemovalTimeAsyncHistoricDecisionInstance**
> BatchDto setRemovalTimeAsyncHistoricDecisionInstance(setRemovalTimeToHistoricDecisionInstancesDto)

Set Removal Time Async (POST)

Sets the removal time to multiple historic decision instances asynchronously (batch).  At least `historicDecisionInstanceIds` or `historicDecisionInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionInstanceApi();
final setRemovalTimeToHistoricDecisionInstancesDto = SetRemovalTimeToHistoricDecisionInstancesDto(); // SetRemovalTimeToHistoricDecisionInstancesDto | 

try {
    final result = api_instance.setRemovalTimeAsyncHistoricDecisionInstance(setRemovalTimeToHistoricDecisionInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionInstanceApi->setRemovalTimeAsyncHistoricDecisionInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setRemovalTimeToHistoricDecisionInstancesDto** | [**SetRemovalTimeToHistoricDecisionInstancesDto**](SetRemovalTimeToHistoricDecisionInstancesDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

