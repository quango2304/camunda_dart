# openapi.api.JobDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJobDefinition**](JobDefinitionApi.md#getjobdefinition) | **GET** /job-definition/{id} | Get Job Definition
[**getJobDefinitions**](JobDefinitionApi.md#getjobdefinitions) | **GET** /job-definition | Get Job Definitions
[**getJobDefinitionsCount**](JobDefinitionApi.md#getjobdefinitionscount) | **GET** /job-definition/count | Get Job Definition Count
[**queryJobDefinitions**](JobDefinitionApi.md#queryjobdefinitions) | **POST** /job-definition | Get Job Definitions (POST)
[**queryJobDefinitionsCount**](JobDefinitionApi.md#queryjobdefinitionscount) | **POST** /job-definition/count | Get Job Definition Count (POST)
[**setJobPriorityJobDefinition**](JobDefinitionApi.md#setjobpriorityjobdefinition) | **PUT** /job-definition/{id}/jobPriority | Set Job Definition Priority by Id
[**setJobRetriesJobDefinition**](JobDefinitionApi.md#setjobretriesjobdefinition) | **PUT** /job-definition/{id}/retries | Set Job Retries By Job Definition Id
[**updateSuspensionStateJobDefinition**](JobDefinitionApi.md#updatesuspensionstatejobdefinition) | **PUT** /job-definition/{id}/suspended | Activate/Suspend Job Definition By Id
[**updateSuspensionStateJobDefinitions**](JobDefinitionApi.md#updatesuspensionstatejobdefinitions) | **PUT** /job-definition/suspended | Activate/Suspend Job Definitions


# **getJobDefinition**
> JobDefinitionDto getJobDefinition(id)

Get Job Definition

Retrieves a job definition by id, according to the `JobDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final id = id_example; // String | The id of the job definition to be retrieved.

try {
    final result = api_instance.getJobDefinition(id);
    print(result);
} catch (e) {
    print('Exception when calling JobDefinitionApi->getJobDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job definition to be retrieved. | 

### Return type

[**JobDefinitionDto**](JobDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobDefinitions**
> List<JobDefinitionDto> getJobDefinitions(jobDefinitionId, activityIdIn, processDefinitionId, processDefinitionKey, jobType, jobConfiguration, active, suspended, withOverridingJobPriority, tenantIdIn, withoutTenantId, includeJobDefinitionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get Job Definitions

Queries for job definitions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final activityIdIn = activityIdIn_example; // String | Only include job definitions which belong to one of the passed and comma-separated activity ids.
final processDefinitionId = processDefinitionId_example; // String | Only include job definitions which exist for the given process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Only include job definitions which exist for the given process definition key.
final jobType = jobType_example; // String | Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
final jobConfiguration = jobConfiguration_example; // String | Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
final active = true; // bool | Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
final withOverridingJobPriority = true; // bool | Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
final tenantIdIn = tenantIdIn_example; // String | Only include job definitions which belong to one of the passed and comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeJobDefinitionsWithoutTenantId = true; // bool | Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getJobDefinitions(jobDefinitionId, activityIdIn, processDefinitionId, processDefinitionKey, jobType, jobConfiguration, active, suspended, withOverridingJobPriority, tenantIdIn, withoutTenantId, includeJobDefinitionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling JobDefinitionApi->getJobDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **activityIdIn** | **String**| Only include job definitions which belong to one of the passed and comma-separated activity ids. | [optional] 
 **processDefinitionId** | **String**| Only include job definitions which exist for the given process definition id. | [optional] 
 **processDefinitionKey** | **String**| Only include job definitions which exist for the given process definition key. | [optional] 
 **jobType** | **String**| Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types. | [optional] 
 **jobConfiguration** | **String**| Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration. | [optional] 
 **active** | **bool**| Only include active job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withOverridingJobPriority** | **bool**| Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied. | [optional] 
 **tenantIdIn** | **String**| Only include job definitions which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeJobDefinitionsWithoutTenantId** | **bool**| Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<JobDefinitionDto>**](JobDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobDefinitionsCount**
> CountResultDto getJobDefinitionsCount(jobDefinitionId, activityIdIn, processDefinitionId, processDefinitionKey, jobType, jobConfiguration, active, suspended, withOverridingJobPriority, tenantIdIn, withoutTenantId, includeJobDefinitionsWithoutTenantId)

Get Job Definition Count

Queries for the number of job definitions that fulfill given parameters. Takes the same parameters as the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final jobDefinitionId = jobDefinitionId_example; // String | Filter by job definition id.
final activityIdIn = activityIdIn_example; // String | Only include job definitions which belong to one of the passed and comma-separated activity ids.
final processDefinitionId = processDefinitionId_example; // String | Only include job definitions which exist for the given process definition id.
final processDefinitionKey = processDefinitionKey_example; // String | Only include job definitions which exist for the given process definition key.
final jobType = jobType_example; // String | Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
final jobConfiguration = jobConfiguration_example; // String | Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
final active = true; // bool | Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
final suspended = true; // bool | Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
final withOverridingJobPriority = true; // bool | Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
final tenantIdIn = tenantIdIn_example; // String | Only include job definitions which belong to one of the passed and comma-separated tenant ids.
final withoutTenantId = true; // bool | Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeJobDefinitionsWithoutTenantId = true; // bool | Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getJobDefinitionsCount(jobDefinitionId, activityIdIn, processDefinitionId, processDefinitionKey, jobType, jobConfiguration, active, suspended, withOverridingJobPriority, tenantIdIn, withoutTenantId, includeJobDefinitionsWithoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling JobDefinitionApi->getJobDefinitionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDefinitionId** | **String**| Filter by job definition id. | [optional] 
 **activityIdIn** | **String**| Only include job definitions which belong to one of the passed and comma-separated activity ids. | [optional] 
 **processDefinitionId** | **String**| Only include job definitions which exist for the given process definition id. | [optional] 
 **processDefinitionKey** | **String**| Only include job definitions which exist for the given process definition key. | [optional] 
 **jobType** | **String**| Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types. | [optional] 
 **jobConfiguration** | **String**| Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration. | [optional] 
 **active** | **bool**| Only include active job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **suspended** | **bool**| Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **withOverridingJobPriority** | **bool**| Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied. | [optional] 
 **tenantIdIn** | **String**| Only include job definitions which belong to one of the passed and comma-separated tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeJobDefinitionsWithoutTenantId** | **bool**| Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryJobDefinitions**
> List<JobDefinitionDto> queryJobDefinitions(firstResult, maxResults, jobDefinitionQueryDto)

Get Job Definitions (POST)

Queries for job definitions that fulfill given parameters. This method is slightly more powerful than the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method because it allows filtering by multiple job definitions of types `String`, `Number` or `Boolean`.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final jobDefinitionQueryDto = JobDefinitionQueryDto(); // JobDefinitionQueryDto | 

try {
    final result = api_instance.queryJobDefinitions(firstResult, maxResults, jobDefinitionQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling JobDefinitionApi->queryJobDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **jobDefinitionQueryDto** | [**JobDefinitionQueryDto**](JobDefinitionQueryDto.md)|  | [optional] 

### Return type

[**List<JobDefinitionDto>**](JobDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryJobDefinitionsCount**
> CountResultDto queryJobDefinitionsCount(jobDefinitionQueryDto)

Get Job Definition Count (POST)

Queries for the number of job definitions that fulfill given parameters. This method takes the same message body as the [Get Job Definitions (POST)](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/post-query/) method and therefore it is slightly more powerful than the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final jobDefinitionQueryDto = JobDefinitionQueryDto(); // JobDefinitionQueryDto | 

try {
    final result = api_instance.queryJobDefinitionsCount(jobDefinitionQueryDto);
    print(result);
} catch (e) {
    print('Exception when calling JobDefinitionApi->queryJobDefinitionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDefinitionQueryDto** | [**JobDefinitionQueryDto**](JobDefinitionQueryDto.md)|  | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobPriorityJobDefinition**
> setJobPriorityJobDefinition(id, jobDefinitionPriorityDto)

Set Job Definition Priority by Id

Sets an overriding execution priority for jobs with the given definition id. Optionally, the priorities of all the definitions' existing jobs are updated accordingly. The priority can be reset by setting it to `null`, meaning that a new job's priority will not be determined based on its definition's priority any longer. See the [user guide on job prioritization](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#set-job-definition-priorities-via-managementservice-api) for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final id = id_example; // String | The id of the job definition to be updated.
final jobDefinitionPriorityDto = JobDefinitionPriorityDto(); // JobDefinitionPriorityDto | 

try {
    api_instance.setJobPriorityJobDefinition(id, jobDefinitionPriorityDto);
} catch (e) {
    print('Exception when calling JobDefinitionApi->setJobPriorityJobDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job definition to be updated. | 
 **jobDefinitionPriorityDto** | [**JobDefinitionPriorityDto**](JobDefinitionPriorityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setJobRetriesJobDefinition**
> setJobRetriesJobDefinition(id, retriesDto)

Set Job Retries By Job Definition Id

Sets the number of retries of all **failed** jobs associated with the given job definition id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final id = id_example; // String | The id of the job definition to be updated.
final retriesDto = RetriesDto(); // RetriesDto | 

try {
    api_instance.setJobRetriesJobDefinition(id, retriesDto);
} catch (e) {
    print('Exception when calling JobDefinitionApi->setJobRetriesJobDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job definition to be updated. | 
 **retriesDto** | [**RetriesDto**](RetriesDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionStateJobDefinition**
> updateSuspensionStateJobDefinition(id, jobDefinitionSuspensionStateDto)

Activate/Suspend Job Definition By Id

Activates or suspends a given job definition by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final id = id_example; // String | The id of the job definition to activate or suspend.
final jobDefinitionSuspensionStateDto = JobDefinitionSuspensionStateDto(); // JobDefinitionSuspensionStateDto | 

try {
    api_instance.updateSuspensionStateJobDefinition(id, jobDefinitionSuspensionStateDto);
} catch (e) {
    print('Exception when calling JobDefinitionApi->updateSuspensionStateJobDefinition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the job definition to activate or suspend. | 
 **jobDefinitionSuspensionStateDto** | [**JobDefinitionSuspensionStateDto**](JobDefinitionSuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSuspensionStateJobDefinitions**
> updateSuspensionStateJobDefinitions(jobDefinitionsSuspensionStateDto)

Activate/Suspend Job Definitions

Activates or suspends job definitions with the given process definition id or process definition key.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = JobDefinitionApi();
final jobDefinitionsSuspensionStateDto = JobDefinitionsSuspensionStateDto(); // JobDefinitionsSuspensionStateDto | 

try {
    api_instance.updateSuspensionStateJobDefinitions(jobDefinitionsSuspensionStateDto);
} catch (e) {
    print('Exception when calling JobDefinitionApi->updateSuspensionStateJobDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobDefinitionsSuspensionStateDto** | [**JobDefinitionsSuspensionStateDto**](JobDefinitionsSuspensionStateDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

