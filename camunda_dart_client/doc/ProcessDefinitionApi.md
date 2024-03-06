# openapi.api.ProcessDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteProcessDefinition**](ProcessDefinitionApi.md#deleteprocessdefinition) | **DELETE** /process-definition/{id} | Delete
[**deleteProcessDefinitionsByKey**](ProcessDefinitionApi.md#deleteprocessdefinitionsbykey) | **DELETE** /process-definition/key/{key} | Delete By Key
[**deleteProcessDefinitionsByKeyAndTenantId**](ProcessDefinitionApi.md#deleteprocessdefinitionsbykeyandtenantid) | **DELETE** /process-definition/key/{key}/tenant-id/{tenant-id} | Delete By Key
[**getActivityStatistics**](ProcessDefinitionApi.md#getactivitystatistics) | **GET** /process-definition/{id}/statistics | Get Activity Instance Statistics
[**getActivityStatisticsByProcessDefinitionKey**](ProcessDefinitionApi.md#getactivitystatisticsbyprocessdefinitionkey) | **GET** /process-definition/key/{key}/statistics | Get Activity Instance Statistics
[**getActivityStatisticsByProcessDefinitionKeyAndTenantId**](ProcessDefinitionApi.md#getactivitystatisticsbyprocessdefinitionkeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/statistics | Get Activity Instance Statistics
[**getDeployedStartForm**](ProcessDefinitionApi.md#getdeployedstartform) | **GET** /process-definition/{id}/deployed-start-form | Get Deployed Start Form
[**getDeployedStartFormByKey**](ProcessDefinitionApi.md#getdeployedstartformbykey) | **GET** /process-definition/key/{key}/deployed-start-form | Get Deployed Start Form
[**getDeployedStartFormByKeyAndTenantId**](ProcessDefinitionApi.md#getdeployedstartformbykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/deployed-start-form | Get Deployed Start Form
[**getLatestProcessDefinitionByTenantId**](ProcessDefinitionApi.md#getlatestprocessdefinitionbytenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id} | Get
[**getProcessDefinition**](ProcessDefinitionApi.md#getprocessdefinition) | **GET** /process-definition/{id} | Get
[**getProcessDefinitionBpmn20Xml**](ProcessDefinitionApi.md#getprocessdefinitionbpmn20xml) | **GET** /process-definition/{id}/xml | Get XML
[**getProcessDefinitionBpmn20XmlByKey**](ProcessDefinitionApi.md#getprocessdefinitionbpmn20xmlbykey) | **GET** /process-definition/key/{key}/xml | Get XML
[**getProcessDefinitionBpmn20XmlByKeyAndTenantId**](ProcessDefinitionApi.md#getprocessdefinitionbpmn20xmlbykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/xml | Get XML
[**getProcessDefinitionByKey**](ProcessDefinitionApi.md#getprocessdefinitionbykey) | **GET** /process-definition/key/{key} | Get
[**getProcessDefinitionDiagram**](ProcessDefinitionApi.md#getprocessdefinitiondiagram) | **GET** /process-definition/{id}/diagram | Get Diagram
[**getProcessDefinitionDiagramByKey**](ProcessDefinitionApi.md#getprocessdefinitiondiagrambykey) | **GET** /process-definition/key/{key}/diagram | Get Diagram
[**getProcessDefinitionDiagramByKeyAndTenantId**](ProcessDefinitionApi.md#getprocessdefinitiondiagrambykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/diagram | Get Diagram
[**getProcessDefinitionStatistics**](ProcessDefinitionApi.md#getprocessdefinitionstatistics) | **GET** /process-definition/statistics | Get Process Instance Statistics
[**getProcessDefinitions**](ProcessDefinitionApi.md#getprocessdefinitions) | **GET** /process-definition | Get List
[**getProcessDefinitionsCount**](ProcessDefinitionApi.md#getprocessdefinitionscount) | **GET** /process-definition/count | Get List Count
[**getRenderedStartForm**](ProcessDefinitionApi.md#getrenderedstartform) | **GET** /process-definition/{id}/rendered-form | Get Rendered Start Form
[**getRenderedStartFormByKey**](ProcessDefinitionApi.md#getrenderedstartformbykey) | **GET** /process-definition/key/{key}/rendered-form | Get Rendered Start Form
[**getRenderedStartFormByKeyAndTenantId**](ProcessDefinitionApi.md#getrenderedstartformbykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/rendered-form | Get Rendered Start Form
[**getStartForm**](ProcessDefinitionApi.md#getstartform) | **GET** /process-definition/{id}/startForm | Get Start Form Key
[**getStartFormByKey**](ProcessDefinitionApi.md#getstartformbykey) | **GET** /process-definition/key/{key}/startForm | Get Start Form Key
[**getStartFormByKeyAndTenantId**](ProcessDefinitionApi.md#getstartformbykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/startForm | Get Start Form Key
[**getStartFormVariables**](ProcessDefinitionApi.md#getstartformvariables) | **GET** /process-definition/{id}/form-variables | Get Start Form Variables
[**getStartFormVariablesByKey**](ProcessDefinitionApi.md#getstartformvariablesbykey) | **GET** /process-definition/key/{key}/form-variables | Get Start Form Variables
[**getStartFormVariablesByKeyAndTenantId**](ProcessDefinitionApi.md#getstartformvariablesbykeyandtenantid) | **GET** /process-definition/key/{key}/tenant-id/{tenant-id}/form-variables | Get Start Form Variables
[**getStaticCalledProcessDefinitions**](ProcessDefinitionApi.md#getstaticcalledprocessdefinitions) | **GET** /process-definition/{id}/static-called-process-definitions | Get Static Called Process Definitions
[**restartProcessInstance**](ProcessDefinitionApi.md#restartprocessinstance) | **POST** /process-definition/{id}/restart | Restart Process Instance
[**restartProcessInstanceAsyncOperation**](ProcessDefinitionApi.md#restartprocessinstanceasyncoperation) | **POST** /process-definition/{id}/restart-async | Restart Process Instance Async
[**startProcessInstance**](ProcessDefinitionApi.md#startprocessinstance) | **POST** /process-definition/{id}/start | Start Instance
[**startProcessInstanceByKey**](ProcessDefinitionApi.md#startprocessinstancebykey) | **POST** /process-definition/key/{key}/start | Start Instance
[**startProcessInstanceByKeyAndTenantId**](ProcessDefinitionApi.md#startprocessinstancebykeyandtenantid) | **POST** /process-definition/key/{key}/tenant-id/{tenant-id}/start | Start Instance
[**submitForm**](ProcessDefinitionApi.md#submitform) | **POST** /process-definition/{id}/submit-form | Submit Start Form
[**submitFormByKey**](ProcessDefinitionApi.md#submitformbykey) | **POST** /process-definition/key/{key}/submit-form | Submit Start Form
[**submitFormByKeyAndTenantId**](ProcessDefinitionApi.md#submitformbykeyandtenantid) | **POST** /process-definition/key/{key}/tenant-id/{tenant-id}/submit-form | Submit Start Form
[**updateHistoryTimeToLiveByProcessDefinitionId**](ProcessDefinitionApi.md#updatehistorytimetolivebyprocessdefinitionid) | **PUT** /process-definition/{id}/history-time-to-live | Update History Time to Live
[**updateHistoryTimeToLiveByProcessDefinitionKey**](ProcessDefinitionApi.md#updatehistorytimetolivebyprocessdefinitionkey) | **PUT** /process-definition/key/{key}/history-time-to-live | Update History Time to Live
[**updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId**](ProcessDefinitionApi.md#updatehistorytimetolivebyprocessdefinitionkeyandtenantid) | **PUT** /process-definition/key/{key}/tenant-id/{tenant-id}/history-time-to-live | Update History Time to Live
[**updateProcessDefinitionSuspensionState**](ProcessDefinitionApi.md#updateprocessdefinitionsuspensionstate) | **PUT** /process-definition/suspended | Activate/Suspend By Key
[**updateProcessDefinitionSuspensionStateById**](ProcessDefinitionApi.md#updateprocessdefinitionsuspensionstatebyid) | **PUT** /process-definition/{id}/suspended | Activate/Suspend By Id
[**updateProcessDefinitionSuspensionStateByKey**](ProcessDefinitionApi.md#updateprocessdefinitionsuspensionstatebykey) | **PUT** /process-definition/key/{key}/suspended | Activate/Suspend by Id
[**updateProcessDefinitionSuspensionStateByKeyAndTenantId**](ProcessDefinitionApi.md#updateprocessdefinitionsuspensionstatebykeyandtenantid) | **PUT** /process-definition/key/{key}/tenant-id/{tenant-id}/suspended | Activate/Suspend by Id


# **deleteProcessDefinition**
> deleteProcessDefinition(id, cascade, skipCustomListeners, skipIoMappings)

Delete

Deletes a running process instance by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to be deleted.
final cascade = true; // bool | `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
final skipCustomListeners = true; // bool | `true`, if only the built-in ExecutionListeners should be notified with the end event.
final skipIoMappings = true; // bool | A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.

try {
    api_instance.deleteProcessDefinition(id, cascade, skipCustomListeners, skipIoMappings);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->deleteProcessDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to be deleted. | 
 **cascade** | **bool**| `true`, if all process instances, historic process instances and jobs for this process definition should be deleted. | [optional] 
 **skipCustomListeners** | **bool**| `true`, if only the built-in ExecutionListeners should be notified with the end event. | [optional] [default to false]
 **skipIoMappings** | **bool**| A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProcessDefinitionsByKey**
> deleteProcessDefinitionsByKey(key, cascade, skipCustomListeners, skipIoMappings)

Delete By Key

Deletes process definitions by a given key which belong to no tenant id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definitions to be deleted.
final cascade = true; // bool | `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
final skipCustomListeners = true; // bool | `true`, if only the built-in ExecutionListeners should be notified with the end event.
final skipIoMappings = true; // bool | A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.

try {
    api_instance.deleteProcessDefinitionsByKey(key, cascade, skipCustomListeners, skipIoMappings);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->deleteProcessDefinitionsByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definitions to be deleted. | 
 **cascade** | **bool**| `true`, if all process instances, historic process instances and jobs for this process definition should be deleted. | [optional] 
 **skipCustomListeners** | **bool**| `true`, if only the built-in ExecutionListeners should be notified with the end event. | [optional] [default to false]
 **skipIoMappings** | **bool**| A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProcessDefinitionsByKeyAndTenantId**
> deleteProcessDefinitionsByKeyAndTenantId(key, tenantId, cascade, skipCustomListeners, skipIoMappings)

Delete By Key

Deletes process definitions by a given key and which belong to a tenant id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definitions to be deleted.
final tenantId = tenantId_example; // String | The id of the tenant the process definitions belong to.
final cascade = true; // bool | `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
final skipCustomListeners = true; // bool | `true`, if only the built-in ExecutionListeners should be notified with the end event.
final skipIoMappings = true; // bool | A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.

try {
    api_instance.deleteProcessDefinitionsByKeyAndTenantId(key, tenantId, cascade, skipCustomListeners, skipIoMappings);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->deleteProcessDefinitionsByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definitions to be deleted. | 
 **tenantId** | **String**| The id of the tenant the process definitions belong to. | 
 **cascade** | **bool**| `true`, if all process instances, historic process instances and jobs for this process definition should be deleted. | [optional] 
 **skipCustomListeners** | **bool**| `true`, if only the built-in ExecutionListeners should be notified with the end event. | [optional] [default to false]
 **skipIoMappings** | **bool**| A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityStatistics**
> List<ActivityStatisticsResultDto> getActivityStatistics(id, failedJobs, incidents, incidentsForType)

Get Activity Instance Statistics

Retrieves runtime statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition.
final failedJobs = true; // bool | Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
final incidents = true; // bool | Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
final incidentsForType = incidentsForType_example; // String | If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.

try {
    final result = api_instance.getActivityStatistics(id, failedJobs, incidents, incidentsForType);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getActivityStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition. | 
 **failedJobs** | **bool**| Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`. | [optional] 
 **incidents** | **bool**| Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`. | [optional] 
 **incidentsForType** | **String**| If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 

### Return type

[**List<ActivityStatisticsResultDto>**](ActivityStatisticsResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityStatisticsByProcessDefinitionKey**
> List<ActivityStatisticsResultDto> getActivityStatisticsByProcessDefinitionKey(key, failedJobs, incidents, incidentsForType)

Get Activity Instance Statistics

Retrieves runtime statistics of the latest version of the given process definition which belongs to no tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final failedJobs = true; // bool | Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
final incidents = true; // bool | Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
final incidentsForType = incidentsForType_example; // String | If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.

try {
    final result = api_instance.getActivityStatisticsByProcessDefinitionKey(key, failedJobs, incidents, incidentsForType);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getActivityStatisticsByProcessDefinitionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **failedJobs** | **bool**| Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`. | [optional] 
 **incidents** | **bool**| Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`. | [optional] 
 **incidentsForType** | **String**| If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 

### Return type

[**List<ActivityStatisticsResultDto>**](ActivityStatisticsResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActivityStatisticsByProcessDefinitionKeyAndTenantId**
> List<ActivityStatisticsResultDto> getActivityStatisticsByProcessDefinitionKeyAndTenantId(key, tenantId, failedJobs, incidents, incidentsForType)

Get Activity Instance Statistics

Retrieves runtime statistics of the latest version of the given process definition for a tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final failedJobs = true; // bool | Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
final incidents = true; // bool | Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
final incidentsForType = incidentsForType_example; // String | If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.

try {
    final result = api_instance.getActivityStatisticsByProcessDefinitionKeyAndTenantId(key, tenantId, failedJobs, incidents, incidentsForType);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getActivityStatisticsByProcessDefinitionKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **failedJobs** | **bool**| Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`. | [optional] 
 **incidents** | **bool**| Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`. | [optional] 
 **incidentsForType** | **String**| If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 

### Return type

[**List<ActivityStatisticsResultDto>**](ActivityStatisticsResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployedStartForm**
> MultipartFile getDeployedStartForm(id)

Get Deployed Start Form

Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to get the deployed start form for.

try {
    final result = api_instance.getDeployedStartForm(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getDeployedStartForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to get the deployed start form for. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployedStartFormByKey**
> MultipartFile getDeployedStartFormByKey(key)

Get Deployed Start Form

Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDeployedStartFormByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getDeployedStartFormByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployedStartFormByKeyAndTenantId**
> MultipartFile getDeployedStartFormByKeyAndTenantId(key, tenantId)

Get Deployed Start Form

Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definitions belong to.

try {
    final result = api_instance.getDeployedStartFormByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getDeployedStartFormByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definitions belong to. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestProcessDefinitionByTenantId**
> ProcessDefinitionDto getLatestProcessDefinitionByTenantId(key, tenantId)

Get

Retrieves the latest version of the process definition for tenant according to the `ProcessDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.

try {
    final result = api_instance.getLatestProcessDefinitionByTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getLatestProcessDefinitionByTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 

### Return type

[**ProcessDefinitionDto**](ProcessDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinition**
> ProcessDefinitionDto getProcessDefinition(id)

Get

Retrieves a process definition according to the `ProcessDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to be retrieved.

try {
    final result = api_instance.getProcessDefinition(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to be retrieved. | 

### Return type

[**ProcessDefinitionDto**](ProcessDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionBpmn20Xml**
> ProcessDefinitionDiagramDto getProcessDefinitionBpmn20Xml(id)

Get XML

Retrieves the BPMN 2.0 XML of a process definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition.

try {
    final result = api_instance.getProcessDefinitionBpmn20Xml(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionBpmn20Xml: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition. | 

### Return type

[**ProcessDefinitionDiagramDto**](ProcessDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionBpmn20XmlByKey**
> ProcessDefinitionDiagramDto getProcessDefinitionBpmn20XmlByKey(key)

Get XML

Retrieves latest version the BPMN 2.0 XML of a process definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) whose XML should be retrieved.

try {
    final result = api_instance.getProcessDefinitionBpmn20XmlByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionBpmn20XmlByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) whose XML should be retrieved. | 

### Return type

[**ProcessDefinitionDiagramDto**](ProcessDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionBpmn20XmlByKeyAndTenantId**
> ProcessDefinitionDiagramDto getProcessDefinitionBpmn20XmlByKeyAndTenantId(key, tenantId)

Get XML

Retrieves latest version the BPMN 2.0 XML of a process definition. Returns the XML for the latest version of the process definition for tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) whose XML should be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.

try {
    final result = api_instance.getProcessDefinitionBpmn20XmlByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionBpmn20XmlByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) whose XML should be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 

### Return type

[**ProcessDefinitionDiagramDto**](ProcessDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionByKey**
> ProcessDefinitionDto getProcessDefinitionByKey(key)

Get

Retrieves the latest version of the process definition which belongs to no tenant according to the `ProcessDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getProcessDefinitionByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 

### Return type

[**ProcessDefinitionDto**](ProcessDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionDiagram**
> MultipartFile getProcessDefinitionDiagram(id)

Get Diagram

Retrieves the diagram of a process definition.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition.

try {
    final result = api_instance.getProcessDefinitionDiagram(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionDiagram: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionDiagramByKey**
> MultipartFile getProcessDefinitionDiagramByKey(key)

Get Diagram

Retrieves the diagram for the latest version of the process definition which belongs to no tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition.

try {
    final result = api_instance.getProcessDefinitionDiagramByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionDiagramByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionDiagramByKeyAndTenantId**
> MultipartFile getProcessDefinitionDiagramByKeyAndTenantId(key, tenantId)

Get Diagram

Retrieves the diagram for the latest version of the process definition for tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.

try {
    final result = api_instance.getProcessDefinitionDiagramByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionDiagramByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionStatistics**
> List<ProcessDefinitionStatisticsResultDto> getProcessDefinitionStatistics(failedJobs, incidents, incidentsForType, rootIncidents)

Get Process Instance Statistics

Retrieves runtime statistics of the process engine, grouped by process definitions. These statistics include the number of running process instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final failedJobs = true; // bool | Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
final incidents = true; // bool | Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
final incidentsForType = incidentsForType_example; // String | If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final rootIncidents = true; // bool | Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of root incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType` or `incidents`.

try {
    final result = api_instance.getProcessDefinitionStatistics(failedJobs, incidents, incidentsForType, rootIncidents);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **failedJobs** | **bool**| Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`. | [optional] 
 **incidents** | **bool**| Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`. | [optional] 
 **incidentsForType** | **String**| If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **rootIncidents** | **bool**| Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of root incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType` or `incidents`. | [optional] 

### Return type

[**List<ProcessDefinitionStatisticsResultDto>**](ProcessDefinitionStatisticsResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitions**
> List<ProcessDefinitionDto> getProcessDefinitions(processDefinitionId, processDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keysIn, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, startableBy, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, includeProcessDefinitionsWithoutTenantId, versionTag, versionTagLike, withoutVersionTag, startableInTasklist, notStartableInTasklist, startablePermissionCheck, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for process definitions that fulfill given parameters. Parameters may be the properties of  process definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionIdIn = processDefinitionIdIn_example; // String | Filter by a comma-separated list of process definition ids.
final name = name_example; // String | Filter by process definition name.
final nameLike = nameLike_example; // String | Filter by process definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final deployedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final deployedAt = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final key = key_example; // String | Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
final keysIn = keysIn_example; // String | Filter by a comma-separated list of process definition keys.
final keyLike = keyLike_example; // String | Filter by process definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by process definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by process definition categories that the parameter is a substring of.
final version = 56; // int | Filter by process definition version.
final latestVersion = true; // bool | Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the process definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those process definition resources that the parameter is a substring of.
final startableBy = startableBy_example; // String | Filter by a user name who is allowed to start the process.
final active = true; // bool | Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
final includeProcessDefinitionsWithoutTenantId = true; // bool | Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final versionTag = versionTag_example; // String | Filter by the version tag.
final versionTagLike = versionTagLike_example; // String | Filter by the version tag that the parameter is a substring of.
final withoutVersionTag = true; // bool | Only include process definitions without a `versionTag`.
final startableInTasklist = true; // bool | Filter by process definitions which are startable in Tasklist..
final notStartableInTasklist = true; // bool | Filter by process definitions which are not startable in Tasklist.
final startablePermissionCheck = true; // bool | Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getProcessDefinitions(processDefinitionId, processDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keysIn, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, startableBy, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, includeProcessDefinitionsWithoutTenantId, versionTag, versionTagLike, withoutVersionTag, startableInTasklist, notStartableInTasklist, startablePermissionCheck, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionIdIn** | **String**| Filter by a comma-separated list of process definition ids. | [optional] 
 **name** | **String**| Filter by process definition name. | [optional] 
 **nameLike** | **String**| Filter by process definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **deployedAfter** | **DateTime**| Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **deployedAt** | **DateTime**| Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **key** | **String**| Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match. | [optional] 
 **keysIn** | **String**| Filter by a comma-separated list of process definition keys. | [optional] 
 **keyLike** | **String**| Filter by process definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by process definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by process definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by process definition version. | [optional] 
 **latestVersion** | **bool**| Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the process definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those process definition resources that the parameter is a substring of. | [optional] 
 **startableBy** | **String**| Filter by a user name who is allowed to start the process. | [optional] 
 **active** | **bool**| Only include active process definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior. | [optional] 
 **includeProcessDefinitionsWithoutTenantId** | **bool**| Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **versionTag** | **String**| Filter by the version tag. | [optional] 
 **versionTagLike** | **String**| Filter by the version tag that the parameter is a substring of. | [optional] 
 **withoutVersionTag** | **bool**| Only include process definitions without a `versionTag`. | [optional] 
 **startableInTasklist** | **bool**| Filter by process definitions which are startable in Tasklist.. | [optional] 
 **notStartableInTasklist** | **bool**| Filter by process definitions which are not startable in Tasklist. | [optional] 
 **startablePermissionCheck** | **bool**| Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<ProcessDefinitionDto>**](ProcessDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProcessDefinitionsCount**
> CountResultDto getProcessDefinitionsCount(processDefinitionId, processDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keysIn, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, startableBy, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, includeProcessDefinitionsWithoutTenantId, versionTag, versionTagLike, withoutVersionTag, startableInTasklist, notStartableInTasklist, startablePermissionCheck)

Get List Count

Requests the number of process definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Definitions](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final processDefinitionId = processDefinitionId_example; // String | Filter by process definition id.
final processDefinitionIdIn = processDefinitionIdIn_example; // String | Filter by a comma-separated list of process definition ids.
final name = name_example; // String | Filter by process definition name.
final nameLike = nameLike_example; // String | Filter by process definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final deployedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final deployedAt = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
final key = key_example; // String | Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
final keysIn = keysIn_example; // String | Filter by a comma-separated list of process definition keys.
final keyLike = keyLike_example; // String | Filter by process definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by process definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by process definition categories that the parameter is a substring of.
final version = 56; // int | Filter by process definition version.
final latestVersion = true; // bool | Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the process definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those process definition resources that the parameter is a substring of.
final startableBy = startableBy_example; // String | Filter by a user name who is allowed to start the process.
final active = true; // bool | Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
final incidentId = incidentId_example; // String | Filter by the incident id.
final incidentType = incidentType_example; // String | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Filter by the incident message. Exact match.
final incidentMessageLike = incidentMessageLike_example; // String | Filter by the incident message that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
final includeProcessDefinitionsWithoutTenantId = true; // bool | Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final versionTag = versionTag_example; // String | Filter by the version tag.
final versionTagLike = versionTagLike_example; // String | Filter by the version tag that the parameter is a substring of.
final withoutVersionTag = true; // bool | Only include process definitions without a `versionTag`.
final startableInTasklist = true; // bool | Filter by process definitions which are startable in Tasklist..
final notStartableInTasklist = true; // bool | Filter by process definitions which are not startable in Tasklist.
final startablePermissionCheck = true; // bool | Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level

try {
    final result = api_instance.getProcessDefinitionsCount(processDefinitionId, processDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keysIn, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, startableBy, active, suspended, incidentId, incidentType, incidentMessage, incidentMessageLike, tenantIdIn, withoutTenantId, includeProcessDefinitionsWithoutTenantId, versionTag, versionTagLike, withoutVersionTag, startableInTasklist, notStartableInTasklist, startablePermissionCheck);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getProcessDefinitionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processDefinitionId** | **String**| Filter by process definition id. | [optional] 
 **processDefinitionIdIn** | **String**| Filter by a comma-separated list of process definition ids. | [optional] 
 **name** | **String**| Filter by process definition name. | [optional] 
 **nameLike** | **String**| Filter by process definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **deployedAfter** | **DateTime**| Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **deployedAt** | **DateTime**| Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`. | [optional] 
 **key** | **String**| Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match. | [optional] 
 **keysIn** | **String**| Filter by a comma-separated list of process definition keys. | [optional] 
 **keyLike** | **String**| Filter by process definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by process definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by process definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by process definition version. | [optional] 
 **latestVersion** | **bool**| Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the process definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those process definition resources that the parameter is a substring of. | [optional] 
 **startableBy** | **String**| Filter by a user name who is allowed to start the process. | [optional] 
 **active** | **bool**| Only include active process definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **incidentId** | **String**| Filter by the incident id. | [optional] 
 **incidentType** | **String**| Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Filter by the incident message. Exact match. | [optional] 
 **incidentMessageLike** | **String**| Filter by the incident message that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior. | [optional] 
 **includeProcessDefinitionsWithoutTenantId** | **bool**| Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **versionTag** | **String**| Filter by the version tag. | [optional] 
 **versionTagLike** | **String**| Filter by the version tag that the parameter is a substring of. | [optional] 
 **withoutVersionTag** | **bool**| Only include process definitions without a `versionTag`. | [optional] 
 **startableInTasklist** | **bool**| Filter by process definitions which are startable in Tasklist.. | [optional] 
 **notStartableInTasklist** | **bool**| Filter by process definitions which are not startable in Tasklist. | [optional] 
 **startablePermissionCheck** | **bool**| Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRenderedStartForm**
> MultipartFile getRenderedStartForm(id)

Get Rendered Start Form

Retrieves the rendered form for a process definition. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to get the rendered start form for.

try {
    final result = api_instance.getRenderedStartForm(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getRenderedStartForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to get the rendered start form for. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRenderedStartFormByKey**
> MultipartFile getRenderedStartFormByKey(key)

Get Rendered Start Form

Retrieves  the rendered form for the latest version of the process definition which belongs to no tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getRenderedStartFormByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getRenderedStartFormByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRenderedStartFormByKeyAndTenantId**
> MultipartFile getRenderedStartFormByKeyAndTenantId(key, tenantId)

Get Rendered Start Form

Retrieves  the rendered form for the latest version of the process definition for a tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.

try {
    final result = api_instance.getRenderedStartFormByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getRenderedStartFormByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xhtml+xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartForm**
> FormDto getStartForm(id)

Get Start Form Key

Retrieves the key of the start form for a process definition. The form key corresponds to the `FormData#formKey` property in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to get the start form key for.

try {
    final result = api_instance.getStartForm(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to get the start form key for. | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartFormByKey**
> FormDto getStartFormByKey(key)

Get Start Form Key

Retrieves the key of the start form for the latest version of the process definition which belongs to no tenant. The form key corresponds to the `FormData#formKey` property in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) for which the form key is to be retrieved.

try {
    final result = api_instance.getStartFormByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartFormByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) for which the form key is to be retrieved. | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartFormByKeyAndTenantId**
> FormDto getStartFormByKeyAndTenantId(key, tenantId)

Get Start Form Key

Retrieves the key of the start form for the latest version of the process definition for a tenant. The form key corresponds to the `FormData#formKey` property in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) for which the form key is to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.

try {
    final result = api_instance.getStartFormByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartFormByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) for which the form key is to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 

### Return type

[**FormDto**](FormDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartFormVariables**
> Map<String, VariableValueDto> getStartFormVariables(id, variableNames, deserializeValues)

Get Start Form Variables

Retrieves the start form variables for a process definition (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to retrieve the variables for.
final variableNames = variableNames_example; // String | A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getStartFormVariables(id, variableNames, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartFormVariables: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to retrieve the variables for. | 
 **variableNames** | **String**| A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartFormVariablesByKey**
> Map<String, VariableValueDto> getStartFormVariablesByKey(key, variableNames, deserializeValues)

Get Start Form Variables

Retrieves the start form variables for the latest process definition which belongs to no tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final variableNames = variableNames_example; // String | A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getStartFormVariablesByKey(key, variableNames, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartFormVariablesByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **variableNames** | **String**| A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartFormVariablesByKeyAndTenantId**
> Map<String, VariableValueDto> getStartFormVariablesByKeyAndTenantId(key, tenantId, variableNames, deserializeValues)

Get Start Form Variables

Retrieves the start form variables for the latest process definition for a tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final variableNames = variableNames_example; // String | A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
final deserializeValues = true; // bool | Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.

try {
    final result = api_instance.getStartFormVariablesByKeyAndTenantId(key, tenantId, variableNames, deserializeValues);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStartFormVariablesByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **variableNames** | **String**| A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored. | [optional] 
 **deserializeValues** | **bool**| Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine. | [optional] [default to true]

### Return type

[**Map<String, VariableValueDto>**](VariableValueDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaticCalledProcessDefinitions**
> List<CalledProcessDefinitionDto> getStaticCalledProcessDefinitions(id)

Get Static Called Process Definitions

For the given process, returns a list of called process definitions corresponding to the `CalledProcessDefinition` interface in the engine. The list contains all process definitions that are referenced statically by call activities in the given process. This endpoint does not resolve process definitions that are referenced with expressions. Each called process definition contains a list of call activity ids, which specifies the call activities that are calling that process. This endpoint does not resolve references to case definitions.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition.

try {
    final result = api_instance.getStaticCalledProcessDefinitions(id);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->getStaticCalledProcessDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition. | 

### Return type

[**List<CalledProcessDefinitionDto>**](CalledProcessDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restartProcessInstance**
> restartProcessInstance(id, restartProcessInstanceDto)

Restart Process Instance

Restarts process instances that were canceled or terminated synchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance Async](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-async/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition of the process instances to restart.
final restartProcessInstanceDto = RestartProcessInstanceDto(); // RestartProcessInstanceDto | 

try {
    api_instance.restartProcessInstance(id, restartProcessInstanceDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->restartProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition of the process instances to restart. | 
 **restartProcessInstanceDto** | [**RestartProcessInstanceDto**](RestartProcessInstanceDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restartProcessInstanceAsyncOperation**
> BatchDto restartProcessInstanceAsyncOperation(id, restartProcessInstanceDto)

Restart Process Instance Async

Restarts process instances that were canceled or terminated asynchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-sync/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition of the process instances to restart.
final restartProcessInstanceDto = RestartProcessInstanceDto(); // RestartProcessInstanceDto | 

try {
    final result = api_instance.restartProcessInstanceAsyncOperation(id, restartProcessInstanceDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->restartProcessInstanceAsyncOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition of the process instances to restart. | 
 **restartProcessInstanceDto** | [**RestartProcessInstanceDto**](RestartProcessInstanceDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startProcessInstance**
> ProcessInstanceWithVariablesDto startProcessInstance(id, startProcessInstanceDto)

Start Instance

Instantiates a given process definition. Process variables and business key may be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to be retrieved.
final startProcessInstanceDto = StartProcessInstanceDto(); // StartProcessInstanceDto | 

try {
    final result = api_instance.startProcessInstance(id, startProcessInstanceDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->startProcessInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to be retrieved. | 
 **startProcessInstanceDto** | [**StartProcessInstanceDto**](StartProcessInstanceDto.md)|  | [optional] 

### Return type

[**ProcessInstanceWithVariablesDto**](ProcessInstanceWithVariablesDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startProcessInstanceByKey**
> ProcessInstanceWithVariablesDto startProcessInstanceByKey(key, startProcessInstanceDto)

Start Instance

Instantiates a given process definition, starts the latest version of the process definition which belongs to no tenant. Process variables and business key may be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final startProcessInstanceDto = StartProcessInstanceDto(); // StartProcessInstanceDto | 

try {
    final result = api_instance.startProcessInstanceByKey(key, startProcessInstanceDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->startProcessInstanceByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **startProcessInstanceDto** | [**StartProcessInstanceDto**](StartProcessInstanceDto.md)|  | [optional] 

### Return type

[**ProcessInstanceWithVariablesDto**](ProcessInstanceWithVariablesDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startProcessInstanceByKeyAndTenantId**
> ProcessInstanceWithVariablesDto startProcessInstanceByKeyAndTenantId(key, tenantId, startProcessInstanceDto)

Start Instance

Instantiates a given process definition, starts the latest version of the process definition for tenant. Process variables and business key may be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final startProcessInstanceDto = StartProcessInstanceDto(); // StartProcessInstanceDto | 

try {
    final result = api_instance.startProcessInstanceByKeyAndTenantId(key, tenantId, startProcessInstanceDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->startProcessInstanceByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **startProcessInstanceDto** | [**StartProcessInstanceDto**](StartProcessInstanceDto.md)|  | [optional] 

### Return type

[**ProcessInstanceWithVariablesDto**](ProcessInstanceWithVariablesDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitForm**
> ProcessInstanceDto submitForm(id, startProcessInstanceFormDto)

Submit Start Form

Starts a process instance using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to submit the form for.
final startProcessInstanceFormDto = StartProcessInstanceFormDto(); // StartProcessInstanceFormDto | 

try {
    final result = api_instance.submitForm(id, startProcessInstanceFormDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->submitForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to submit the form for. | 
 **startProcessInstanceFormDto** | [**StartProcessInstanceFormDto**](StartProcessInstanceFormDto.md)|  | [optional] 

### Return type

[**ProcessInstanceDto**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitFormByKey**
> ProcessInstanceDto submitFormByKey(key, startProcessInstanceFormDto)

Submit Start Form

Starts the latest version of the process definition which belongs to no tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition to submit the form for.
final startProcessInstanceFormDto = StartProcessInstanceFormDto(); // StartProcessInstanceFormDto | 

try {
    final result = api_instance.submitFormByKey(key, startProcessInstanceFormDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->submitFormByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition to submit the form for. | 
 **startProcessInstanceFormDto** | [**StartProcessInstanceFormDto**](StartProcessInstanceFormDto.md)|  | [optional] 

### Return type

[**ProcessInstanceDto**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitFormByKeyAndTenantId**
> ProcessInstanceDto submitFormByKeyAndTenantId(key, tenantId, startProcessInstanceFormDto)

Submit Start Form

Starts the latest version of the process definition for a tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition to submit the form for.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final startProcessInstanceFormDto = StartProcessInstanceFormDto(); // StartProcessInstanceFormDto | 

try {
    final result = api_instance.submitFormByKeyAndTenantId(key, tenantId, startProcessInstanceFormDto);
    print(result);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->submitFormByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition to submit the form for. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **startProcessInstanceFormDto** | [**StartProcessInstanceFormDto**](StartProcessInstanceFormDto.md)|  | [optional] 

### Return type

[**ProcessInstanceDto**](ProcessInstanceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByProcessDefinitionId**
> updateHistoryTimeToLiveByProcessDefinitionId(id, historyTimeToLiveDto)

Update History Time to Live

Updates history time to live for process definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to change history time to live.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByProcessDefinitionId(id, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateHistoryTimeToLiveByProcessDefinitionId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to change history time to live. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByProcessDefinitionKey**
> updateHistoryTimeToLiveByProcessDefinitionKey(key, historyTimeToLiveDto)

Update History Time to Live

Updates history time to live for the latest version of the process definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition to change history time to live.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByProcessDefinitionKey(key, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateHistoryTimeToLiveByProcessDefinitionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition to change history time to live. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId**
> updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId(key, tenantId, historyTimeToLiveDto)

Update History Time to Live

Updates history time to live for the latest version of the process definition for a tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition to change history time to live.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId(key, tenantId, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition to change history time to live. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProcessDefinitionSuspensionState**
> updateProcessDefinitionSuspensionState(processDefinitionSuspensionStateDto)

Activate/Suspend By Key

Activates or suspends process definitions with the given process definition key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final processDefinitionSuspensionStateDto = ProcessDefinitionSuspensionStateDto(); // ProcessDefinitionSuspensionStateDto | **Note**: Unallowed property is `processDefinitionId`.

try {
    api_instance.updateProcessDefinitionSuspensionState(processDefinitionSuspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateProcessDefinitionSuspensionState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **processDefinitionSuspensionStateDto** | [**ProcessDefinitionSuspensionStateDto**](ProcessDefinitionSuspensionStateDto.md)| **Note**: Unallowed property is `processDefinitionId`. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProcessDefinitionSuspensionStateById**
> updateProcessDefinitionSuspensionStateById(id, processDefinitionSuspensionStateDto)

Activate/Suspend By Id

Activates or suspends a given process definition by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final id = id_example; // String | The id of the process definition to activate or suspend.
final processDefinitionSuspensionStateDto = ProcessDefinitionSuspensionStateDto(); // ProcessDefinitionSuspensionStateDto | **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.

try {
    api_instance.updateProcessDefinitionSuspensionStateById(id, processDefinitionSuspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateProcessDefinitionSuspensionStateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the process definition to activate or suspend. | 
 **processDefinitionSuspensionStateDto** | [**ProcessDefinitionSuspensionStateDto**](ProcessDefinitionSuspensionStateDto.md)| **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProcessDefinitionSuspensionStateByKey**
> updateProcessDefinitionSuspensionStateByKey(key, processDefinitionSuspensionStateDto)

Activate/Suspend by Id

Activates or suspends a given process definition by latest version of process definition key which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be activated/suspended.
final processDefinitionSuspensionStateDto = ProcessDefinitionSuspensionStateDto(); // ProcessDefinitionSuspensionStateDto | **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.

try {
    api_instance.updateProcessDefinitionSuspensionStateByKey(key, processDefinitionSuspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateProcessDefinitionSuspensionStateByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be activated/suspended. | 
 **processDefinitionSuspensionStateDto** | [**ProcessDefinitionSuspensionStateDto**](ProcessDefinitionSuspensionStateDto.md)| **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProcessDefinitionSuspensionStateByKeyAndTenantId**
> updateProcessDefinitionSuspensionStateByKeyAndTenantId(key, tenantId, processDefinitionSuspensionStateDto)

Activate/Suspend by Id

Activates or suspends a given process definition by the latest version of the process definition for tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = ProcessDefinitionApi();
final key = key_example; // String | The key of the process definition (the latest version thereof) to be activated/suspended.
final tenantId = tenantId_example; // String | The id of the tenant the process definition belongs to.
final processDefinitionSuspensionStateDto = ProcessDefinitionSuspensionStateDto(); // ProcessDefinitionSuspensionStateDto | **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.

try {
    api_instance.updateProcessDefinitionSuspensionStateByKeyAndTenantId(key, tenantId, processDefinitionSuspensionStateDto);
} catch (e) {
    print('Exception when calling ProcessDefinitionApi->updateProcessDefinitionSuspensionStateByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the process definition (the latest version thereof) to be activated/suspended. | 
 **tenantId** | **String**| The id of the tenant the process definition belongs to. | 
 **processDefinitionSuspensionStateDto** | [**ProcessDefinitionSuspensionStateDto**](ProcessDefinitionSuspensionStateDto.md)| **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`. | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

