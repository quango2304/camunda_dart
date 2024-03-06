# openapi.api.FilterApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFilter**](FilterApi.md#createfilter) | **POST** /filter/create | Create Filter
[**deleteFilter**](FilterApi.md#deletefilter) | **DELETE** /filter/{id} | Delete Filter
[**executeFilterCount**](FilterApi.md#executefiltercount) | **GET** /filter/{id}/count | Execute Filter Count
[**executeFilterList**](FilterApi.md#executefilterlist) | **GET** /filter/{id}/list | Execute Filter List
[**executeFilterSingleResult**](FilterApi.md#executefiltersingleresult) | **GET** /filter/{id}/singleResult | Execute Filter Single Result
[**filterResourceOptions**](FilterApi.md#filterresourceoptions) | **OPTIONS** /filter | Filter Resource Options
[**filterResourceOptionsSingle**](FilterApi.md#filterresourceoptionssingle) | **OPTIONS** /filter/{id} | Filter Resource Options
[**getFilterCount**](FilterApi.md#getfiltercount) | **GET** /filter/count | Get Filter Count
[**getFilterList**](FilterApi.md#getfilterlist) | **GET** /filter | Get Filters
[**getSingleFilter**](FilterApi.md#getsinglefilter) | **GET** /filter/{id} | Get Single Filter
[**postExecuteFilterCount**](FilterApi.md#postexecutefiltercount) | **POST** /filter/{id}/count | Execute Filter Count (POST)
[**postExecuteFilterList**](FilterApi.md#postexecutefilterlist) | **POST** /filter/{id}/list | Execute Filter List (POST)
[**postExecuteFilterSingleResult**](FilterApi.md#postexecutefiltersingleresult) | **POST** /filter/{id}/singleResult | Execute Filter Single Result (POST)
[**updateFilter**](FilterApi.md#updatefilter) | **PUT** /filter/{id} | Update Filter


# **createFilter**
> FilterDto createFilter(createFilterDto)

Create Filter

Creates a new filter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final createFilterDto = CreateFilterDto(); // CreateFilterDto | 

try {
    final result = api_instance.createFilter(createFilterDto);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->createFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFilterDto** | [**CreateFilterDto**](CreateFilterDto.md)|  | [optional] 

### Return type

[**FilterDto**](FilterDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFilter**
> deleteFilter(id)

Delete Filter

Deletes a filter by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to be deleted.

try {
    api_instance.deleteFilter(id);
} catch (e) {
    print('Exception when calling FilterApi->deleteFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to be deleted. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeFilterCount**
> CountResultDto executeFilterCount(id)

Execute Filter Count

Executes the saved query of the filter by id and returns the count.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.

try {
    final result = api_instance.executeFilterCount(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->executeFilterCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeFilterList**
> List<Object> executeFilterList(id, firstResult, maxResults)

Execute Filter List

Executes the saved query of the filter by id and returns the result list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.executeFilterList(id, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->executeFilterList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<Object>**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeFilterSingleResult**
> Object executeFilterSingleResult(id)

Execute Filter Single Result

Executes the saved query of the filter by id and returns the single result.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.

try {
    final result = api_instance.executeFilterSingleResult(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->executeFilterSingleResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterResourceOptions**
> ResourceOptionsDto filterResourceOptions()

Filter Resource Options

The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();

try {
    final result = api_instance.filterResourceOptions();
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filterResourceOptions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filterResourceOptionsSingle**
> ResourceOptionsDto filterResourceOptionsSingle(id)

Filter Resource Options

The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to be checked.

try {
    final result = api_instance.filterResourceOptionsSingle(id);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->filterResourceOptionsSingle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to be checked. | 

### Return type

[**ResourceOptionsDto**](ResourceOptionsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilterCount**
> CountResultDto getFilterCount(filterId, resourceType, name, nameLike, owner)

Get Filter Count

Retrieves the number of filters that fulfill a provided query. Corresponds to the size of the result set when using the  [Get Filters](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final filterId = filterId_example; // String | Filter by the id of the filter.
final resourceType = resourceType_example; // String | Filter by the resource type of the filter, e.g., `Task`.
final name = name_example; // String | Filter by the name of the filter.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final owner = owner_example; // String | Filter by the user id of the owner of the filter.

try {
    final result = api_instance.getFilterCount(filterId, resourceType, name, nameLike, owner);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->getFilterCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterId** | **String**| Filter by the id of the filter. | [optional] 
 **resourceType** | **String**| Filter by the resource type of the filter, e.g., `Task`. | [optional] 
 **name** | **String**| Filter by the name of the filter. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **owner** | **String**| Filter by the user id of the owner of the filter. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFilterList**
> List<FilterDto> getFilterList(filterId, resourceType, name, nameLike, owner, itemCount, sortBy, sortOrder, firstResult, maxResults)

Get Filters

Queries for a list of filters using a list of parameters. The size of the result set can be retrieved by using the [Get Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final filterId = filterId_example; // String | Filter by the id of the filter.
final resourceType = resourceType_example; // String | Filter by the resource type of the filter, e.g., `Task`.
final name = name_example; // String | Filter by the name of the filter.
final nameLike = nameLike_example; // String | Filter by the name that the parameter is a substring of.
final owner = owner_example; // String | Filter by the user id of the owner of the filter.
final itemCount = true; // bool | If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getFilterList(filterId, resourceType, name, nameLike, owner, itemCount, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->getFilterList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterId** | **String**| Filter by the id of the filter. | [optional] 
 **resourceType** | **String**| Filter by the resource type of the filter, e.g., `Task`. | [optional] 
 **name** | **String**| Filter by the name of the filter. | [optional] 
 **nameLike** | **String**| Filter by the name that the parameter is a substring of. | [optional] 
 **owner** | **String**| Filter by the user id of the owner of the filter. | [optional] 
 **itemCount** | **bool**| If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<FilterDto>**](FilterDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSingleFilter**
> FilterDto getSingleFilter(id, itemCount)

Get Single Filter

Retrieves a single filter by id, according to the `Filter` interface in the engine.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to be retrieved.
final itemCount = true; // bool | If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself.

try {
    final result = api_instance.getSingleFilter(id, itemCount);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->getSingleFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to be retrieved. | 
 **itemCount** | **bool**| If set to `true`, each filter result will contain an `itemCount` property with the number of items matched by the filter itself. | [optional] 

### Return type

[**FilterDto**](FilterDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postExecuteFilterCount**
> CountResultDto postExecuteFilterCount(id, body)

Execute Filter Count (POST)

Executes the saved query of the filter by id and returns the count. This method is slightly more powerful then the [Get Execute Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-count/)  method because it allows to extend the saved query of the filter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.
final body = Object(); // Object | A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.

try {
    final result = api_instance.postExecuteFilterCount(id, body);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->postExecuteFilterCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 
 **body** | **Object**| A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postExecuteFilterList**
> List<Object> postExecuteFilterList(id, firstResult, maxResults, body)

Execute Filter List (POST)

Executes the saved query of the filter by id and returns the result list. This method is slightly more powerful then the  [Get Execute FilterList](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-list/) method because it allows to extend the saved query of the filter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
final body = Object(); // Object | A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.

try {
    final result = api_instance.postExecuteFilterList(id, firstResult, maxResults, body);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->postExecuteFilterList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 
 **body** | **Object**| A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource. | [optional] 

### Return type

[**List<Object>**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postExecuteFilterSingleResult**
> Object postExecuteFilterSingleResult(id, body)

Execute Filter Single Result (POST)

Executes the saved query of the filter by id and returns the single result. This method is slightly more powerful then the [Get Execute Filter Single Result](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-single-result/) method because it allows to extend the saved query of the filter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to execute.
final body = Object(); // Object | A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource.

try {
    final result = api_instance.postExecuteFilterSingleResult(id, body);
    print(result);
} catch (e) {
    print('Exception when calling FilterApi->postExecuteFilterSingleResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to execute. | 
 **body** | **Object**| A JSON object which corresponds to the type of the saved query of the filter, i.e., if the resource type of the filter is Task the body should form a valid task query corresponding to the Task resource. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFilter**
> updateFilter(id, createFilterDto)

Update Filter

Updates an existing filter.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = FilterApi();
final id = id_example; // String | The id of the filter to be updated.
final createFilterDto = CreateFilterDto(); // CreateFilterDto | 

try {
    api_instance.updateFilter(id, createFilterDto);
} catch (e) {
    print('Exception when calling FilterApi->updateFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the filter to be updated. | 
 **createFilterDto** | [**CreateFilterDto**](CreateFilterDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

