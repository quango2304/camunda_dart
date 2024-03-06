# openapi.model.HistoricActivityInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**activityInstanceId** | **String** | Filter by activity instance id. | [optional] 
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processDefinitionId** | **String** | Filter by process definition id. | [optional] 
**executionId** | **String** | Filter by the id of the execution that executed the activity instance. | [optional] 
**activityId** | **String** | Filter by the activity id (according to BPMN 2.0 XML). | [optional] 
**activityName** | **String** | Filter by the activity name (according to BPMN 2.0 XML). | [optional] 
**activityType** | **String** | Filter by activity type. | [optional] 
**taskAssignee** | **String** | Only include activity instances that are user tasks and assigned to a given user. | [optional] 
**finished** | **bool** | Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
**unfinished** | **bool** | Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
**canceled** | **bool** | Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
**completeScope** | **bool** | Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set. | [optional] 
**startedBefore** | [**DateTime**](DateTime.md) | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**startedAfter** | [**DateTime**](DateTime.md) | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedBefore** | [**DateTime**](DateTime.md) | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedAfter** | [**DateTime**](DateTime.md) | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**tenantIdIn** | **List<String>** | Must be a JSON array of Strings. An activity instance must have one of the given tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<HistoricActivityInstanceQueryDtoSortingInner>**](HistoricActivityInstanceQueryDtoSortingInner.md) | Apply sorting of the result | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


