# openapi.model.CommentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**List<AtomLink>**](AtomLink.md) | The links associated to this resource, with `method`, `href` and `rel`. | [optional] [default to const []]
**id** | **String** | The id of the task comment. | [optional] 
**userId** | **String** | The id of the user who created the comment. | [optional] 
**taskId** | **String** | The id of the task to which the comment belongs. | [optional] 
**processInstanceId** | **String** | The id of the process instance the comment is related to. | [optional] 
**time** | [**DateTime**](DateTime.md) | The time when the comment was created. [Default format]($(docsUrl)/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**message** | **String** | The content of the comment. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the comment should be removed by the History Cleanup job. [Default format]($(docsUrl)/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing the task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


