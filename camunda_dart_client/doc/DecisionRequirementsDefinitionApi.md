# openapi.api.DecisionRequirementsDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDecisionRequirementsDefinitionById**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitionbyid) | **GET** /decision-requirements-definition/{id} | Get Decision Requirements Definition by ID
[**getDecisionRequirementsDefinitionByKey**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitionbykey) | **GET** /decision-requirements-definition/key/{key} | Get Decision Requirements Definition by Key
[**getDecisionRequirementsDefinitionByKeyAndTenantId**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitionbykeyandtenantid) | **GET** /decision-requirements-definition/key/{key}/tenant-id/{tenant-id} | Get Decision Requirements Definition by Key and Tenant ID
[**getDecisionRequirementsDefinitionDiagramById**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondiagrambyid) | **GET** /decision-requirements-definition/{id}/diagram | Get Decision Requirements Diagram by ID
[**getDecisionRequirementsDefinitionDiagramByKey**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondiagrambykey) | **GET** /decision-requirements-definition/key/{key}/diagram | Get Decision Requirements Diagram by Key
[**getDecisionRequirementsDefinitionDiagramByKeyAndTenantId**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondiagrambykeyandtenantid) | **GET** /decision-requirements-definition/key/{key}/tenant-id/{tenant-id}/diagram | Get Decision Requirements Diagram by Key and Tenant ID
[**getDecisionRequirementsDefinitionDmnXmlById**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondmnxmlbyid) | **GET** /decision-requirements-definition/{id}/xml | Get DMN XML by ID
[**getDecisionRequirementsDefinitionDmnXmlByKey**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondmnxmlbykey) | **GET** /decision-requirements-definition/key/{key}/xml | Get DMN XML by Key
[**getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitiondmnxmlbykeyandtenantid) | **GET** /decision-requirements-definition/key/{key}/tenant-id/{tenant-id}/xml | Get DMN XML by Key and Tenant ID
[**getDecisionRequirementsDefinitions**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitions) | **GET** /decision-requirements-definition | Get Decision Requirements Definitions
[**getDecisionRequirementsDefinitionsCount**](DecisionRequirementsDefinitionApi.md#getdecisionrequirementsdefinitionscount) | **GET** /decision-requirements-definition/count | Get Decision Requirements Definition Count


# **getDecisionRequirementsDefinitionById**
> DecisionRequirementsDefinitionDto getDecisionRequirementsDefinitionById(id)

Get Decision Requirements Definition by ID

Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final id = id_example; // String | The id of the decision requirements definition to be retrieved.

try {
    final result = api_instance.getDecisionRequirementsDefinitionById(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision requirements definition to be retrieved. | 

### Return type

[**DecisionRequirementsDefinitionDto**](DecisionRequirementsDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionByKey**
> DecisionRequirementsDefinitionDto getDecisionRequirementsDefinitionByKey(key)

Get Decision Requirements Definition by Key

Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine.  Returns the latest version of the decision requirements definition  which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDecisionRequirementsDefinitionByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 

### Return type

[**DecisionRequirementsDefinitionDto**](DecisionRequirementsDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionByKeyAndTenantId**
> DecisionRequirementsDefinitionDto getDecisionRequirementsDefinitionByKeyAndTenantId(key, tenantId)

Get Decision Requirements Definition by Key and Tenant ID

Retrieves a decision requirements definition according to the `DecisionRequirementsDefinition` interface in the engine. Returns the latest version of the decision requirements definition  for a tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant to which the decision requirements definition belongs to.

try {
    final result = api_instance.getDecisionRequirementsDefinitionByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant to which the decision requirements definition belongs to. | 

### Return type

[**DecisionRequirementsDefinitionDto**](DecisionRequirementsDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDiagramById**
> MultipartFile getDecisionRequirementsDefinitionDiagramById(id)

Get Decision Requirements Diagram by ID

Retrieves the diagram of a decision requirements definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final id = id_example; // String | The id of the decision requirements definition.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDiagramById(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDiagramById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision requirements definition. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDiagramByKey**
> MultipartFile getDecisionRequirementsDefinitionDiagramByKey(key)

Get Decision Requirements Diagram by Key

Retrieves the diagram of a decision requirements definition. Returns the diagram for the latest version of the decision requirements  definition which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDiagramByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDiagramByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDiagramByKeyAndTenantId**
> MultipartFile getDecisionRequirementsDefinitionDiagramByKeyAndTenantId(key, tenantId)

Get Decision Requirements Diagram by Key and Tenant ID

Retrieves the diagram of a decision requirements definition. Returns the diagram of the latest version of the decision requirements  definition for a tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant to which the decision requirements definition belongs to.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDiagramByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDiagramByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant to which the decision requirements definition belongs to. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDmnXmlById**
> DecisionRequirementsDefinitionXmlDto getDecisionRequirementsDefinitionDmnXmlById(id)

Get DMN XML by ID

Retrieves the DMN XML of a decision requirements definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final id = id_example; // String | The id of the decision requirements definition.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDmnXmlById(id);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDmnXmlById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision requirements definition. | 

### Return type

[**DecisionRequirementsDefinitionXmlDto**](DecisionRequirementsDefinitionXmlDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDmnXmlByKey**
> DecisionRequirementsDefinitionXmlDto getDecisionRequirementsDefinitionDmnXmlByKey(key)

Get DMN XML by Key

Retrieves the DMN XML of a decision requirements definition. Returns the XML for the latest version of the decision requirements  definition which belongs to no tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDmnXmlByKey(key);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDmnXmlByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 

### Return type

[**DecisionRequirementsDefinitionXmlDto**](DecisionRequirementsDefinitionXmlDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId**
> DecisionRequirementsDefinitionXmlDto getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId(key, tenantId)

Get DMN XML by Key and Tenant ID

Retrieves the DMN XML of a decision requirements definition. Returns the XML of the latest version of the decision requirements  definition for a tenant.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final key = key_example; // String | The key of the decision requirements definition (the latest version thereof) to be retrieved.
final tenantId = tenantId_example; // String | The id of the tenant to which the decision requirements definition belongs to.

try {
    final result = api_instance.getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId(key, tenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionDmnXmlByKeyAndTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| The key of the decision requirements definition (the latest version thereof) to be retrieved. | 
 **tenantId** | **String**| The id of the tenant to which the decision requirements definition belongs to. | 

### Return type

[**DecisionRequirementsDefinitionXmlDto**](DecisionRequirementsDefinitionXmlDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitions**
> List<DecisionRequirementsDefinitionDto> getDecisionRequirementsDefinitions(decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn, name, nameLike, deploymentId, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, tenantIdIn, withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults)

Get Decision Requirements Definitions

Queries for decision requirements definitions that fulfill given parameters. Parameters may be the properties of decision requirements definitions, such as the name, key or version.  The size of the result set can be retrieved by using the [Get Decision Requirements Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by decision requirements definition id.
final decisionRequirementsDefinitionIdIn = decisionRequirementsDefinitionIdIn_example; // String | Filter by decision requirements definition ids.
final name = name_example; // String | Filter by decision requirements definition name.
final nameLike = nameLike_example; // String | Filter by decision requirements definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the id of the deployment a decision requirement definition belongs to.
final key = key_example; // String | Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
final keyLike = keyLike_example; // String | Filter by decision requirements definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by decision requirements definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by decision requirements definition categories that the parameter is a substring of.
final version = 56; // int | Filter by decision requirements definition version.
final latestVersion = true; // bool | Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the decision requirements definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those decision requirements definition resources that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeDecisionRequirementsDefinitionsWithoutTenantId = true; // bool | Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getDecisionRequirementsDefinitions(decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn, name, nameLike, deploymentId, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, tenantIdIn, withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionRequirementsDefinitionId** | **String**| Filter by decision requirements definition id. | [optional] 
 **decisionRequirementsDefinitionIdIn** | **String**| Filter by decision requirements definition ids. | [optional] 
 **name** | **String**| Filter by decision requirements definition name. | [optional] 
 **nameLike** | **String**| Filter by decision requirements definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the id of the deployment a decision requirement definition belongs to. | [optional] 
 **key** | **String**| Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match. | [optional] 
 **keyLike** | **String**| Filter by decision requirements definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by decision requirements definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by decision requirements definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by decision requirements definition version. | [optional] 
 **latestVersion** | **bool**| Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the decision requirements definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those decision requirements definition resources that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeDecisionRequirementsDefinitionsWithoutTenantId** | **bool**| Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<DecisionRequirementsDefinitionDto>**](DecisionRequirementsDefinitionDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDecisionRequirementsDefinitionsCount**
> CountResultDto getDecisionRequirementsDefinitionsCount(decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn, name, nameLike, deploymentId, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, tenantIdIn, withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId)

Get Decision Requirements Definition Count

Requests the number of decision requirements definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Decision Requirements Definitions](https://docs.camunda.org/manual/7.20/reference/rest/decision-requirements-definition/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DecisionRequirementsDefinitionApi();
final decisionRequirementsDefinitionId = decisionRequirementsDefinitionId_example; // String | Filter by decision requirements definition id.
final decisionRequirementsDefinitionIdIn = decisionRequirementsDefinitionIdIn_example; // String | Filter by decision requirements definition ids.
final name = name_example; // String | Filter by decision requirements definition name.
final nameLike = nameLike_example; // String | Filter by decision requirements definition names that the parameter is a substring of.
final deploymentId = deploymentId_example; // String | Filter by the id of the deployment a decision requirement definition belongs to.
final key = key_example; // String | Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match.
final keyLike = keyLike_example; // String | Filter by decision requirements definition keys that the parameter is a substring of.
final category = category_example; // String | Filter by decision requirements definition category. Exact match.
final categoryLike = categoryLike_example; // String | Filter by decision requirements definition categories that the parameter is a substring of.
final version = 56; // int | Filter by decision requirements definition version.
final latestVersion = true; // bool | Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
final resourceName = resourceName_example; // String | Filter by the name of the decision requirements definition resource. Exact match.
final resourceNameLike = resourceNameLike_example; // String | Filter by names of those decision requirements definition resources that the parameter is a substring of.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeDecisionRequirementsDefinitionsWithoutTenantId = true; // bool | Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.

try {
    final result = api_instance.getDecisionRequirementsDefinitionsCount(decisionRequirementsDefinitionId, decisionRequirementsDefinitionIdIn, name, nameLike, deploymentId, key, keyLike, category, categoryLike, version, latestVersion, resourceName, resourceNameLike, tenantIdIn, withoutTenantId, includeDecisionRequirementsDefinitionsWithoutTenantId);
    print(result);
} catch (e) {
    print('Exception when calling DecisionRequirementsDefinitionApi->getDecisionRequirementsDefinitionsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionRequirementsDefinitionId** | **String**| Filter by decision requirements definition id. | [optional] 
 **decisionRequirementsDefinitionIdIn** | **String**| Filter by decision requirements definition ids. | [optional] 
 **name** | **String**| Filter by decision requirements definition name. | [optional] 
 **nameLike** | **String**| Filter by decision requirements definition names that the parameter is a substring of. | [optional] 
 **deploymentId** | **String**| Filter by the id of the deployment a decision requirement definition belongs to. | [optional] 
 **key** | **String**| Filter by decision requirements definition key, i.e., the id in the DMN 1.3 XML. Exact match. | [optional] 
 **keyLike** | **String**| Filter by decision requirements definition keys that the parameter is a substring of. | [optional] 
 **category** | **String**| Filter by decision requirements definition category. Exact match. | [optional] 
 **categoryLike** | **String**| Filter by decision requirements definition categories that the parameter is a substring of. | [optional] 
 **version** | **int**| Filter by decision requirements definition version. | [optional] 
 **latestVersion** | **bool**| Only include those decision requirements definitions that are latest versions. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **resourceName** | **String**| Filter by the name of the decision requirements definition resource. Exact match. | [optional] 
 **resourceNameLike** | **String**| Filter by names of those decision requirements definition resources that the parameter is a substring of. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A decision requirements definition must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision requirements definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
 **includeDecisionRequirementsDefinitionsWithoutTenantId** | **bool**| Include decision requirements definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

