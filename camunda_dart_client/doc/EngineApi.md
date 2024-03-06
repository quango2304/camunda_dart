# openapi.api.EngineApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProcessEngineNames**](EngineApi.md#getprocessenginenames) | **GET** /engine | Get List


# **getProcessEngineNames**
> List<ProcessEngineDto> getProcessEngineNames()

Get List

Retrieves the names of all process engines available on your platform. **Note**: You cannot prepend `/engine/{name}` to this method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = EngineApi();

try {
    final result = api_instance.getProcessEngineNames();
    print(result);
} catch (e) {
    print('Exception when calling EngineApi->getProcessEngineNames: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ProcessEngineDto>**](ProcessEngineDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

