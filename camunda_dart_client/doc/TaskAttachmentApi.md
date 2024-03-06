# openapi.api.TaskAttachmentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAttachment**](TaskAttachmentApi.md#addattachment) | **POST** /task/{id}/attachment/create | Create
[**deleteAttachment**](TaskAttachmentApi.md#deleteattachment) | **DELETE** /task/{id}/attachment/{attachmentId} | Delete
[**getAttachment**](TaskAttachmentApi.md#getattachment) | **GET** /task/{id}/attachment/{attachmentId} | Get
[**getAttachmentData**](TaskAttachmentApi.md#getattachmentdata) | **GET** /task/{id}/attachment/{attachmentId}/data | Get (Binary)
[**getAttachments**](TaskAttachmentApi.md#getattachments) | **GET** /task/{id}/attachment | Get List


# **addAttachment**
> AttachmentDto addAttachment(id, attachmentName, attachmentDescription, attachmentType, url, content)

Create

Creates an attachment for a task.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskAttachmentApi();
final id = id_example; // String | The id of the task to add the attachment to.
final attachmentName = attachmentName_example; // String | The name of the attachment.
final attachmentDescription = attachmentDescription_example; // String | The description of the attachment.
final attachmentType = attachmentType_example; // String | The type of the attachment.
final url = url_example; // String | The url to the remote content of the attachment.
final content = BINARY_DATA_HERE; // MultipartFile | The content of the attachment.

try {
    final result = api_instance.addAttachment(id, attachmentName, attachmentDescription, attachmentType, url, content);
    print(result);
} catch (e) {
    print('Exception when calling TaskAttachmentApi->addAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to add the attachment to. | 
 **attachmentName** | **String**| The name of the attachment. | [optional] 
 **attachmentDescription** | **String**| The description of the attachment. | [optional] 
 **attachmentType** | **String**| The type of the attachment. | [optional] 
 **url** | **String**| The url to the remote content of the attachment. | [optional] 
 **content** | **MultipartFile**| The content of the attachment. | [optional] 

### Return type

[**AttachmentDto**](AttachmentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachment**
> deleteAttachment(id, attachmentId)

Delete

Removes an attachment from a task by id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskAttachmentApi();
final id = id_example; // String | The id of the task.
final attachmentId = attachmentId_example; // String | The id of the attachment to be removed.

try {
    api_instance.deleteAttachment(id, attachmentId);
} catch (e) {
    print('Exception when calling TaskAttachmentApi->deleteAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task. | 
 **attachmentId** | **String**| The id of the attachment to be removed. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachment**
> AttachmentDto getAttachment(id, attachmentId)

Get

Retrieves a task attachment by task id and attachment id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskAttachmentApi();
final id = id_example; // String | The id of the task.
final attachmentId = attachmentId_example; // String | The id of the attachment to be retrieved.

try {
    final result = api_instance.getAttachment(id, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling TaskAttachmentApi->getAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task. | 
 **attachmentId** | **String**| The id of the attachment to be retrieved. | 

### Return type

[**AttachmentDto**](AttachmentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachmentData**
> MultipartFile getAttachmentData(id, attachmentId)

Get (Binary)

Retrieves the binary content of a task attachment by task id and attachment id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskAttachmentApi();
final id = id_example; // String | The id of the task.
final attachmentId = attachmentId_example; // String | The id of the attachment to be retrieved.

try {
    final result = api_instance.getAttachmentData(id, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling TaskAttachmentApi->getAttachmentData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task. | 
 **attachmentId** | **String**| The id of the attachment to be retrieved. | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttachments**
> List<AttachmentDto> getAttachments(id)

Get List

Gets the attachments for a task.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = TaskAttachmentApi();
final id = id_example; // String | The id of the task to retrieve the attachments for.

try {
    final result = api_instance.getAttachments(id);
    print(result);
} catch (e) {
    print('Exception when calling TaskAttachmentApi->getAttachments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the task to retrieve the attachments for. | 

### Return type

[**List<AttachmentDto>**](AttachmentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

