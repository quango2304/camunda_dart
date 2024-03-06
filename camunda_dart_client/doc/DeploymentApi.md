# openapi.api.DeploymentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDeployment**](DeploymentApi.md#createdeployment) | **POST** /deployment/create | Create
[**deleteDeployment**](DeploymentApi.md#deletedeployment) | **DELETE** /deployment/{id} | Delete
[**getDeployment**](DeploymentApi.md#getdeployment) | **GET** /deployment/{id} | Get
[**getDeploymentResource**](DeploymentApi.md#getdeploymentresource) | **GET** /deployment/{id}/resources/{resourceId} | Get Resource
[**getDeploymentResourceData**](DeploymentApi.md#getdeploymentresourcedata) | **GET** /deployment/{id}/resources/{resourceId}/data | Get Resource (Binary)
[**getDeploymentResources**](DeploymentApi.md#getdeploymentresources) | **GET** /deployment/{id}/resources | Get Resources
[**getDeployments**](DeploymentApi.md#getdeployments) | **GET** /deployment | Get List
[**getDeploymentsCount**](DeploymentApi.md#getdeploymentscount) | **GET** /deployment/count | Get List Count
[**getRegisteredDeployments**](DeploymentApi.md#getregistereddeployments) | **GET** /deployment/registered | Get Registered Deployments
[**redeploy**](DeploymentApi.md#redeploy) | **POST** /deployment/{id}/redeploy | Redeploy


# **createDeployment**
> DeploymentWithDefinitionsDto createDeployment(tenantId, deploymentSource, deployChangedOnly, enableDuplicateFiltering, deploymentName, deploymentActivationTime, data)

Create

Creates a deployment.  **Security Consideration**  Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final tenantId = tenantId_example; // String | The tenant id for the deployment to be created.
final deploymentSource = deploymentSource_example; // String | The source for the deployment to be created.
final deployChangedOnly = true; // bool | A flag indicating whether the process engine should perform duplicate checking on a per-resource basis. If set to true, only those resources that have actually changed are deployed. Checks are made against resources included previous deployments of the same name and only against the latest versions of those resources. If set to true, the option enable-duplicate-filtering is overridden and set to true.
final enableDuplicateFiltering = true; // bool | A flag indicating whether the process engine should perform duplicate checking for the deployment or not. This allows you to check if a deployment with the same name and the same resouces already exists and if true, not create a new deployment but instead return the existing deployment. The default value is false.
final deploymentName = deploymentName_example; // String | The name for the deployment to be created.
final deploymentActivationTime = 2013-10-20T19:20:30+01:00; // DateTime | Sets the date on which the process definitions contained in this deployment will be activated. This means that all process definitions will be deployed as usual, but they will be suspended from the start until the given activation date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final data = BINARY_DATA_HERE; // MultipartFile | The binary data to create the deployment resource. It is possible to have more than one form part with different form part names for the binary data to create a deployment.

try {
    final result = api_instance.createDeployment(tenantId, deploymentSource, deployChangedOnly, enableDuplicateFiltering, deploymentName, deploymentActivationTime, data);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->createDeployment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| The tenant id for the deployment to be created. | [optional] 
 **deploymentSource** | **String**| The source for the deployment to be created. | [optional] 
 **deployChangedOnly** | **bool**| A flag indicating whether the process engine should perform duplicate checking on a per-resource basis. If set to true, only those resources that have actually changed are deployed. Checks are made against resources included previous deployments of the same name and only against the latest versions of those resources. If set to true, the option enable-duplicate-filtering is overridden and set to true. | [optional] [default to false]
 **enableDuplicateFiltering** | **bool**| A flag indicating whether the process engine should perform duplicate checking for the deployment or not. This allows you to check if a deployment with the same name and the same resouces already exists and if true, not create a new deployment but instead return the existing deployment. The default value is false. | [optional] [default to false]
 **deploymentName** | **String**| The name for the deployment to be created. | [optional] 
 **deploymentActivationTime** | **DateTime**| Sets the date on which the process definitions contained in this deployment will be activated. This means that all process definitions will be deployed as usual, but they will be suspended from the start until the given activation date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **data** | **MultipartFile**| The binary data to create the deployment resource. It is possible to have more than one form part with different form part names for the binary data to create a deployment. | [optional] 

### Return type

[**DeploymentWithDefinitionsDto**](DeploymentWithDefinitionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDeployment**
> deleteDeployment(id, cascade, skipCustomListeners, skipIoMappings)

Delete

Deletes a deployment by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment to be deleted.
final cascade = true; // bool | `true`, if all process instances, historic process instances and jobs for this deployment should be deleted.
final skipCustomListeners = true; // bool | `true`, if only the built-in ExecutionListeners should be notified with the end event.
final skipIoMappings = true; // bool | `true`, if all input/output mappings should not be invoked.

try {
    api_instance.deleteDeployment(id, cascade, skipCustomListeners, skipIoMappings);
} catch (e) {
    print('Exception when calling DeploymentApi->deleteDeployment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment to be deleted. | 
 **cascade** | **bool**| `true`, if all process instances, historic process instances and jobs for this deployment should be deleted. | [optional] [default to false]
 **skipCustomListeners** | **bool**| `true`, if only the built-in ExecutionListeners should be notified with the end event. | [optional] [default to false]
 **skipIoMappings** | **bool**| `true`, if all input/output mappings should not be invoked. | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployment**
> DeploymentDto getDeployment(id)

Get

Retrieves a deployment by id, according to the `Deployment` interface of the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment.

try {
    final result = api_instance.getDeployment(id);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeployment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment. | 

### Return type

[**DeploymentDto**](DeploymentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeploymentResource**
> DeploymentResourceDto getDeploymentResource(id, resourceId)

Get Resource

Retrieves a deployment resource by resource id for the given deployment.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment
final resourceId = resourceId_example; // String | The id of the deployment resource

try {
    final result = api_instance.getDeploymentResource(id, resourceId);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeploymentResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment | 
 **resourceId** | **String**| The id of the deployment resource | 

### Return type

[**DeploymentResourceDto**](DeploymentResourceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeploymentResourceData**
> MultipartFile getDeploymentResourceData(id, resourceId)

Get Resource (Binary)

Retrieves the binary content of a deployment resource for the given deployment by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment.
final resourceId = resourceId_example; // String | The id of the deployment resource.

try {
    final result = api_instance.getDeploymentResourceData(id, resourceId);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeploymentResourceData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment. | 
 **resourceId** | **String**| The id of the deployment resource. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, */*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeploymentResources**
> List<DeploymentResourceDto> getDeploymentResources(id)

Get Resources

Retrieves all deployment resources of a given deployment.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment to retrieve the deployment resources for.

try {
    final result = api_instance.getDeploymentResources(id);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeploymentResources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment to retrieve the deployment resources for. | 

### Return type

[**List<DeploymentResourceDto>**](DeploymentResourceDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeployments**
> List<DeploymentDto> getDeployments(id, name, nameLike, source_, withoutSource, tenantIdIn, withoutTenantId, includeDeploymentsWithoutTenantId, after, before, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for deployments that fulfill given parameters. Parameters may be the properties of deployments, such as the id or name or a range of the deployment time. The size of the result set can be retrieved by using the [Get Deployment count](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | Filter by deployment id
final name = name_example; // String | Filter by the deployment name. Exact match.
final nameLike = nameLike_example; // String | Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
final source_ = source__example; // String | Filter by the deployment source.
final withoutSource = true; // bool | Filter by the deployment source whereby source is equal to `null`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeDeploymentsWithoutTenantId = true; // bool | Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final after = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getDeployments(id, name, nameLike, source_, withoutSource, tenantIdIn, withoutTenantId, includeDeploymentsWithoutTenantId, after, before, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeployments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by deployment id | [optional] 
 **name** | **String**| Filter by the deployment name. Exact match. | [optional] 
 **nameLike** | **String**| Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`). | [optional] 
 **source_** | **String**| Filter by the deployment source. | [optional] 
 **withoutSource** | **bool**| Filter by the deployment source whereby source is equal to `null`. | [optional] [default to false]
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **includeDeploymentsWithoutTenantId** | **bool**| Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **after** | **DateTime**| Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **before** | **DateTime**| Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<DeploymentDto>**](DeploymentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeploymentsCount**
> CountResultDto getDeploymentsCount(id, name, nameLike, source_, withoutSource, tenantIdIn, withoutTenantId, includeDeploymentsWithoutTenantId, after, before)

Get List Count

Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Deployments](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | Filter by deployment id
final name = name_example; // String | Filter by the deployment name. Exact match.
final nameLike = nameLike_example; // String | Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
final source_ = source__example; // String | Filter by the deployment source.
final withoutSource = true; // bool | Filter by the deployment source whereby source is equal to `null`.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
final withoutTenantId = true; // bool | Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
final includeDeploymentsWithoutTenantId = true; // bool | Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
final after = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.

try {
    final result = api_instance.getDeploymentsCount(id, name, nameLike, source_, withoutSource, tenantIdIn, withoutTenantId, includeDeploymentsWithoutTenantId, after, before);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getDeploymentsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Filter by deployment id | [optional] 
 **name** | **String**| Filter by the deployment name. Exact match. | [optional] 
 **nameLike** | **String**| Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`). | [optional] 
 **source_** | **String**| Filter by the deployment source. | [optional] 
 **withoutSource** | **bool**| Filter by the deployment source whereby source is equal to `null`. | [optional] [default to false]
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids. | [optional] 
 **withoutTenantId** | **bool**| Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **includeDeploymentsWithoutTenantId** | **bool**| Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] [default to false]
 **after** | **DateTime**| Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **before** | **DateTime**| Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRegisteredDeployments**
> List<String> getRegisteredDeployments()

Get Registered Deployments

Queries the registered deployment IDs for the current application.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();

try {
    final result = api_instance.getRegisteredDeployments();
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->getRegisteredDeployments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **redeploy**
> DeploymentWithDefinitionsDto redeploy(id, redeploymentDto)

Redeploy

Re-deploys an existing deployment.  The deployment resources to re-deploy can be restricted by using the properties `resourceIds` or `resourceNames`. If no deployment resources to re-deploy are passed then all existing resources of the given deployment are re-deployed.  **Warning**: Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = DeploymentApi();
final id = id_example; // String | The id of the deployment to re-deploy.
final redeploymentDto = RedeploymentDto(); // RedeploymentDto | 

try {
    final result = api_instance.redeploy(id, redeploymentDto);
    print(result);
} catch (e) {
    print('Exception when calling DeploymentApi->redeploy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the deployment to re-deploy. | 
 **redeploymentDto** | [**RedeploymentDto**](RedeploymentDto.md)|  | [optional] 

### Return type

[**DeploymentWithDefinitionsDto**](DeploymentWithDefinitionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

