# openapi.model.HistoricIdentityLinkLogDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Id of the Historic identity link entry. | [optional] 
**time** | [**DateTime**](DateTime.md) | The time when the identity link is logged.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**type** | **String** | The type of identity link (candidate/assignee/owner). | [optional] 
**userId** | **String** | The id of the user/assignee. | [optional] 
**groupId** | **String** | The id of the group. | [optional] 
**taskId** | **String** | The id of the task. | [optional] 
**processDefinitionId** | **String** | The id of the process definition. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition. | [optional] 
**operationType** | **String** | Type of operation (add/delete). | [optional] 
**assignerId** | **String** | The id of the assigner. | [optional] 
**tenantId** | **String** | The id of the tenant. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the identity link should be removed by the History Cleanup job.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this identity link. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


