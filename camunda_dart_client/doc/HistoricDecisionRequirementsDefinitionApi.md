# openapi.api.HistoricDecisionRequirementsDefinitionApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDecisionStatistics**](HistoricDecisionRequirementsDefinitionApi.md#getdecisionstatistics) | **GET** /history/decision-requirements-definition/{id}/statistics | Get DRD Statistics


# **getDecisionStatistics**
> List<HistoricDecisionInstanceStatisticsDto> getDecisionStatistics(id, decisionInstanceId)

Get DRD Statistics

Retrieves evaluation statistics of a given decision requirements definition.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = HistoricDecisionRequirementsDefinitionApi();
final id = id_example; // String | The id of the decision requirements definition.
final decisionInstanceId = decisionInstanceId_example; // String | Restrict query results to be based only on specific evaluation instance of a given decision requirements definition.

try {
    final result = api_instance.getDecisionStatistics(id, decisionInstanceId);
    print(result);
} catch (e) {
    print('Exception when calling HistoricDecisionRequirementsDefinitionApi->getDecisionStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the decision requirements definition. | 
 **decisionInstanceId** | **String**| Restrict query results to be based only on specific evaluation instance of a given decision requirements definition. | [optional] 

### Return type

[**List<HistoricDecisionInstanceStatisticsDto>**](HistoricDecisionInstanceStatisticsDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

