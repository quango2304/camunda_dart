# openapi.api.HistoricVariableInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteHistoricVariableInstance**](HistoricVariableInstanceApi.md#deletehistoricvariableinstance) | **DELETE** /history/variable-instance/{id} | Delete Variable Instance
[**getHistoricVariableInstance**](HistoricVariableInstanceApi.md#gethistoricvariableinstance) | **GET** /history/variable-instance/{id} | Get Variable Instance
[**getHistoricVariableInstanceBinary**](HistoricVariableInstanceApi.md#gethistoricvariableinstancebinary) | **GET** /history/variable-instance/{id}/data | Get Variable Instance (Binary)
[**getHistoricVariableInstances**](HistoricVariableInstanceApi.md#gethistoricvariableinstances) | **GET** /history/variable-instance | Get Variable Instances
[**getHistoricVariableInstancesCount**](HistoricVariableInstanceApi.md#gethistoricvariableinstancescount) | **GET** /history/variable-instance/count | Get Variable Instance Count
[**queryHistoricVariableInstances**](HistoricVariableInstanceApi.md#queryhistoricvariableinstances) | **POST** /history/variable-instance | Get Variable Instances (POST)
[**queryHistoricVariableInstancesCount**](HistoricVariableInstanceApi.md#queryhistoricvariableinstancescount) | **POST** /history/variable-instance/count | Get Variable Instance Count (POST)


# **deleteHistoricVariableInstance**
> deleteHistoricVariableInstance(id)

Delete Variable Instance

Deletes a historic variable instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final id = id_example; // String | The id of the variable instance.

try {
    api_instance.deleteHistoricVariableInstance(id);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->deleteHistoricVariableInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the variable instance. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricVariableInstance**
> HistoricVariableInstanceDto getHistoricVariableInstance(id, deserializeValues)

Get Variable Instance

Retrieves a historic variable by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final id = id_example; // String | The id of the variable instance.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getHistoricVariableInstance(id, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->getHistoricVariableInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the variable instance. | 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**HistoricVariableInstanceDto**](HistoricVariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricVariableInstanceBinary**
> MultipartFile getHistoricVariableInstanceBinary(id)

Get Variable Instance (Binary)

Retrieves the content of a historic variable by id. Applicable for variables that are serialized as binary data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final id = id_example; // String | The id of the variable instance.

try {
    final result = api_instance.getHistoricVariableInstanceBinary(id);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->getHistoricVariableInstanceBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the variable instance. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricVariableInstances**
> List<HistoricVariableInstanceDto> getHistoricVariableInstances(variableName, variableNameLike, variableValue, variableNamesIgnoreCase, variableValuesIgnoreCase, variableTypeIn, includeDeleted, processInstanceId, processInstanceIdIn, processDefinitionId, processDefinitionKey, executionIdIn, caseInstanceId, caseExecutionIdIn, caseActivityIdIn, taskIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, variableNameIn, sortBy, sortOrder, firstResult, maxResults, deserializeValues)

Get Variable Instances

Queries for historic variable instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final variableName = variableName_example; // String | Filter by variable name.
final variableNameLike = variableNameLike_example; // String | Restrict to variables with a name like the parameter.
final variableValue = Object; // Object | Filter by variable value. Is treated as a `String` object on server side.
final variableNamesIgnoreCase = true; // bool | Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final variableTypeIn = variableTypeIn_example; // String | Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
final includeDeleted = true; // bool | Include variables that has already been deleted during the execution.
final processInstanceId = processInstanceId_example; // String | Filter by the process instance the variable belongs to.
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the variable belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by a key of the process definition the variable belongs to.
final executionIdIn = executionIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
final caseInstanceId = caseInstanceId_example; // String | Filter by the case instance the variable belongs to.
final caseExecutionIdIn = caseExecutionIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
final caseActivityIdIn = caseActivityIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
final taskIdIn = taskIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
final withoutTenantId = true; // bool | Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final variableNameIn = variableNameIn_example; // String | Only include historic variable instances which belong to one of the passed and comma-separated variable names.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getHistoricVariableInstances(variableName, variableNameLike, variableValue, variableNamesIgnoreCase, variableValuesIgnoreCase, variableTypeIn, includeDeleted, processInstanceId, processInstanceIdIn, processDefinitionId, processDefinitionKey, executionIdIn, caseInstanceId, caseExecutionIdIn, caseActivityIdIn, taskIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, variableNameIn, sortBy, sortOrder, firstResult, maxResults, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->getHistoricVariableInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **String**| Filter by variable name. | [optional] 
 **variableNameLike** | **String**| Restrict to variables with a name like the parameter. | [optional] 
 **variableValue** | [**Object**](.md)| Filter by variable value. Is treated as a `String` object on server side. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **variableTypeIn** | **String**| Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'. | [optional] 
 **includeDeleted** | **bool**| Include variables that has already been deleted during the execution. | [optional] 
 **processInstanceId** | **String**| Filter by the process instance the variable belongs to. | [optional] 
 **processInstanceIdIn** | **String**| Only include historic variable instances which belong to one of the passed and comma-separated process instance ids. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the variable belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by a key of the process definition the variable belongs to. | [optional] 
 **executionIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated execution ids. | [optional] 
 **caseInstanceId** | **String**| Filter by the case instance the variable belongs to. | [optional] 
 **caseExecutionIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids. | [optional] 
 **caseActivityIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids. | [optional] 
 **taskIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated task ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include historic variable instances which belong to one of the passed and comma- separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **variableNameIn** | **String**| Only include historic variable instances which belong to one of the passed and comma-separated variable names. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**List<HistoricVariableInstanceDto>**](HistoricVariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHistoricVariableInstancesCount**
> CountResultDto getHistoricVariableInstancesCount(variableName, variableNameLike, variableValue, variableNamesIgnoreCase, variableValuesIgnoreCase, variableTypeIn, includeDeleted, processInstanceId, processInstanceIdIn, processDefinitionId, processDefinitionKey, executionIdIn, caseInstanceId, caseExecutionIdIn, caseActivityIdIn, taskIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, variableNameIn)

Get Variable Instance Count

Queries for the number of historic variable instances that fulfill the given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final variableName = variableName_example; // String | Filter by variable name.
final variableNameLike = variableNameLike_example; // String | Restrict to variables with a name like the parameter.
final variableValue = Object; // Object | Filter by variable value. Is treated as a `String` object on server side.
final variableNamesIgnoreCase = true; // bool | Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final variableTypeIn = variableTypeIn_example; // String | Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'.
final includeDeleted = true; // bool | Include variables that has already been deleted during the execution.
final processInstanceId = processInstanceId_example; // String | Filter by the process instance the variable belongs to.
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include historic variable instances which belong to one of the passed and comma-separated process instance ids.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the variable belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by a key of the process definition the variable belongs to.
final executionIdIn = executionIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated execution ids.
final caseInstanceId = caseInstanceId_example; // String | Filter by the case instance the variable belongs to.
final caseExecutionIdIn = caseExecutionIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids.
final caseActivityIdIn = caseActivityIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids.
final taskIdIn = taskIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated task ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include historic variable instances which belong to one of the passed and comma- separated tenant ids.
final withoutTenantId = true; // bool | Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final variableNameIn = variableNameIn_example; // String | Only include historic variable instances which belong to one of the passed and comma-separated variable names.

try {
    final result = api_instance.getHistoricVariableInstancesCount(variableName, variableNameLike, variableValue, variableNamesIgnoreCase, variableValuesIgnoreCase, variableTypeIn, includeDeleted, processInstanceId, processInstanceIdIn, processDefinitionId, processDefinitionKey, executionIdIn, caseInstanceId, caseExecutionIdIn, caseActivityIdIn, taskIdIn, activityInstanceIdIn, tenantIdIn, withoutTenantId, variableNameIn);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->getHistoricVariableInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **String**| Filter by variable name. | [optional] 
 **variableNameLike** | **String**| Restrict to variables with a name like the parameter. | [optional] 
 **variableValue** | [**Object**](.md)| Filter by variable value. Is treated as a `String` object on server side. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match the variable name provided in `variableName` and `variableNameLike` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match the variable value provided in `variableValue` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **variableTypeIn** | **String**| Only include historic variable instances which belong to one of the passed and comma- separated variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type 'serializable'. | [optional] 
 **includeDeleted** | **bool**| Include variables that has already been deleted during the execution. | [optional] 
 **processInstanceId** | **String**| Filter by the process instance the variable belongs to. | [optional] 
 **processInstanceIdIn** | **String**| Only include historic variable instances which belong to one of the passed and comma-separated process instance ids. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the variable belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by a key of the process definition the variable belongs to. | [optional] 
 **executionIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated execution ids. | [optional] 
 **caseInstanceId** | **String**| Filter by the case instance the variable belongs to. | [optional] 
 **caseExecutionIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated case execution ids. | [optional] 
 **caseActivityIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated case activity ids. | [optional] 
 **taskIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated task ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include historic variable instances which belong to one of the passed and and comma-separated activity instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include historic variable instances which belong to one of the passed and comma- separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include historic variable instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **variableNameIn** | **String**| Only include historic variable instances which belong to one of the passed and comma-separated variable names. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricVariableInstances**
> List<HistoricVariableInstanceDto> queryHistoricVariableInstances(firstResult, maxResults, deserializeValues, historicVariableInstanceQueryDto)

Get Variable Instances (POST)

Queries for historic variable instances that fulfill the given parameters. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method because it allows filtering by variable values of the different types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
final historicVariableInstanceQueryDto = HistoricVariableInstanceQueryDto(); // HistoricVariableInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricVariableInstances(firstResult, maxResults, deserializeValues, historicVariableInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->queryHistoricVariableInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 
 **historicVariableInstanceQueryDto** | [**HistoricVariableInstanceQueryDto**](HistoricVariableInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<HistoricVariableInstanceDto>**](HistoricVariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryHistoricVariableInstancesCount**
> CountResultDto queryHistoricVariableInstancesCount(historicVariableInstanceQueryDto)

Get Variable Instance Count (POST)

Queries for historic variable instances that fulfill the given parameters. This method takes the same message body as the [Get Variable Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/post-variable-instance-query/) method and therefore it is more powerful regarding variable values than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricVariableInstanceApi();
final historicVariableInstanceQueryDto = HistoricVariableInstanceQueryDto(); // HistoricVariableInstanceQueryDto | 

try {
    final result = api_instance.queryHistoricVariableInstancesCount(historicVariableInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling HistoricVariableInstanceApi->queryHistoricVariableInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **historicVariableInstanceQueryDto** | [**HistoricVariableInstanceQueryDto**](HistoricVariableInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

