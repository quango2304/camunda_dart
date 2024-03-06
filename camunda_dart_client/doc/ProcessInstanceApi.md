# openapi.api.ProcessInstanceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correlateMessageAsyncOperation**](ProcessInstanceApi.md#correlatemessageasyncoperation) | **POST** /process-instance/message-async | Correlate Message Async (POST)
[**deleteAsyncHistoricQueryBased**](ProcessInstanceApi.md#deleteasynchistoricquerybased) | **POST** /process-instance/delete-historic-query-based | Delete Async Historic Query Based (POST)
[**deleteProcessInstance**](ProcessInstanceApi.md#deleteprocessinstance) | **DELETE** /process-instance/{id} | Delete
[**deleteProcessInstanceVariable**](ProcessInstanceApi.md#deleteprocessinstancevariable) | **DELETE** /process-instance/{id}/variables/{varName} | Delete Process Variable
[**deleteProcessInstancesAsyncOperation**](ProcessInstanceApi.md#deleteprocessinstancesasyncoperation) | **POST** /process-instance/delete | Delete Async (POST)
[**getActivityInstanceTree**](ProcessInstanceApi.md#getactivityinstancetree) | **GET** /process-instance/{id}/activity-instances | Get Activity Instance
[**getProcessInstance**](ProcessInstanceApi.md#getprocessinstance) | **GET** /process-instance/{id} | Get Process Instance
[**getProcessInstanceComments**](ProcessInstanceApi.md#getprocessinstancecomments) | **GET** /process-instance/{id}/comment | Get Process Instance Comments
[**getProcessInstanceVariable**](ProcessInstanceApi.md#getprocessinstancevariable) | **GET** /process-instance/{id}/variables/{varName} | Get Process Variable
[**getProcessInstanceVariableBinary**](ProcessInstanceApi.md#getprocessinstancevariablebinary) | **GET** /process-instance/{id}/variables/{varName}/data | Get Process Variable (Binary)
[**getProcessInstanceVariables**](ProcessInstanceApi.md#getprocessinstancevariables) | **GET** /process-instance/{id}/variables | Get Process Variables
[**getProcessInstances**](ProcessInstanceApi.md#getprocessinstances) | **GET** /process-instance | Get List
[**getProcessInstancesCount**](ProcessInstanceApi.md#getprocessinstancescount) | **GET** /process-instance/count | Get List Count
[**modifyProcessInstance**](ProcessInstanceApi.md#modifyprocessinstance) | **POST** /process-instance/{id}/modification | Modify Process Instance Execution State
[**modifyProcessInstanceAsyncOperation**](ProcessInstanceApi.md#modifyprocessinstanceasyncoperation) | **POST** /process-instance/{id}/modification-async | Modify Process Instance Execution State Async
[**modifyProcessInstanceVariables**](ProcessInstanceApi.md#modifyprocessinstancevariables) | **POST** /process-instance/{id}/variables | Update/Delete Process Variables
[**queryProcessInstances**](ProcessInstanceApi.md#queryprocessinstances) | **POST** /process-instance | Get List (POST)
[**queryProcessInstancesCount**](ProcessInstanceApi.md#queryprocessinstancescount) | **POST** /process-instance/count | Get List Count (POST)
[**setProcessInstanceVariable**](ProcessInstanceApi.md#setprocessinstancevariable) | **PUT** /process-instance/{id}/variables/{varName} | Update Process Variable
[**setProcessInstanceVariableBinary**](ProcessInstanceApi.md#setprocessinstancevariablebinary) | **POST** /process-instance/{id}/variables/{varName}/data | Update Process Variable (Binary)
[**setRetriesByProcess**](ProcessInstanceApi.md#setretriesbyprocess) | **POST** /process-instance/job-retries | Set Job Retries Async (POST)
[**setRetriesByProcessHistoricQueryBased**](ProcessInstanceApi.md#setretriesbyprocesshistoricquerybased) | **POST** /process-instance/job-retries-historic-query-based | Set Job Retries Async Historic Query Based (POST)
[**setVariablesAsyncOperation**](ProcessInstanceApi.md#setvariablesasyncoperation) | **POST** /process-instance/variables-async | Set Variables Async (POST)
[**updateSuspensionState**](ProcessInstanceApi.md#updatesuspensionstate) | **PUT** /process-instance/suspended | Activate/Suspend In Group
[**updateSuspensionStateAsyncOperation**](ProcessInstanceApi.md#updatesuspensionstateasyncoperation) | **POST** /process-instance/suspended-async | Activate/Suspend In Batch
[**updateSuspensionStateById**](ProcessInstanceApi.md#updatesuspensionstatebyid) | **PUT** /process-instance/{id}/suspended | Activate/Suspend Process Instance By Id


# **correlateMessageAsyncOperation**
> BatchDto correlateMessageAsyncOperation(correlationMessageAsyncDto)

Correlate Message Async (POST)

Correlates a message asynchronously to executions that are waiting for this message.  Messages will not be correlated to process definition-level start message events to start process instances.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final correlationMessageAsyncDto = CorrelationMessageAsyncDto(); // CorrelationMessageAsyncDto | 

try {
    final result = api_instance.correlateMessageAsyncOperation(correlationMessageAsyncDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->correlateMessageAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **correlationMessageAsyncDto** | [**CorrelationMessageAsyncDto**](CorrelationMessageAsyncDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAsyncHistoricQueryBased**
> BatchDto deleteAsyncHistoricQueryBased(deleteProcessInstancesDto)

Delete Async Historic Query Based (POST)

Deletes a set of process instances asynchronously (batch) based on a historic process instance query.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final deleteProcessInstancesDto = DeleteProcessInstancesDto(); // DeleteProcessInstancesDto | **Unallowed property**: `processInstanceQuery`

try {
    final result = api_instance.deleteAsyncHistoricQueryBased(deleteProcessInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->deleteAsyncHistoricQueryBased: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteProcessInstancesDto** | [**DeleteProcessInstancesDto**](DeleteProcessInstancesDto.md)| **Unallowed property**: `processInstanceQuery` | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProcessInstance**
> deleteProcessInstance(id, skipCustomListeners, skipIoMappings, skipSubprocesses, failIfNotExists)

Delete

Deletes a running process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to be deleted.
final skipCustomListeners = true; // bool | If set to true, the custom listeners will be skipped.
final skipIoMappings = true; // bool | If set to true, the input/output mappings will be skipped.
final skipSubprocesses = true; // bool | If set to true, subprocesses related to deleted processes will be skipped.
final failIfNotExists = true; // bool | If set to false, the request will still be successful if the process id is not found.

try {
    api_instance.deleteProcessInstance(id, skipCustomListeners, skipIoMappings, skipSubprocesses, failIfNotExists);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->deleteProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to be deleted. | 
 **skipCustomListeners** | **bool**| If set to true, the custom listeners will be skipped. | [optional] [default to false]
 **skipIoMappings** | **bool**| If set to true, the input/output mappings will be skipped. | [optional] [default to false]
 **skipSubprocesses** | **bool**| If set to true, subprocesses related to deleted processes will be skipped. | [optional] [default to false]
 **failIfNotExists** | **bool**| If set to false, the request will still be successful if the process id is not found. | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProcessInstanceVariable**
> deleteProcessInstanceVariable(id, varName)

Delete Process Variable

Deletes a variable of a process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to delete the variable from.
final varName = varName_example; // String | The name of the variable to delete.

try {
    api_instance.deleteProcessInstanceVariable(id, varName);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->deleteProcessInstanceVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to delete the variable from. | 
 **varName** | **String**| The name of the variable to delete. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProcessInstancesAsyncOperation**
> BatchDto deleteProcessInstancesAsyncOperation(deleteProcessInstancesDto)

Delete Async (POST)

Deletes multiple process instances asynchronously (batch).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final deleteProcessInstancesDto = DeleteProcessInstancesDto(); // DeleteProcessInstancesDto | **Unallowed property**: `historicProcessInstanceQuery`

try {
    final result = api_instance.deleteProcessInstancesAsyncOperation(deleteProcessInstancesDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->deleteProcessInstancesAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteProcessInstancesDto** | [**DeleteProcessInstancesDto**](DeleteProcessInstancesDto.md)| **Unallowed property**: `historicProcessInstanceQuery` | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityInstanceTree**
> ActivityInstanceDto getActivityInstanceTree(id)

Get Activity Instance

Retrieves an Activity Instance (Tree) for a given process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance for which the activity instance should be retrieved.

try {
    final result = api_instance.getActivityInstanceTree(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getActivityInstanceTree: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance for which the activity instance should be retrieved. | 

### Return type

[**ActivityInstanceDto**](ActivityInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstance**
> ProcessInstanceDto getProcessInstance(id)

Get Process Instance

Retrieves a process instance by id, according to the `ProcessInstance` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to be retrieved.

try {
    final result = api_instance.getProcessInstance(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to be retrieved. | 

### Return type

[**ProcessInstanceDto**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstanceComments**
> List<CommentDto> getProcessInstanceComments(id)

Get Process Instance Comments

Gets the comments for a process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to retrieve the comments for.

try {
    final result = api_instance.getProcessInstanceComments(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstanceComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to retrieve the comments for. | 

### Return type

[**List<CommentDto>**](CommentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstanceVariable**
> VariableValueDto getProcessInstanceVariable(id, varName, deserializeValue)

Get Process Variable

Retrieves a variable of a given process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to retrieve the variable for.
final varName = varName_example; // String | The name of the variable to retrieve.
final deserializeValue = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getProcessInstanceVariable(id, varName, deserializeValue);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstanceVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to retrieve the variable for. | 
 **varName** | **String**| The name of the variable to retrieve. | 
 **deserializeValue** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**VariableValueDto**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstanceVariableBinary**
> MultipartFile getProcessInstanceVariableBinary(id, varName)

Get Process Variable (Binary)

Retrieves the content of a Process Variable by the Process Instance id and the Process Variable name. Applicable for byte array or file Process Variables.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to retrieve the variable for.
final varName = varName_example; // String | The name of the variable to retrieve.

try {
    final result = api_instance.getProcessInstanceVariableBinary(id, varName);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstanceVariableBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to retrieve the variable for. | 
 **varName** | **String**| The name of the variable to retrieve. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstanceVariables**
> Map<String, VariableValueDto> getProcessInstanceVariables(id, deserializeValues)

Get Process Variables

Retrieves all variables of a given process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to retrieve the variables from.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getProcessInstanceVariables(id, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstanceVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to retrieve the variables from. | 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  Note: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstances**
> List<ProcessInstanceDto> getProcessInstances(sortBy, sortOrder, firstResult, maxResults, processInstanceIds, businessKey, businessKeyLike, caseInstanceId, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionKeyNotIn, deploymentId, superProcessInstance, subProcessInstance, superCaseInstance, subCaseInstance, active, suspended, withIncident, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, processDefinitionWithoutTenantId, activityIdIn, rootProcessInstances, leafProcessInstances, variables, variableNamesIgnoreCase, variableValuesIgnoreCase)

Get List

Queries for process instances that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of process instances. The size of the result set can be retrieved by using the Get Instance Count method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final processInstanceIds = processInstanceIds_example; // String | Filter by a comma-separated list of process instance ids.
final businessKey = businessKey_example; // String | Filter by process instance business key.
final businessKeyLike = businessKeyLike_example; // String | Filter by process instance business key that the parameter is a substring of.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by the deployment the id belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances run on.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
final processDefinitionKeyNotIn = processDefinitionKeyNotIn_example; // String | Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final superProcessInstance = superProcessInstance_example; // String | Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
final subProcessInstance = subProcessInstance_example; // String | Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
final superCaseInstance = superCaseInstance_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final subCaseInstance = subCaseInstance_example; // String | Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
final active = true; // bool | Only include active process instances. Value may only be true, as false is the default behavior.
final suspended = true; // bool | Only include suspended process instances. Value may only be true, as false is the default behavior.
final withIncident = true; // bool | Filter by presence of incidents. Selects only process instances that have an incident.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include process instances which belong to no tenant.
final processDefinitionWithoutTenantId = true; // bool | Only include process instances which process definition has no tenant id.
final activityIdIn = activityIdIn_example; // String | Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
final rootProcessInstances = true; // bool | Restrict the query to all process instances that are top level process instances.
final leafProcessInstances = true; // bool | Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
final variables = variables_example; // String | Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.

try {
    final result = api_instance.getProcessInstances(sortBy, sortOrder, firstResult, maxResults, processInstanceIds, businessKey, businessKeyLike, caseInstanceId, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionKeyNotIn, deploymentId, superProcessInstance, subProcessInstance, superCaseInstance, subCaseInstance, active, suspended, withIncident, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, processDefinitionWithoutTenantId, activityIdIn, rootProcessInstances, leafProcessInstances, variables, variableNamesIgnoreCase, variableValuesIgnoreCase);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **processInstanceIds** | **String**| Filter by a comma-separated list of process instance ids. | [optional] 
 **businessKey** | **String**| Filter by process instance business key. | [optional] 
 **businessKeyLike** | **String**| Filter by process instance business key that the parameter is a substring of. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances run on. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys. | [optional] 
 **processDefinitionKeyNotIn** | **String**| Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **superProcessInstance** | **String**| Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id. | [optional] 
 **subProcessInstance** | **String**| Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id. | [optional] 
 **superCaseInstance** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **subCaseInstance** | **String**| Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id. | [optional] 
 **active** | **bool**| Only include active process instances. Value may only be true, as false is the default behavior. | [optional] [default to false]
 **suspended** | **bool**| Only include suspended process instances. Value may only be true, as false is the default behavior. | [optional] [default to false]
 **withIncident** | **bool**| Filter by presence of incidents. Selects only process instances that have an incident. | [optional] [default to false]
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process instances which belong to no tenant. | [optional] [default to false]
 **processDefinitionWithoutTenantId** | **bool**| Only include process instances which process definition has no tenant id. | [optional] [default to false]
 **activityIdIn** | **String**| Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids. | [optional] 
 **rootProcessInstances** | **bool**| Restrict the query to all process instances that are top level process instances. | [optional] [default to false]
 **leafProcessInstances** | **bool**| Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances). | [optional] [default to false]
 **variables** | **String**| Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal. | [optional] [default to false]
 **variableValuesIgnoreCase** | **bool**| Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal. | [optional] [default to false]

### Return type

[**List<ProcessInstanceDto>**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessInstancesCount**
> CountResultDto getProcessInstancesCount(processInstanceIds, businessKey, businessKeyLike, caseInstanceId, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionKeyNotIn, deploymentId, superProcessInstance, subProcessInstance, superCaseInstance, subCaseInstance, active, suspended, withIncident, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, processDefinitionWithoutTenantId, activityIdIn, rootProcessInstances, leafProcessInstances, variables, variableNamesIgnoreCase, variableValuesIgnoreCase)

Get List Count

Queries for the number of process instances that fulfill given parameters.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final processInstanceIds = processInstanceIds_example; // String | Filter by a comma-separated list of process instance ids.
final businessKey = businessKey_example; // String | Filter by process instance business key.
final businessKeyLike = businessKeyLike_example; // String | Filter by process instance business key that the parameter is a substring of.
final caseInstanceId = caseInstanceId_example; // String | Filter by case instance id.
final processDefinitionId = processDefinitionId_example; // String | Filter by the deployment the id belongs to.
final processDefinitionKey = processDefinitionKey_example; // String | Filter by the key of the process definition the instances run on.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys.
final processDefinitionKeyNotIn = processDefinitionKeyNotIn_example; // String | Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final superProcessInstance = superProcessInstance_example; // String | Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id.
final subProcessInstance = subProcessInstance_example; // String | Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id.
final superCaseInstance = superCaseInstance_example; // String | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id.
final subCaseInstance = subCaseInstance_example; // String | Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id.
final active = true; // bool | Only include active process instances. Value may only be true, as false is the default behavior.
final suspended = true; // bool | Only include suspended process instances. Value may only be true, as false is the default behavior.
final withIncident = true; // bool | Filter by presence of incidents. Selects only process instances that have an incident.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include process instances which belong to no tenant.
final processDefinitionWithoutTenantId = true; // bool | Only include process instances which process definition has no tenant id.
final activityIdIn = activityIdIn_example; // String | Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids.
final rootProcessInstances = true; // bool | Restrict the query to all process instances that are top level process instances.
final leafProcessInstances = true; // bool | Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances).
final variables = variables_example; // String | Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters.
final variableNamesIgnoreCase = true; // bool | Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal.
final variableValuesIgnoreCase = true; // bool | Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal.

try {
    final result = api_instance.getProcessInstancesCount(processInstanceIds, businessKey, businessKeyLike, caseInstanceId, processDefinitionId, processDefinitionKey, processDefinitionKeyIn, processDefinitionKeyNotIn, deploymentId, superProcessInstance, subProcessInstance, superCaseInstance, subCaseInstance, active, suspended, withIncident, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, processDefinitionWithoutTenantId, activityIdIn, rootProcessInstances, leafProcessInstances, variables, variableNamesIgnoreCase, variableValuesIgnoreCase);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->getProcessInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceIds** | **String**| Filter by a comma-separated list of process instance ids. | [optional] 
 **businessKey** | **String**| Filter by process instance business key. | [optional] 
 **businessKeyLike** | **String**| Filter by process instance business key that the parameter is a substring of. | [optional] 
 **caseInstanceId** | **String**| Filter by case instance id. | [optional] 
 **processDefinitionId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **processDefinitionKey** | **String**| Filter by the key of the process definition the instances run on. | [optional] 
 **processDefinitionKeyIn** | **String**| Filter by a comma-separated list of process definition keys. A process instance must have one of the given process definition keys. | [optional] 
 **processDefinitionKeyNotIn** | **String**| Exclude instances by a comma-separated list of process definition keys. A process instance must not have one of the given process definition keys. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **superProcessInstance** | **String**| Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id. | [optional] 
 **subProcessInstance** | **String**| Restrict query to all process instances that have the given process instance as a sub process instance. Takes a process instance id. | [optional] 
 **superCaseInstance** | **String**| Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
 **subCaseInstance** | **String**| Restrict query to all process instances that have the given case instance as a sub case instance. Takes a case instance id. | [optional] 
 **active** | **bool**| Only include active process instances. Value may only be true, as false is the default behavior. | [optional] [default to false]
 **suspended** | **bool**| Only include suspended process instances. Value may only be true, as false is the default behavior. | [optional] [default to false]
 **withIncident** | **bool**| Filter by presence of incidents. Selects only process instances that have an incident. | [optional] [default to false]
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process instance must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process instances which belong to no tenant. | [optional] [default to false]
 **processDefinitionWithoutTenantId** | **bool**| Only include process instances which process definition has no tenant id. | [optional] [default to false]
 **activityIdIn** | **String**| Filter by a comma-separated list of activity ids. A process instance must currently wait in a leaf activity with one of the given activity ids. | [optional] 
 **rootProcessInstances** | **bool**| Restrict the query to all process instances that are top level process instances. | [optional] [default to false]
 **leafProcessInstances** | **bool**| Restrict the query to all process instances that are leaf instances. (i.e. don't have any sub instances). | [optional] [default to false]
 **variables** | **String**| Only include process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value.  **Note**: Values are always treated as String objects on server side.  Valid `operator` values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`. `key` and `value` may not contain underscore or comma characters. | [optional] 
 **variableNamesIgnoreCase** | **bool**| Match all variable names in this query case-insensitively. If set to true variableName and variablename are treated as equal. | [optional] [default to false]
 **variableValuesIgnoreCase** | **bool**| Match all variable values in this query case-insensitively. If set to true variableValue and variablevalue are treated as equal. | [optional] [default to false]

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyProcessInstance**
> modifyProcessInstance(id, processInstanceModificationDto)

Modify Process Instance Execution State

Submits a list of modification instructions to change a process instance's execution state. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Canceling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed immediately and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/develop/user-guide/process-engine/process-instance-modification/).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to modify.
final processInstanceModificationDto = ProcessInstanceModificationDto(); // ProcessInstanceModificationDto | 

try {
    api_instance.modifyProcessInstance(id, processInstanceModificationDto);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->modifyProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to modify. | 
 **processInstanceModificationDto** | [**ProcessInstanceModificationDto**](ProcessInstanceModificationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyProcessInstanceAsyncOperation**
> BatchDto modifyProcessInstanceAsyncOperation(id, processInstanceModificationDto)

Modify Process Instance Execution State Async

Submits a list of modification instructions to change a process instance's execution state async. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Cancelling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed asynchronous and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-modification/).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to modify.
final processInstanceModificationDto = ProcessInstanceModificationDto(); // ProcessInstanceModificationDto | 

try {
    final result = api_instance.modifyProcessInstanceAsyncOperation(id, processInstanceModificationDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->modifyProcessInstanceAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to modify. | 
 **processInstanceModificationDto** | [**ProcessInstanceModificationDto**](ProcessInstanceModificationDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyProcessInstanceVariables**
> modifyProcessInstanceVariables(id, patchVariablesDto)

Update/Delete Process Variables

Updates or deletes the variables of a process instance by id. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to set variables for.
final patchVariablesDto = PatchVariablesDto(); // PatchVariablesDto | 

try {
    api_instance.modifyProcessInstanceVariables(id, patchVariablesDto);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->modifyProcessInstanceVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to set variables for. | 
 **patchVariablesDto** | [**PatchVariablesDto**](PatchVariablesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProcessInstances**
> List<ProcessInstanceDto> queryProcessInstances(firstResult, maxResults, processInstanceQueryDto)

Get List (POST)

Queries for process instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the Get Instances method because it allows filtering by multiple process variables of types `string`, `number` or `boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final processInstanceQueryDto = ProcessInstanceQueryDto(); // ProcessInstanceQueryDto | 

try {
    final result = api_instance.queryProcessInstances(firstResult, maxResults, processInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->queryProcessInstances: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **processInstanceQueryDto** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md)|  | [optional] 

### Return type

[**List<ProcessInstanceDto>**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryProcessInstancesCount**
> CountResultDto queryProcessInstancesCount(processInstanceQueryDto)

Get List Count (POST)

Queries for the number of process instances that fulfill the given parameters. This method takes the same message body as the Get Instances (POST) method and therefore it is slightly more powerful than the Get Instance Count method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final processInstanceQueryDto = ProcessInstanceQueryDto(); // ProcessInstanceQueryDto | 

try {
    final result = api_instance.queryProcessInstancesCount(processInstanceQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->queryProcessInstancesCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceQueryDto** | [**ProcessInstanceQueryDto**](ProcessInstanceQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setProcessInstanceVariable**
> setProcessInstanceVariable(id, varName, variableValueDto)

Update Process Variable

Sets a variable of a given process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to set the variable for.
final varName = varName_example; // String | The name of the variable to set.
final variableValueDto = VariableValueDto(); // VariableValueDto | 

try {
    api_instance.setProcessInstanceVariable(id, varName, variableValueDto);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->setProcessInstanceVariable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to set the variable for. | 
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

# **setProcessInstanceVariableBinary**
> setProcessInstanceVariableBinary(id, varName, data, valueType)

Update Process Variable (Binary)

Sets the serialized value for a binary variable or the binary value for a file variable.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to retrieve the variable for.
final varName = varName_example; // String | The name of the variable to retrieve.
final data = BINARY_DATA_HERE; // MultipartFile | The binary data to be set. For File variables, this multipart can contain the filename, binary value and MIME type of the file variable to be set Only the filename is mandatory.
final valueType = valueType_example; // String | The name of the variable type. Either Bytes for a byte array variable or File for a file variable.

try {
    api_instance.setProcessInstanceVariableBinary(id, varName, data, valueType);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->setProcessInstanceVariableBinary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to retrieve the variable for. | 
 **varName** | **String**| The name of the variable to retrieve. | 
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

# **setRetriesByProcess**
> BatchDto setRetriesByProcess(setJobRetriesByProcessDto)

Set Job Retries Async (POST)

Create a batch to set retries of jobs associated with given processes asynchronously.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final setJobRetriesByProcessDto = SetJobRetriesByProcessDto(); // SetJobRetriesByProcessDto | Please note that if both processInstances and processInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `historicProcessInstanceQuery`

try {
    final result = api_instance.setRetriesByProcess(setJobRetriesByProcessDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->setRetriesByProcess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setJobRetriesByProcessDto** | [**SetJobRetriesByProcessDto**](SetJobRetriesByProcessDto.md)| Please note that if both processInstances and processInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `historicProcessInstanceQuery` | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRetriesByProcessHistoricQueryBased**
> BatchDto setRetriesByProcessHistoricQueryBased(setJobRetriesByProcessDto)

Set Job Retries Async Historic Query Based (POST)

Create a batch to set retries of jobs asynchronously based on a historic process instance query.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final setJobRetriesByProcessDto = SetJobRetriesByProcessDto(); // SetJobRetriesByProcessDto | Please note that if both processInstances and historicProcessInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `processInstanceQuery`

try {
    final result = api_instance.setRetriesByProcessHistoricQueryBased(setJobRetriesByProcessDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->setRetriesByProcessHistoricQueryBased: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setJobRetriesByProcessDto** | [**SetJobRetriesByProcessDto**](SetJobRetriesByProcessDto.md)| Please note that if both processInstances and historicProcessInstanceQuery are provided, then the resulting execution will be performed on the union of these sets. **Unallowed property**: `processInstanceQuery` | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setVariablesAsyncOperation**
> BatchDto setVariablesAsyncOperation(setVariablesAsyncDto)

Set Variables Async (POST)

Update or create runtime process variables in the root scope of process instances.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final setVariablesAsyncDto = SetVariablesAsyncDto(); // SetVariablesAsyncDto | 

try {
    final result = api_instance.setVariablesAsyncOperation(setVariablesAsyncDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->setVariablesAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setVariablesAsyncDto** | [**SetVariablesAsyncDto**](SetVariablesAsyncDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionState**
> updateSuspensionState(processInstanceSuspensionStateDto)

Activate/Suspend In Group

Activates or suspends process instances by providing certain criteria:  # Activate/Suspend Process Instance By Process Definition Id * `suspend` * `processDefinitionId`  # Activate/Suspend Process Instance By Process Definition Key  * `suspend` * `processDefinitionKey` * `processDefinitionTenantId` * `processDefinitionWithoutTenantId`  # Activate/Suspend Process Instance In Group * `suspend` * `processInstanceIds` * `processInstanceQuery` * `historicProcessInstanceQuery`

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final processInstanceSuspensionStateDto = ProcessInstanceSuspensionStateDto(); // ProcessInstanceSuspensionStateDto | 

try {
    api_instance.updateSuspensionState(processInstanceSuspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->updateSuspensionState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceSuspensionStateDto** | [**ProcessInstanceSuspensionStateDto**](ProcessInstanceSuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionStateAsyncOperation**
> BatchDto updateSuspensionStateAsyncOperation(processInstanceSuspensionStateAsyncDto)

Activate/Suspend In Batch

Activates or suspends process instances asynchronously with a list of process instance ids, a process instance query, and/or a historical process instance query.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final processInstanceSuspensionStateAsyncDto = ProcessInstanceSuspensionStateAsyncDto(); // ProcessInstanceSuspensionStateAsyncDto | 

try {
    final result = api_instance.updateSuspensionStateAsyncOperation(processInstanceSuspensionStateAsyncDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->updateSuspensionStateAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processInstanceSuspensionStateAsyncDto** | [**ProcessInstanceSuspensionStateAsyncDto**](ProcessInstanceSuspensionStateAsyncDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionStateById**
> updateSuspensionStateById(id, suspensionStateDto)

Activate/Suspend Process Instance By Id

Activates or suspends a given process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessInstanceApi();
final id = id_example; // String | The id of the process instance to activate or suspend.
final suspensionStateDto = SuspensionStateDto(); // SuspensionStateDto | 

try {
    api_instance.updateSuspensionStateById(id, suspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessInstanceApi->updateSuspensionStateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process instance to activate or suspend. | 
 **suspensionStateDto** | [**SuspensionStateDto**](SuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

