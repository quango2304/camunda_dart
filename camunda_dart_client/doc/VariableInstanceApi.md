# openapi.api.VariableInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVariableInstance**](VariableInstanceApi.md#getvariableinstance) | **GET** /variable-instance/{id} | Get Variable Instance
[**getVariableInstanceBinary**](VariableInstanceApi.md#getvariableinstancebinary) | **GET** /variable-instance/{id}/data | Get Variable Instance (Binary)
[**getVariableInstances**](VariableInstanceApi.md#getvariableinstances) | **GET** /variable-instance | Get Variable Instances
[**getVariableInstancesCount**](VariableInstanceApi.md#getvariableinstancescount) | **GET** /variable-instance/count | Get Variable Instance Count
[**queryVariableInstances**](VariableInstanceApi.md#queryvariableinstances) | **POST** /variable-instance | Get Variable Instances (POST)
[**queryVariableInstancesCount**](VariableInstanceApi.md#queryvariableinstancescount) | **POST** /variable-instance/count | Get Variable Instance Count (POST)


# **getVariableInstance**
> VariableInstanceDto getVariableInstance(id, deserializeValue)

Get Variable Instance

Retrieves a variable by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final id = id_example; // String | The id of the variable instance.
final deserializeValue = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:**  While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getVariableInstance(id, deserializeValue);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->getVariableInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the variable instance. | 
 **deserializeValue** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:**  While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**VariableInstanceDto**](VariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariableInstanceBinary**
> MultipartFile getVariableInstanceBinary(id)

Get Variable Instance (Binary)

Retrieves the content of a variable by id. Applicable for byte array and file variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final id = id_example; // String | The id of the variable instance.

try {
    final result = api_instance.getVariableInstanceBinary(id);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->getVariableInstanceBinary: $e\n');
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

# **getVariableInstances**
> List<VariableInstanceDto> getVariableInstances(variableName, variableNameLike, processInstanceIdIn, executionIdIn, caseInstanceIdIn, caseExecutionIdIn, taskIdIn, batchIdIn, activityInstanceIdIn, tenantIdIn, variableValues, variableNamesIgnoreCase, variableValuesIgnoreCase, variableScopeIdIn, sortBy, sortOrder, firstResult, maxResults, deserializeValues)

Get Variable Instances

Query for variable instances that fulfill given parameters. Parameters may be the properties of variable instances, such as the name or type. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final variableName = variableName_example; // String | Filter by variable instance name.
final variableNameLike = variableNameLike_example; // String | Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated process instance ids.
final executionIdIn = executionIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated execution ids.
final caseInstanceIdIn = caseInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated case instance ids.
final caseExecutionIdIn = caseExecutionIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated case execution ids.
final taskIdIn = taskIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated task ids.
final batchIdIn = batchIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated batch ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated tenant ids.
final variableValues = variableValues_example; // String | Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final variableScopeIdIn = variableScopeIdIn_example; // String | Only include variable instances which belong to one of passed scope ids.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getVariableInstances(variableName, variableNameLike, processInstanceIdIn, executionIdIn, caseInstanceIdIn, caseExecutionIdIn, taskIdIn, batchIdIn, activityInstanceIdIn, tenantIdIn, variableValues, variableNamesIgnoreCase, variableValuesIgnoreCase, variableScopeIdIn, sortBy, sortOrder, firstResult, maxResults, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->getVariableInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **String**| Filter by variable instance name. | [optional] 
 **variableNameLike** | **String**| Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`). | [optional] 
 **processInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated process instance ids. | [optional] 
 **executionIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated execution ids. | [optional] 
 **caseInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated case instance ids. | [optional] 
 **caseExecutionIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated case execution ids. | [optional] 
 **taskIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated task ids. | [optional] 
 **batchIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated batch ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated activity instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **variableValues** | **String**| Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **variableScopeIdIn** | **String**| Only include variable instances which belong to one of passed scope ids. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**List<VariableInstanceDto>**](VariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariableInstancesCount**
> CountResultDto getVariableInstancesCount(variableName, variableNameLike, processInstanceIdIn, executionIdIn, caseInstanceIdIn, caseExecutionIdIn, taskIdIn, batchIdIn, activityInstanceIdIn, tenantIdIn, variableValues, variableNamesIgnoreCase, variableValuesIgnoreCase, variableScopeIdIn)

Get Variable Instance Count

Query for the number of variable instances that fulfill given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final variableName = variableName_example; // String | Filter by variable instance name.
final variableNameLike = variableNameLike_example; // String | Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
final processInstanceIdIn = processInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated process instance ids.
final executionIdIn = executionIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated execution ids.
final caseInstanceIdIn = caseInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated case instance ids.
final caseExecutionIdIn = caseExecutionIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated case execution ids.
final taskIdIn = taskIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated task ids.
final batchIdIn = batchIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated batch ids.
final activityInstanceIdIn = activityInstanceIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated activity instance ids.
final tenantIdIn = tenantIdIn_example; // String | Only include variable instances which belong to one of the passed and comma-separated tenant ids.
final variableValues = variableValues_example; // String | Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final variableScopeIdIn = variableScopeIdIn_example; // String | Only include variable instances which belong to one of passed scope ids.

try {
    final result = api_instance.getVariableInstancesCount(variableName, variableNameLike, processInstanceIdIn, executionIdIn, caseInstanceIdIn, caseExecutionIdIn, taskIdIn, batchIdIn, activityInstanceIdIn, tenantIdIn, variableValues, variableNamesIgnoreCase, variableValuesIgnoreCase, variableScopeIdIn);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->getVariableInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableName** | **String**| Filter by variable instance name. | [optional] 
 **variableNameLike** | **String**| Filter by the variable instance name. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`). | [optional] 
 **processInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated process instance ids. | [optional] 
 **executionIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated execution ids. | [optional] 
 **caseInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated case instance ids. | [optional] 
 **caseExecutionIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated case execution ids. | [optional] 
 **taskIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated task ids. | [optional] 
 **batchIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated batch ids. | [optional] 
 **activityInstanceIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated activity instance ids. | [optional] 
 **tenantIdIn** | **String**| Only include variable instances which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **variableValues** | **String**| Only include variable instances that have the certain values. Value filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in `variableValues` case-insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in `variableValues` case-insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **variableScopeIdIn** | **String**| Only include variable instances which belong to one of passed scope ids. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryVariableInstances**
> List<VariableInstanceDto> queryVariableInstances(firstResult, maxResults, deserializeValues, variableInstanceQueryDto)

Get Variable Instances (POST)

Query for variable instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/get-query/) method because it allows filtering by multiple variable instances of types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.
final variableInstanceQueryDto = VariableInstanceQueryDto(); // VariableInstanceQueryDto | 

try {
    final result = api_instance.queryVariableInstances(firstResult, maxResults, deserializeValues, variableInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->queryVariableInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 
 **variableInstanceQueryDto** | [**VariableInstanceQueryDto**](VariableInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<VariableInstanceDto>**](VariableInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryVariableInstancesCount**
> CountResultDto queryVariableInstancesCount(variableInstanceQueryDto)

Get Variable Instance Count (POST)

Query for the number of variable instances that fulfill given parameters. This method takes the same message body as the [Get Variable Instances POST](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/post-query/) method and therefore it is slightly more powerful than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = VariableInstanceApi();
final variableInstanceQueryDto = VariableInstanceQueryDto(); // VariableInstanceQueryDto | 

try {
    final result = api_instance.queryVariableInstancesCount(variableInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling VariableInstanceApi->queryVariableInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableInstanceQueryDto** | [**VariableInstanceQueryDto**](VariableInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

