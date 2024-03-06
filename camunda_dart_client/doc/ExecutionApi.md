# openapi.api.ExecutionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIncident**](ExecutionApi.md#createincident) | **POST** /execution/{id}/create-incident | Create Incident
[**deleteLocalExecutionVariable**](ExecutionApi.md#deletelocalexecutionvariable) | **DELETE** /execution/{id}/localVariables/{varName} | Delete Local Execution Variable
[**getExecution**](ExecutionApi.md#getexecution) | **GET** /execution/{id} | Get Execution
[**getExecutions**](ExecutionApi.md#getexecutions) | **GET** /execution | Get Executions
[**getExecutionsCount**](ExecutionApi.md#getexecutionscount) | **GET** /execution/count | Get Execution Count
[**getLocalExecutionVariable**](ExecutionApi.md#getlocalexecutionvariable) | **GET** /execution/{id}/localVariables/{varName} | Get Local Execution Variable
[**getLocalExecutionVariableBinary**](ExecutionApi.md#getlocalexecutionvariablebinary) | **GET** /execution/{id}/localVariables/{varName}/data | Get Local Execution Variable (Binary)
[**getLocalExecutionVariables**](ExecutionApi.md#getlocalexecutionvariables) | **GET** /execution/{id}/localVariables | Get Local Execution Variables
[**getMessageEventSubscription**](ExecutionApi.md#getmessageeventsubscription) | **GET** /execution/{id}/messageSubscriptions/{messageName} | Get Message Event Subscription
[**modifyLocalExecutionVariables**](ExecutionApi.md#modifylocalexecutionvariables) | **POST** /execution/{id}/localVariables | Update/Delete Local Execution Variables
[**putLocalExecutionVariable**](ExecutionApi.md#putlocalexecutionvariable) | **PUT** /execution/{id}/localVariables/{varName} | Put Local Execution Variable
[**queryExecutions**](ExecutionApi.md#queryexecutions) | **POST** /execution | Get Executions (POST)
[**queryExecutionsCount**](ExecutionApi.md#queryexecutionscount) | **POST** /execution/count | Get Execution Count (POST)
[**setLocalExecutionVariableBinary**](ExecutionApi.md#setlocalexecutionvariablebinary) | **POST** /execution/{id}/localVariables/{varName}/data | Post Local Execution Variable (Binary)
[**signalExecution**](ExecutionApi.md#signalexecution) | **POST** /execution/{id}/signal | Trigger Execution
[**triggerEvent**](ExecutionApi.md#triggerevent) | **POST** /execution/{id}/messageSubscriptions/{messageName}/trigger | Trigger Message Event Subscription


# **createIncident**
> IncidentDto createIncident(id, createIncidentDto)

Create Incident

Creates a custom incident with given properties.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to create a new incident for.
final createIncidentDto = CreateIncidentDto(); // CreateIncidentDto | 

try {
    final result = api_instance.createIncident(id, createIncidentDto);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->createIncident: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to create a new incident for. | 
 **createIncidentDto** | [**CreateIncidentDto**](CreateIncidentDto.md)|  | [optional] 

### Return type

[**IncidentDto**](IncidentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocalExecutionVariable**
> deleteLocalExecutionVariable(id, varName)

Delete Local Execution Variable

Deletes a variable in the context of a given execution by id. Deletion does not propagate upwards in the execution hierarchy.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to delete the variable from.
final varName = varName_example; // String | The name of the variable to delete.

try {
    api_instance.deleteLocalExecutionVariable(id, varName);
} catch (e) {
    print('Exception when calling ExecutionApi->deleteLocalExecutionVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to delete the variable from. | 
 **varName** | **String**| The name of the variable to delete. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecution**
> ExecutionDto getExecution(id)

Get Execution

Retrieves an execution by id, according to the `Execution` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to be retrieved.

try {
    final result = api_instance.getExecution(id);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getExecution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to be retrieved. | 

### Return type

[**ExecutionDto**](ExecutionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecutions**
> List<ExecutionDto> getExecutions(businessKey, processDefinitionId, processDefinitionKey, processInstanceId, activityId, signalEventSubscriptionName, messageEventSubscriptionName, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, variables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, sortBy, sortOrder, firstResult, maxResults)

Get Executions

Queries for the executions that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final businessKey = businessKey_example; // String | Filter by the business key of the process instances the executions belong to.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the executions run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the executions run on.
final processInstanceId = processInstanceId_example; // String | Filter by the id of the process instance the execution belongs to.
final activityId = activityId_example; // String | Filter by the id of the activity the execution currently executes.
final signalEventSubscriptionName = signalEventSubscriptionName_example; // String | Select only those executions that expect a signal of the given name.
final messageEventSubscriptionName = messageEventSubscriptionName_example; // String | Select only those executions that expect a message of the given name.
final active = true; // bool | Only include active executions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
final variables = variables_example; // String | Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getExecutions(businessKey, processDefinitionId, processDefinitionKey, processInstanceId, activityId, signalEventSubscriptionName, messageEventSubscriptionName, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, variables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getExecutions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessKey** | **String**| Filter by the business key of the process instances the executions belong to. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the executions run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the executions run on. | [optional] 
 **processInstanceId** | **String**| Filter by the id of the process instance the execution belongs to. | [optional] 
 **activityId** | **String**| Filter by the id of the activity the execution currently executes. | [optional] 
 **signalEventSubscriptionName** | **String**| Select only those executions that expect a signal of the given name. | [optional] 
 **messageEventSubscriptionName** | **String**| Select only those executions that expect a message of the given name. | [optional] 
 **active** | **bool**| Only include active executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids. | [optional] 
 **variables** | **String**| Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<ExecutionDto>**](ExecutionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecutionsCount**
> CountResultDto getExecutionsCount(businessKey, processDefinitionId, processDefinitionKey, processInstanceId, activityId, signalEventSubscriptionName, messageEventSubscriptionName, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, variables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase)

Get Execution Count

Queries for the number of executions that fulfill given parameters. Takes the same parameters as the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final businessKey = businessKey_example; // String | Filter by the business key of the process instances the executions belong to.
final processDefinitionId = processDefinitionId_example; // String | Filter by the process definition the executions run on.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the executions run on.
final processInstanceId = processInstanceId_example; // String | Filter by the id of the process instance the execution belongs to.
final activityId = activityId_example; // String | Filter by the id of the activity the execution currently executes.
final signalEventSubscriptionName = signalEventSubscriptionName_example; // String | Select only those executions that expect a signal of the given name.
final messageEventSubscriptionName = messageEventSubscriptionName_example; // String | Select only those executions that expect a message of the given name.
final active = true; // bool | Only include active executions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended executions. Value may only be `true`, as `false` is the default behavior.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids.
final variables = variables_example; // String | Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final processVariables = processVariables_example; // String | Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.

try {
    final result = api_instance.getExecutionsCount(businessKey, processDefinitionId, processDefinitionKey, processInstanceId, activityId, signalEventSubscriptionName, messageEventSubscriptionName, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, variables, processVariables, variableNamesIgnoreCase, variableValuesIgnoreCase);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getExecutionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **businessKey** | **String**| Filter by the business key of the process instances the executions belong to. | [optional] 
 **processDefinitionId** | **String**| Filter by the process definition the executions run on. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the executions run on. | [optional] 
 **processInstanceId** | **String**| Filter by the id of the process instance the execution belongs to. | [optional] 
 **activityId** | **String**| Filter by the id of the activity the execution currently executes. | [optional] 
 **signalEventSubscriptionName** | **String**| Select only those executions that expect a signal of the given name. | [optional] 
 **messageEventSubscriptionName** | **String**| Select only those executions that expect a message of the given name. | [optional] 
 **active** | **bool**| Only include active executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended executions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](/manual/develop/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. An execution must have one of the given tenant ids. | [optional] 
 **variables** | **String**| Only include executions that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **processVariables** | **String**| Only include executions that belong to a process instance with variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.  Valid operator values are: `eq` - equal to; `neq` - not equal to. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal. | [optional] 
 **variableValuesIgnoreCase** | **bool**| Match all variable values provided in `variables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalExecutionVariable**
> VariableValueDto getLocalExecutionVariable(id, varName, deserializeValue)

Get Local Execution Variable

Retrieves a variable from the context of a given execution by id. Does not traverse the parent execution hierarchy.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to retrieve the variable from.
final varName = varName_example; // String | The name of the variable to get.
final deserializeValue = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath. If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getLocalExecutionVariable(id, varName, deserializeValue);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getLocalExecutionVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to retrieve the variable from. | 
 **varName** | **String**| The name of the variable to get. | 
 **deserializeValue** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath. If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**VariableValueDto**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalExecutionVariableBinary**
> MultipartFile getLocalExecutionVariableBinary(id, varName)

Get Local Execution Variable (Binary)

Retrieves a binary variable from the context of a given execution by id. Does not traverse the parent execution hierarchy. Applicable for byte array and file variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to retrieve the variable from.
final varName = varName_example; // String | The name of the variable to get.

try {
    final result = api_instance.getLocalExecutionVariableBinary(id, varName);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getLocalExecutionVariableBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to retrieve the variable from. | 
 **varName** | **String**| The name of the variable to get. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalExecutionVariables**
> Map<String, VariableValueDto> getLocalExecutionVariables(id, deserializeValues)

Get Local Execution Variables

Retrieves all variables of a given execution by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to retrieve the variables from.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getLocalExecutionVariables(id, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getLocalExecutionVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to retrieve the variables from. | 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `true`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note:** While `true` is the default value for reasons of backward compatibility, we recommend setting this parameter to `false` when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] 

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageEventSubscription**
> EventSubscriptionDto getMessageEventSubscription(id, messageName)

Get Message Event Subscription

Retrieves a message event subscription for a given execution by id and a message name.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution that holds the subscription.
final messageName = messageName_example; // String | The name of the message that the subscription corresponds to.

try {
    final result = api_instance.getMessageEventSubscription(id, messageName);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->getMessageEventSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution that holds the subscription. | 
 **messageName** | **String**| The name of the message that the subscription corresponds to. | 

### Return type

[**EventSubscriptionDto**](EventSubscriptionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyLocalExecutionVariables**
> modifyLocalExecutionVariables(id, patchVariablesDto)

Update/Delete Local Execution Variables

Updates or deletes the variables in the context of an execution by id. The updates do not propagate upwards in the execution hierarchy. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to set variables for.
final patchVariablesDto = PatchVariablesDto(); // PatchVariablesDto | 

try {
    api_instance.modifyLocalExecutionVariables(id, patchVariablesDto);
} catch (e) {
    print('Exception when calling ExecutionApi->modifyLocalExecutionVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to set variables for. | 
 **patchVariablesDto** | [**PatchVariablesDto**](PatchVariablesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putLocalExecutionVariable**
> putLocalExecutionVariable(id, varName, variableValueDto)

Put Local Execution Variable

Sets a variable in the context of a given execution by id. Update does not propagate upwards in the execution hierarchy.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to set the variable for.
final varName = varName_example; // String | The name of the variable to set.
final variableValueDto = VariableValueDto(); // VariableValueDto | 

try {
    api_instance.putLocalExecutionVariable(id, varName, variableValueDto);
} catch (e) {
    print('Exception when calling ExecutionApi->putLocalExecutionVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to set the variable for. | 
 **varName** | **String**| The name of the variable to set. | 
 **variableValueDto** | [**VariableValueDto**](VariableValueDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryExecutions**
> List<ExecutionDto> queryExecutions(firstResult, maxResults, executionQueryDto)

Get Executions (POST)

Queries for executions that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method because it allows to filter by multiple instance and execution variables of types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final executionQueryDto = ExecutionQueryDto(); // ExecutionQueryDto | 

try {
    final result = api_instance.queryExecutions(firstResult, maxResults, executionQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->queryExecutions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **executionQueryDto** | [**ExecutionQueryDto**](ExecutionQueryDto.md)|  | [optional] 

### Return type

[**List<ExecutionDto>**](ExecutionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryExecutionsCount**
> CountResultDto queryExecutionsCount(executionQueryDto)

Get Execution Count (POST)

Queries for the number of executions that fulfill given parameters. This method takes the same message body as the [Get Executions POST](https://docs.camunda.org/manual/7.20/reference/rest/execution/post-query/) method and therefore it is slightly more powerful than the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final executionQueryDto = ExecutionQueryDto(); // ExecutionQueryDto | 

try {
    final result = api_instance.queryExecutionsCount(executionQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ExecutionApi->queryExecutionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executionQueryDto** | [**ExecutionQueryDto**](ExecutionQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setLocalExecutionVariableBinary**
> setLocalExecutionVariableBinary(id, varName, data, valueType)

Post Local Execution Variable (Binary)

Sets the serialized value for a binary variable or the binary value for a file variable in the context of a given execution by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to set the variable for.
final varName = varName_example; // String | The name of the variable to set.
final data = BINARY_DATA_HERE; // MultipartFile | The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
final valueType = valueType_example; // String | The name of the variable type. Either Bytes for a byte array variable or File for a file variable.

try {
    api_instance.setLocalExecutionVariableBinary(id, varName, data, valueType);
} catch (e) {
    print('Exception when calling ExecutionApi->setLocalExecutionVariableBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to set the variable for. | 
 **varName** | **String**| The name of the variable to set. | 
 **data** | **MultipartFile**| The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory. | [optional] 
 **valueType** | **String**| The name of the variable type. Either Bytes for a byte array variable or File for a file variable. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signalExecution**
> signalExecution(id, executionTriggerDto)

Trigger Execution

Signals an execution by id. Can for example be used to explicitly skip user tasks or signal asynchronous continuations.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to signal.
final executionTriggerDto = ExecutionTriggerDto(); // ExecutionTriggerDto | 

try {
    api_instance.signalExecution(id, executionTriggerDto);
} catch (e) {
    print('Exception when calling ExecutionApi->signalExecution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to signal. | 
 **executionTriggerDto** | [**ExecutionTriggerDto**](ExecutionTriggerDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerEvent**
> triggerEvent(id, messageName, executionTriggerDto)

Trigger Message Event Subscription

Delivers a message to a specific execution by id, to trigger an existing message event subscription. Inject process variables as the message's payload.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ExecutionApi();
final id = id_example; // String | The id of the execution to submit the message to.
final messageName = messageName_example; // String | The name of the message that the addressed subscription corresponds to.
final executionTriggerDto = ExecutionTriggerDto(); // ExecutionTriggerDto | 

try {
    api_instance.triggerEvent(id, messageName, executionTriggerDto);
} catch (e) {
    print('Exception when calling ExecutionApi->triggerEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the execution to submit the message to. | 
 **messageName** | **String**| The name of the message that the addressed subscription corresponds to. | 
 **executionTriggerDto** | [**ExecutionTriggerDto**](ExecutionTriggerDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

