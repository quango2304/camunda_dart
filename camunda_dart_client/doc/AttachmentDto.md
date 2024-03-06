# openapi.model.AttachmentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**List<AtomLink>**](AtomLink.md) | The links associated to this resource, with `method`, `href` and `rel`. | [optional] [default to const []]
**id** | **String** | The id of the task attachment. | [optional] 
**name** | **String** | The name of the task attachment. | [optional] 
**description** | **String** | The description of the task attachment. | [optional] 
**taskId** | **String** | The id of the task to which the attachment belongs. | [optional] 
**type** | **String** | Indication of the type of content that this attachment refers to. Can be MIME type or any other indication. | [optional] 
**url** | **String** | The url to the remote content of the task attachment. | [optional] 
**createTime** | [**DateTime**](DateTime.md) | The time the variable was inserted. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the attachment should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing the task. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


