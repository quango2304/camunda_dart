# openapi.api.DecisionDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**evaluateDecisionById**](DecisionDefinitionApi.md#evaluatedecisionbyid) | **POST** /decision-definition/{id}/evaluate | Evaluate By Id
[**evaluateDecisionByKey**](DecisionDefinitionApi.md#evaluatedecisionbykey) | **POST** /decision-definition/key/{key}/evaluate | Evaluate By Key
[**evaluateDecisionByKeyAndTenant**](DecisionDefinitionApi.md#evaluatedecisionbykeyandtenant) | **POST** /decision-definition/key/{key}/tenant-id/{tenant-id}/evaluate | Evaluate By Key And Tenant
[**getDecisionDefinitionById**](DecisionDefinitionApi.md#getdecisiondefinitionbyid) | **GET** /decision-definition/{id} | Get Decision Definition By Id
[**getDecisionDefinitionByKey**](DecisionDefinitionApi.md#getdecisiondefinitionbykey) | **GET** /decision-definition/key/{key} | Get Decision Definition By Key
[**getDecisionDefinitionByKeyAndTenantId**](DecisionDefinitionApi.md#getdecisiondefinitionbykeyandtenantid) | **GET** /decision-definition/key/{key}/tenant-id/{tenant-id} | Get Decision Definition By Key And Tenant Id
[**getDecisionDefinitionDiagram**](DecisionDefinitionApi.md#getdecisiondefinitiondiagram) | **GET** /decision-definition/{id}/diagram | Get Diagram
[**getDecisionDefinitionDiagramByKey**](DecisionDefinitionApi.md#getdecisiondefinitiondiagrambykey) | **GET** /decision-definition/key/{key}/diagram | Get Diagram By Key
[**getDecisionDefinitionDiagramByKeyAndTenant**](DecisionDefinitionApi.md#getdecisiondefinitiondiagrambykeyandtenant) | **GET** /decision-definition/key/{key}/tenant-id/{tenant-id}/diagram | Get Diagram By Key And Tenant
[**getDecisionDefinitionDmnXmlById**](DecisionDefinitionApi.md#getdecisiondefinitiondmnxmlbyid) | **GET** /decision-definition/{id}/xml | Get XML By Id
[**getDecisionDefinitionDmnXmlByKey**](DecisionDefinitionApi.md#getdecisiondefinitiondmnxmlbykey) | **GET** /decision-definition/key/{key}/xml | Get XML By Key
[**getDecisionDefinitionDmnXmlByKeyAndTenant**](DecisionDefinitionApi.md#getdecisiondefinitiondmnxmlbykeyandtenant) | **GET** /decision-definition/key/{key}/tenant-id/{tenant-id}/xml | Get XML By Key and Tenant
[**getDecisionDefinitions**](DecisionDefinitionApi.md#getdecisiondefinitions) | **GET** /decision-definition | Get List
[**getDecisionDefinitionsCount**](DecisionDefinitionApi.md#getdecisiondefinitionscount) | **GET** /decision-definition/count | Get List Count
[**updateHistoryTimeToLiveByDecisionDefinitionId**](DecisionDefinitionApi.md#updatehistorytimetolivebydecisiondefinitionid) | **PUT** /decision-definition/{id}/history-time-to-live | Update History Time to Live
[**updateHistoryTimeToLiveByDecisionDefinitionKey**](DecisionDefinitionApi.md#updatehistorytimetolivebydecisiondefinitionkey) | **PUT** /decision-definition/key/{key}/history-time-to-live | Update History Time to Live By Key
[**updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant**](DecisionDefinitionApi.md#updatehistorytimetolivebydecisiondefinitionkeyandtenant) | **PUT** /decision-definition/key/{key}/tenant-id/{tenant-id}/history-time-to-live | Update History Time to Live By Key And Tenant


# **evaluateDecisionById**
> List<Map<String, VariableValueDto>> evaluateDecisionById(id, evaluateDecisionDto)

Evaluate By Id

Evaluates a given decision and returns the result. The input values of the decision have to be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final id = id_example; // String | The id of the decision definition to be evaluated.
final evaluateDecisionDto = EvaluateDecisionDto(); // EvaluateDecisionDto | 

try {
    final result = api_instance.evaluateDecisionById(id, evaluateDecisionDto);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->evaluateDecisionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision definition to be evaluated. | 
 **evaluateDecisionDto** | [**EvaluateDecisionDto**](EvaluateDecisionDto.md)|  | [optional] 

### Return type

[**List<Map<String, VariableValueDto>>**](Map.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateDecisionByKey**
> List<Map<String, VariableValueDto>> evaluateDecisionByKey(key, evaluateDecisionDto)

Evaluate By Key

Evaluates the latest version of the decision definition which belongs to no tenant. The input values of the decision have to be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be evaluated.
final evaluateDecisionDto = EvaluateDecisionDto(); // EvaluateDecisionDto | 

try {
    final result = api_instance.evaluateDecisionByKey(key, evaluateDecisionDto);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->evaluateDecisionByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be evaluated. | 
 **evaluateDecisionDto** | [**EvaluateDecisionDto**](EvaluateDecisionDto.md)|  | [optional] 

### Return type

[**List<Map<String, VariableValueDto>>**](Map.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **evaluateDecisionByKeyAndTenant**
> List<Map<String, VariableValueDto>> evaluateDecisionByKeyAndTenant(key, tenantId, evaluateDecisionDto)

Evaluate By Key And Tenant

Evaluates the latest version of the decision definition for tenant. The input values of the decision have to be supplied in the request body.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be evaluated.
final tenantId = tenantId_example; // String | The id of the tenant the decision definition belongs to.
final evaluateDecisionDto = EvaluateDecisionDto(); // EvaluateDecisionDto | 

try {
    final result = api_instance.evaluateDecisionByKeyAndTenant(key, tenantId, evaluateDecisionDto);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->evaluateDecisionByKeyAndTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be evaluated. | 
 **tenantId** | **String**| The id of the tenant the decision definition belongs to. | 
 **evaluateDecisionDto** | [**EvaluateDecisionDto**](EvaluateDecisionDto.md)|  | [optional] 

### Return type

[**List<Map<String, VariableValueDto>>**](Map.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionById**
> DecisionDefinitionDto getDecisionDefinitionById(id)

Get Decision Definition By Id

Retrieves a decision definition by id, according to the `DecisionDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final id = id_example; // String | The id of the decision definition to be retrieved.

try {
    final result = api_instance.getDecisionDefinitionById(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision definition to be retrieved. | 

### Return type

[**DecisionDefinitionDto**](DecisionDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionByKey**
> DecisionDefinitionDto getDecisionDefinitionByKey(key)

Get Decision Definition By Key

Retrieves the latest version of the decision definition which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDecisionDefinitionByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be retrieved. | 

### Return type

[**DecisionDefinitionDto**](DecisionDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionByKeyAndTenantId**
> DecisionDefinitionDto getDecisionDefinitionByKeyAndTenantId(key, tenantId)

Get Decision Definition By Key And Tenant Id

Retrieves the latest version of the decision definition for tenant

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the decision definition belongs to.

try {
    final result = api_instance.getDecisionDefinitionByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the decision definition belongs to. | 

### Return type

[**DecisionDefinitionDto**](DecisionDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionDiagram**
> MultipartFile getDecisionDefinitionDiagram(id)

Get Diagram

Retrieves the diagram of a decision definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final id = id_example; // String | The id of the process definition.

try {
    final result = api_instance.getDecisionDefinitionDiagram(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDiagram: $e\n');
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

# **getDecisionDefinitionDiagramByKey**
> MultipartFile getDecisionDefinitionDiagramByKey(key)

Get Diagram By Key

Returns the diagram for the latest version of the decision definition which belongs to no tenant

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDecisionDefinitionDiagramByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDiagramByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be retrieved. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionDiagramByKeyAndTenant**
> MultipartFile getDecisionDefinitionDiagramByKeyAndTenant(key, tenantId)

Get Diagram By Key And Tenant

Returns the XML of the latest version of the decision definition for tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant the decision definition belongs to.

try {
    final result = api_instance.getDecisionDefinitionDiagramByKeyAndTenant(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDiagramByKeyAndTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant the decision definition belongs to. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionDmnXmlById**
> DecisionDefinitionDiagramDto getDecisionDefinitionDmnXmlById(id)

Get XML By Id

Retrieves the DMN XML of a decision definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final id = id_example; // String | The id of the decision definition.

try {
    final result = api_instance.getDecisionDefinitionDmnXmlById(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDmnXmlById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision definition. | 

### Return type

[**DecisionDefinitionDiagramDto**](DecisionDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionDmnXmlByKey**
> DecisionDefinitionDiagramDto getDecisionDefinitionDmnXmlByKey(key)

Get XML By Key

Retrieves the XML for the latest version of the decision definition which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof).

try {
    final result = api_instance.getDecisionDefinitionDmnXmlByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDmnXmlByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof). | 

### Return type

[**DecisionDefinitionDiagramDto**](DecisionDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionDmnXmlByKeyAndTenant**
> DecisionDefinitionDiagramDto getDecisionDefinitionDmnXmlByKeyAndTenant(key, tenantId)

Get XML By Key and Tenant

Retrieves the XML of the latest version of the decision definition for tenant

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definition (the latest version thereof).
final tenantId = tenantId_example; // String | The id of the tenant the decision definition belongs to.

try {
    final result = api_instance.getDecisionDefinitionDmnXmlByKeyAndTenant(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionDmnXmlByKeyAndTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definition (the latest version thereof). | 
 **tenantId** | **String**| The id of the tenant the decision definition belongs to. | 

### Return type

[**DecisionDefinitionDiagramDto**](DecisionDefinitionDiagramDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitions**
> List<DecisionDefinitionDto> getDecisionDefinitions(sortBy, sortOrder, firstResult, maxResults, decisionDefinitionId, decisionDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition, tenantIdIn, withoutTenantId, includeDecisionDefinitionsWithoutTenantId, versionTag, versionTagLike)

Get List

Queries for decision definitions that fulfill given parameters. Parameters may be the properties of decision definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Decision Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final decisionDefinitionId = decisionDefinitionId_example; // String | Filter by decision definition id.
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by decision definition ids.
final name = name_example; // String | Filter by decision definition name.
final nameLike = nameLike_example; // String | Filter by decision definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final deployedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
final deployedAt = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
final key = key_example; // String | Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
final keyLike = keyLike_example; // String | Filter by decision definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by decision definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by decision definition categories that the parameter is a substring of.
final version = 56; // int | Filter by decision definition version.
final latestVersion = true; // bool | Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the decision definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those decision definition resources that the parameter is a substring of.
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by the id of the decision requirements definition this decision definition belongs to.
final decisionRequirementsDefinitionKey = decisionRequirementsDefinitionKey_example; // String | Filter by the key of the decision requirements definition this decision definition belongs to.
final withoutDecisionRequirementsDefinition = true; // bool | Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final includeDecisionDefinitionsWithoutTenantId = true; // bool | Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final versionTag = versionTag_example; // String | Filter by the version tag.
final versionTagLike = versionTagLike_example; // String | Filter by the version tags of those decision definition resources that the parameter is a substring of.

try {
    final result = api_instance.getDecisionDefinitions(sortBy, sortOrder, firstResult, maxResults, decisionDefinitionId, decisionDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition, tenantIdIn, withoutTenantId, includeDecisionDefinitionsWithoutTenantId, versionTag, versionTagLike);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **decisionDefinitionId** | **String**| Filter by decision definition id. | [optional] 
 **decisionDefinitionIdIn** | **String**| Filter by decision definition ids. | [optional] 
 **name** | **String**| Filter by decision definition name. | [optional] 
 **nameLike** | **String**| Filter by decision definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **deployedAfter** | **DateTime**| Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time. | [optional] 
 **deployedAt** | **DateTime**| Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match). | [optional] 
 **key** | **String**| Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match. | [optional] 
 **keyLike** | **String**| Filter by decision definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by decision definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by decision definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by decision definition version. | [optional] 
 **latestVersion** | **bool**| Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the decision definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those decision definition resources that the parameter is a substring of. | [optional] 
 **decisionRequirementsDefinitionId** | **String**| Filter by the id of the decision requirements definition this decision definition belongs to. | [optional] 
 **decisionRequirementsDefinitionKey** | **String**| Filter by the key of the decision requirements definition this decision definition belongs to. | [optional] 
 **withoutDecisionRequirementsDefinition** | **bool**| Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **includeDecisionDefinitionsWithoutTenantId** | **bool**| Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **versionTag** | **String**| Filter by the version tag. | [optional] 
 **versionTagLike** | **String**| Filter by the version tags of those decision definition resources that the parameter is a substring of. | [optional] 

### Return type

[**List<DecisionDefinitionDto>**](DecisionDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionDefinitionsCount**
> CountResultDto getDecisionDefinitionsCount(decisionDefinitionId, decisionDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition, tenantIdIn, withoutTenantId, includeDecisionDefinitionsWithoutTenantId, versionTag, versionTagLike)

Get List Count

Requests the number of decision definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Definition](https://docs.camunda.org/manual/7.20/reference/rest/decision-definition/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final decisionDefinitionId = decisionDefinitionId_example; // String | Filter by decision definition id.
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by decision definition ids.
final name = name_example; // String | Filter by decision definition name.
final nameLike = nameLike_example; // String | Filter by decision definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the deployment the id belongs to.
final deployedAfter = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time.
final deployedAt = 2013-10-20T19:20:30+01:00; // DateTime | Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match).
final key = key_example; // String | Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match.
final keyLike = keyLike_example; // String | Filter by decision definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by decision definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by decision definition categories that the parameter is a substring of.
final version = 56; // int | Filter by decision definition version.
final latestVersion = true; // bool | Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the decision definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those decision definition resources that the parameter is a substring of.
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by the id of the decision requirements definition this decision definition belongs to.
final decisionRequirementsDefinitionKey = decisionRequirementsDefinitionKey_example; // String | Filter by the key of the decision requirements definition this decision definition belongs to.
final withoutDecisionRequirementsDefinition = true; // bool | Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
final includeDecisionDefinitionsWithoutTenantId = true; // bool | Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final versionTag = versionTag_example; // String | Filter by the version tag.
final versionTagLike = versionTagLike_example; // String | Filter by the version tags of those decision definition resources that the parameter is a substring of.

try {
    final result = api_instance.getDecisionDefinitionsCount(decisionDefinitionId, decisionDefinitionIdIn, name, nameLike, deploymentId, deployedAfter, deployedAt, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, decisionRequirementsDefinitionId, decisionRequirementsDefinitionKey, withoutDecisionRequirementsDefinition, tenantIdIn, withoutTenantId, includeDecisionDefinitionsWithoutTenantId, versionTag, versionTagLike);
    print(result);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->getDecisionDefinitionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionDefinitionId** | **String**| Filter by decision definition id. | [optional] 
 **decisionDefinitionIdIn** | **String**| Filter by decision definition ids. | [optional] 
 **name** | **String**| Filter by decision definition name. | [optional] 
 **nameLike** | **String**| Filter by decision definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the deployment the id belongs to. | [optional] 
 **deployedAfter** | **DateTime**| Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed after (exclusive) a specific time. | [optional] 
 **deployedAt** | **DateTime**| Filter by the deploy time of the deployment the decision definition belongs to. Only selects decision definitions that have been deployed at a specific time (exact match). | [optional] 
 **key** | **String**| Filter by decision definition key, i.e., the id in the DMN 1.0 XML. Exact match. | [optional] 
 **keyLike** | **String**| Filter by decision definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by decision definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by decision definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by decision definition version. | [optional] 
 **latestVersion** | **bool**| Only include those decision definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the decision definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those decision definition resources that the parameter is a substring of. | [optional] 
 **decisionRequirementsDefinitionId** | **String**| Filter by the id of the decision requirements definition this decision definition belongs to. | [optional] 
 **decisionRequirementsDefinitionKey** | **String**| Filter by the key of the decision requirements definition this decision definition belongs to. | [optional] 
 **withoutDecisionRequirementsDefinition** | **bool**| Only include decision definitions which does not belongs to any decision requirements definition. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of `Strings`. A decision definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision definitions which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
 **includeDecisionDefinitionsWithoutTenantId** | **bool**| Include decision definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **versionTag** | **String**| Filter by the version tag. | [optional] 
 **versionTagLike** | **String**| Filter by the version tags of those decision definition resources that the parameter is a substring of. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByDecisionDefinitionId**
> updateHistoryTimeToLiveByDecisionDefinitionId(id, historyTimeToLiveDto)

Update History Time to Live

Updates history time to live for decision definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final id = id_example; // String | The id of the decision definition to change history time to live.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByDecisionDefinitionId(id, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->updateHistoryTimeToLiveByDecisionDefinitionId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision definition to change history time to live. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByDecisionDefinitionKey**
> updateHistoryTimeToLiveByDecisionDefinitionKey(key, historyTimeToLiveDto)

Update History Time to Live By Key

Updates the latest version of the decision definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definitions to change history time to live.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByDecisionDefinitionKey(key, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->updateHistoryTimeToLiveByDecisionDefinitionKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definitions to change history time to live. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant**
> updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant(key, tenantId, historyTimeToLiveDto)

Update History Time to Live By Key And Tenant

Updates the latest version of the decision definition for tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionDefinitionApi();
final key = key_example; // String | The key of the decision definitions to change history time to live.
final tenantId = tenantId_example; // String | The id of the tenant the decision definition belongs to.
final historyTimeToLiveDto = HistoryTimeToLiveDto(); // HistoryTimeToLiveDto | 

try {
    api_instance.updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant(key, tenantId, historyTimeToLiveDto);
} catch (e) {
    print('Exception when calling DecisionDefinitionApi->updateHistoryTimeToLiveByDecisionDefinitionKeyAndTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision definitions to change history time to live. | 
 **tenantId** | **String**| The id of the tenant the decision definition belongs to. | 
 **historyTimeToLiveDto** | [**HistoryTimeToLiveDto**](HistoryTimeToLiveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

