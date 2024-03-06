# openapi.api.HistoricDecisionDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCleanableHistoricDecisionInstanceReport**](HistoricDecisionDefinitionApi.md#getcleanablehistoricdecisioninstancereport) | **GET** /history/decision-definition/cleanable-decision-instance-report | Get Cleanable Decision Instance Report
[**getCleanableHistoricDecisionInstanceReportCount**](HistoricDecisionDefinitionApi.md#getcleanablehistoricdecisioninstancereportcount) | **GET** /history/decision-definition/cleanable-decision-instance-report/count | Get Cleanable Decision Instance Report Count


# **getCleanableHistoricDecisionInstanceReport**
> List<CleanableHistoricDecisionInstanceReportResultDto> getCleanableHistoricDecisionInstanceReport(decisionDefinitionIdIn, decisionDefinitionKeyIn, tenantIdIn, withoutTenantId, compact, sortBy, sortOrder, firstResult, maxResults)

Get Cleanable Decision Instance Report

Retrieves a report about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)),  so that you can tune the history time to live. These reports include the count of the finished historic decision instances, cleanable decision instances and basic decision definition data - id, key, name and version. The size of the result set can be retrieved by using the  [Get Cleanable Decision Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionDefinitionApi();
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
final decisionDefinitionKeyIn = decisionDefinitionKeyIn_example; // String | Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
final withoutTenantId = true; // bool | Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
final compact = true; // bool | Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getCleanableHistoricDecisionInstanceReport(decisionDefinitionIdIn, decisionDefinitionKeyIn, tenantIdIn, withoutTenantId, compact, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionDefinitionApi->getCleanableHistoricDecisionInstanceReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionDefinitionIdIn** | **String**| Filter by decision definition ids. Must be a comma-separated list of decision definition ids. | [optional] 
 **decisionDefinitionKeyIn** | **String**| Filter by decision definition keys. Must be a comma-separated list of decision definition keys. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior. | [optional] 
 **compact** | **bool**| Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<CleanableHistoricDecisionInstanceReportResultDto>**](CleanableHistoricDecisionInstanceReportResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCleanableHistoricDecisionInstanceReportCount**
> CountResultDto getCleanableHistoricDecisionInstanceReportCount(decisionDefinitionIdIn, decisionDefinitionKeyIn, tenantIdIn, withoutTenantId, compact)

Get Cleanable Decision Instance Report Count

Queries for the number of report results about a decision definition and finished decision instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Decision Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/decision-definition/get-cleanable-decision-instance-report/)  method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionDefinitionApi();
final decisionDefinitionIdIn = decisionDefinitionIdIn_example; // String | Filter by decision definition ids. Must be a comma-separated list of decision definition ids.
final decisionDefinitionKeyIn = decisionDefinitionKeyIn_example; // String | Filter by decision definition keys. Must be a comma-separated list of decision definition keys.
final tenantIdIn = tenantIdIn_example; // String | Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids.
final withoutTenantId = true; // bool | Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior.
final compact = true; // bool | Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior.

try {
    final result = api_instance.getCleanableHistoricDecisionInstanceReportCount(decisionDefinitionIdIn, decisionDefinitionKeyIn, tenantIdIn, withoutTenantId, compact);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionDefinitionApi->getCleanableHistoricDecisionInstanceReportCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decisionDefinitionIdIn** | **String**| Filter by decision definition ids. Must be a comma-separated list of decision definition ids. | [optional] 
 **decisionDefinitionKeyIn** | **String**| Filter by decision definition keys. Must be a comma-separated list of decision definition keys. | [optional] 
 **tenantIdIn** | **String**| Filter by a comma-separated list of tenant ids. A decision definition must have one of the given tenant  ids. | [optional] 
 **withoutTenantId** | **bool**| Only include decision definitions which belong to no tenant. Value may only be `true`, as `false`  is the default behavior. | [optional] 
 **compact** | **bool**| Only include decision instances which have more than zero finished instances. Value may only be `true`,  as `false` is the default behavior. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

