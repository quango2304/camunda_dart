# openapi.model.ExternalTaskQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**externalTaskId** | **String** | Filter by an external task's id. | [optional] 
**externalTaskIdIn** | **List<String>** | Filter by the comma-separated list of external task ids. | [optional] [default to const []]
**topicName** | **String** | Filter by an external task topic. | [optional] 
**workerId** | **String** | Filter by the id of the worker that the task was most recently locked by. | [optional] 
**locked** | **bool** | Only include external tasks that are currently locked (i.e., they have a lock time and it has not expired). Value may only be `true`, as `false` matches any external task. | [optional] 
**notLocked** | **bool** | Only include external tasks that are currently not locked (i.e., they have no lock or it has expired). Value may only be `true`, as `false` matches any external task. | [optional] 
**withRetriesLeft** | **bool** | Only include external tasks that have a positive (&gt; 0) number of retries (or `null`). Value may only be `true`, as `false` matches any external task. | [optional] 
**noRetriesLeft** | **bool** | Only include external tasks that have 0 retries. Value may only be `true`, as `false` matches any external task. | [optional] 
**lockExpirationAfter** | [**DateTime**](DateTime.md) | Restrict to external tasks that have a lock that expires after a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**lockExpirationBefore** | [**DateTime**](DateTime.md) | Restrict to external tasks that have a lock that expires before a given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**activityId** | **String** | Filter by the id of the activity that an external task is created for. | [optional] 
**activityIdIn** | **List<String>** | Filter by the comma-separated list of ids of the activities that an external task is created for. | [optional] [default to const []]
**executionId** | **String** | Filter by the id of the execution that an external task belongs to. | [optional] 
**processInstanceId** | **String** | Filter by the id of the process instance that an external task belongs to. | [optional] 
**processInstanceIdIn** | **List<String>** | Filter by a comma-separated list of process instance ids that an external task may belong to. | [optional] [default to const []]
**processDefinitionId** | **String** | Filter by the id of the process definition that an external task belongs to. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a comma-separated list of tenant ids. An external task must have one of the given tenant ids. | [optional] [default to const []]
**active** | **bool** | Only include active tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
**suspended** | **bool** | Only include suspended tasks. Value may only be `true`, as `false` matches any external task. | [optional] 
**priorityHigherThanOrEquals** | **int** | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
**priorityLowerThanOrEquals** | **int** | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
**sorting** | [**List<ExternalTaskQueryDtoSortingInner>**](ExternalTaskQueryDtoSortingInner.md) | A JSON array of criteria to sort the result by. Each element of the array is a JSON object that                     specifies one ordering. The position in the array identifies the rank of an ordering, i.e., whether                     it is primary, secondary, etc. The ordering objects have the following properties:                      **Note:** The `sorting` properties will not be applied to the External Task count query. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


