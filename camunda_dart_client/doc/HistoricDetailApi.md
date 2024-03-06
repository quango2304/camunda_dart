# openapi.api.HistoricDetailApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistoricDetails**](HistoricDetailApi.md#gethistoricdetails) | **GET** /history/detail | Get Historic Details
[**getHistoricDetailsCount**](HistoricDetailApi.md#gethistoricdetailscount) | **GET** /history/detail/count | Get Historic Detail Count
[**historicDetail**](HistoricDetailApi.md#historicdetail) | **GET** /history/detail/{id} | Get Historic Detail
[**historicDetailBinary**](HistoricDetailApi.md#historicdetailbinary) | **GET** /history/detail/{id}/data | Get Historic Detail (Binary)
[**queryHistoricDetails**](HistoricDetailApi.md#queryhistoricdetails) | **POST** /history/detail | Get Historic Details (POST)


# **getHistoricDetails**
> List<HistoricDetailDto> getHistoricDetails(processInstanceId, processInstanceIdIn, executionId, taskId, activityInstanceId, caseInstanceId, caseExecutionId, variableInstanceId, variableTypeIn, tenantIdIn, withoutTenantId, userOperationId, formFields, variableUpdates, excludeTaskDetails, initial, occurredBefore, occurredAfter, sortBy, sortOrder, firstResult, maxResults, deserializeValues)

Get Historic Details

Queries for historic details that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDetailApi();
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include historic details which belong to one of the passed comma-separated process instance ids.
final executionId = executionId_example; // String | Filter by execution id.
final taskId = taskId_example; // String | Filter by task id.
final activityInstanceId = activityInstanceId_example; // String | Filter by activity instance id.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by case execution id.
final variableInstanceId = variableInstanceId_example; // String | Filter by variable instance id.
final variableTypeIn = variableTypeIn_example; // String | Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids.
final withoutTenantId = true; // bool | Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final userOperationId = userOperationId_example; // String | Filter by a user operation id.
final formFields = true; // bool | Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
final variableUpdates = true; // bool | Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
final excludeTaskDetails = true; // bool | Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
final initial = true; // bool | Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
final occurredBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final occurredAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getHistoricDetails(processInstanceId, processInstanceIdIn, executionId, taskId, activityInstanceId, caseInstanceId, caseExecutionId, variableInstanceId, variableTypeIn, tenantIdIn, withoutTenantId, userOperationId, formFields, variableUpdates, excludeTaskDetails, initial, occurredBefore, occurredAfter, sortBy, sortOrder, firstResult, maxResults, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDetailApi->getHistoricDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceIdIn** | **String**| Only include historic details which belong to one of the passed comma-separated process instance ids. | [optional] 
 **executionId** | **String**| Filter by execution id. | [optional] 
 **taskId** | **String**| Filter by task id. | [optional] 
 **activityInstanceId** | **String**| Filter by activity instance id. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by case execution id. | [optional] 
 **variableInstanceId** | **String**| Filter by variable instance id. | [optional] 
 **variableTypeIn** | **String**| Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **userOperationId** | **String**| Filter by a user operation id. | [optional] 
 **formFields** | **bool**| Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **variableUpdates** | **bool**| Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **excludeTaskDetails** | **bool**| Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **initial** | **bool**| Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **occurredBefore** | **DateTime**| Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **occurredAfter** | **DateTime**| Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**List<HistoricDetailDto>**](HistoricDetailDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricDetailsCount**
> CountResultDto getHistoricDetailsCount(processInstanceId, processInstanceIdIn, executionId, taskId, activityInstanceId, caseInstanceId, caseExecutionId, variableInstanceId, variableTypeIn, tenantIdIn, withoutTenantId, userOperationId, formFields, variableUpdates, excludeTaskDetails, initial, occurredBefore, occurredAfter)

Get Historic Detail Count

Queries for the number of historic details that fulfill the given parameters. Takes the same parameters as the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDetailApi();
final processInstanceId = processInstanceId_example; // String | Filter by process instance id.
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include historic details which belong to one of the passed comma-separated process instance ids.
final executionId = executionId_example; // String | Filter by execution id.
final taskId = taskId_example; // String | Filter by task id.
final activityInstanceId = activityInstanceId_example; // String | Filter by activity instance id.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final caseExecutionId = caseExecutionId_example; // String | Filter by case execution id.
final variableInstanceId = variableInstanceId_example; // String | Filter by variable instance id.
final variableTypeIn = variableTypeIn_example; // String | Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids.
final withoutTenantId = true; // bool | Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final userOperationId = userOperationId_example; // String | Filter by a user operation id.
final formFields = true; // bool | Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
final variableUpdates = true; // bool | Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
final excludeTaskDetails = true; // bool | Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
final initial = true; // bool | Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
final occurredBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
final occurredAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.

try {
    final result = api_instance.getHistoricDetailsCount(processInstanceId, processInstanceIdIn, executionId, taskId, activityInstanceId, caseInstanceId, caseExecutionId, variableInstanceId, variableTypeIn, tenantIdIn, withoutTenantId, userOperationId, formFields, variableUpdates, excludeTaskDetails, initial, occurredBefore, occurredAfter);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDetailApi->getHistoricDetailsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceId** | **String**| Filter by process instance id. | [optional] 
 **processInstanceIdIn** | **String**| Only include historic details which belong to one of the passed comma-separated process instance ids. | [optional] 
 **executionId** | **String**| Filter by execution id. | [optional] 
 **taskId** | **String**| Filter by task id. | [optional] 
 **activityInstanceId** | **String**| Filter by activity instance id. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **caseExecutionId** | **String**| Filter by case execution id. | [optional] 
 **variableInstanceId** | **String**| Filter by variable instance id. | [optional] 
 **variableTypeIn** | **String**| Only include historic details where the variable updates belong to one of the passed comma-separated list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **userOperationId** | **String**| Filter by a user operation id. | [optional] 
 **formFields** | **bool**| Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **variableUpdates** | **bool**| Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **excludeTaskDetails** | **bool**| Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **initial** | **bool**| Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **occurredBefore** | **DateTime**| Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
 **occurredAfter** | **DateTime**| Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historicDetail**
> HistoricDetailDto historicDetail(id, deserializeValue)

Get Historic Detail

Retrieves a historic detail by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDetailApi();
final id = id_example; // String | The id of the detail.
final deserializeValue = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.historicDetail(id, deserializeValue);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDetailApi->historicDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the detail. | 
 **deserializeValue** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**HistoricDetailDto**](HistoricDetailDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historicDetailBinary**
> MultipartFile historicDetailBinary(id)

Get Historic Detail (Binary)

Retrieves the content of a historic variable update by id. Applicable for byte array and file variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDetailApi();
final id = id_example; // String | The id of the historic variable update.

try {
    final result = api_instance.historicDetailBinary(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDetailApi->historicDetailBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the historic variable update. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricDetails**
> List<HistoricDetailDto> queryHistoricDetails(firstResult, maxResults, deserializeValues, historicDetailQueryDto)

Get Historic Details (POST)

Queries for historic details that fulfill the given parameters. This method is slightly more powerful than the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method because it allows sorting by multiple parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDetailApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
final historicDetailQueryDto = HistoricDetailQueryDto(); // HistoricDetailQueryDto | 

try {
    final result = api_instance.queryHistoricDetails(firstResult, maxResults, deserializeValues, historicDetailQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDetailApi->queryHistoricDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 
 **historicDetailQueryDto** | [**HistoricDetailQueryDto**](HistoricDetailQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricDetailDto>**](HistoricDetailDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

