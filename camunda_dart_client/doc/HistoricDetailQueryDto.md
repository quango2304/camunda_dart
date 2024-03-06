# openapi.model.HistoricDetailQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processInstanceIdIn** | **List<String>** | Only include historic details which belong to one of the passed  process instance ids. | [optional] [default to const []]
**executionId** | **String** | Filter by execution id. | [optional] 
**taskId** | **String** | Filter by task id. | [optional] 
**activityInstanceId** | **String** | Filter by activity instance id. | [optional] 
**caseInstanceId** | **String** | Filter by case instance id. | [optional] 
**caseExecutionId** | **String** | Filter by case execution id. | [optional] 
**variableInstanceId** | **String** | Filter by variable instance id. | [optional] 
**variableTypeIn** | **List<String>** | Only include historic details where the variable updates belong to one of the passed  list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`. | [optional] [default to const []]
**tenantIdIn** | **List<String>** | Filter by a  list of tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**userOperationId** | **String** | Filter by a user operation id. | [optional] 
**formFields** | **bool** | Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**variableUpdates** | **bool** | Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**excludeTaskDetails** | **bool** | Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior. | [optional] 
**initial** | **bool** | Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior. | [optional] 
**occurredBefore** | [**DateTime**](DateTime.md) | Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
**occurredAfter** | [**DateTime**](DateTime.md) | Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200. | [optional] 
**sorting** | [**List<HistoricDetailQueryDtoSortingInner>**](HistoricDetailQueryDtoSortingInner.md) | A JSON array of criteria to sort the result by. Each element of the array is                     a JSON object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Does not have an effect for the `count` endpoint. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


