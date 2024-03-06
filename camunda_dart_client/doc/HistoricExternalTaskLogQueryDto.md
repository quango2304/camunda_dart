# openapi.model.HistoricExternalTaskLogQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logId** | **String** | Filter by historic external task log id. | [optional] 
**externalTaskId** | **String** | Filter by external task id. | [optional] 
**topicName** | **String** | Filter by an external task topic. | [optional] 
**workerId** | **String** | Filter by the id of the worker that the task was most recently locked by. | [optional] 
**errorMessage** | **String** | Filter by external task exception message. | [optional] 
**activityIdIn** | **List<String>** | Only include historic external task logs which belong to one of the passed activity ids. | [optional] [default to const []]
**activityInstanceIdIn** | **List<String>** | Only include historic external task logs which belong to one of the passed activity instance ids. | [optional] [default to const []]
**executionIdIn** | **List<String>** | Only include historic external task logs which belong to one of the passed execution ids. | [optional] [default to const []]
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processDefinitionId** | **String** | Filter by process definition id. | [optional] 
**processDefinitionKey** | **String** | Filter by process definition key. | [optional] 
**tenantIdIn** | **List<String>** | Only include historic external task log entries which belong to one of the passed and comma-separated tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic external task log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**priorityLowerThanOrEquals** | **int** | Only include logs for which the associated external task had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
**priorityHigherThanOrEquals** | **int** | Only include logs for which the associated external task had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
**creationLog** | **bool** | Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**failureLog** | **bool** | Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**successLog** | **bool** | Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**deletionLog** | **bool** | Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<HistoricExternalTaskLogQueryDtoSortingInner>**](HistoricExternalTaskLogQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


