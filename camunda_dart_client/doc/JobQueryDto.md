# openapi.model.JobQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobId** | **String** | Filter by job id. | [optional] 
**jobIds** | **List<String>** | Filter by a  list of job ids. | [optional] [default to const []]
**jobDefinitionId** | **String** | Only select jobs which exist for the given job definition. | [optional] 
**processInstanceId** | **String** | Only select jobs which exist for the given process instance. | [optional] 
**processInstanceIds** | **List<String>** | Only select jobs which exist for the given  list of process instance ids. | [optional] [default to const []]
**executionId** | **String** | Only select jobs which exist for the given execution. | [optional] 
**processDefinitionId** | **String** | Filter by the id of the process definition the jobs run on. | [optional] 
**processDefinitionKey** | **String** | Filter by the key of the process definition the jobs run on. | [optional] 
**activityId** | **String** | Only select jobs which exist for an activity with the given id. | [optional] 
**withRetriesLeft** | **bool** | Only select jobs which have retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
**executable** | **bool** | Only select jobs which are executable, i.e., retries > 0 and due date is `null` or due date is in the past. Value may only be `true`, as `false` is the default behavior. | [optional] 
**timers** | **bool** | Only select jobs that are timers. Cannot be used together with `messages`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**messages** | **bool** | Only select jobs that are messages. Cannot be used together with `timers`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**dueDates** | [**List<JobConditionQueryParameterDto>**](JobConditionQueryParameterDto.md) | Only select jobs where the due date is lower or higher than the given date.  | [optional] [default to const []]
**createTimes** | [**List<JobConditionQueryParameterDto>**](JobConditionQueryParameterDto.md) | Only select jobs created before or after the given date.  | [optional] [default to const []]
**withException** | **bool** | Only select jobs that failed due to an exception. Value may only be `true`, as `false` is the default behavior. | [optional] 
**exceptionMessage** | **String** | Only select jobs that failed due to an exception with the given message. | [optional] 
**failedActivityId** | **String** | Only select jobs that failed due to an exception at an activity with the given id. | [optional] 
**noRetriesLeft** | **bool** | Only select jobs which have no retries left. Value may only be `true`, as `false` is the default behavior. | [optional] 
**active** | **bool** | Only include active jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**suspended** | **bool** | Only include suspended jobs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**priorityLowerThanOrEquals** | **int** | Only include jobs with a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
**priorityHigherThanOrEquals** | **int** | Only include jobs with a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
**tenantIdIn** | **List<String>** | Only include jobs which belong to one of the passed  tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include jobs which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**includeJobsWithoutTenantId** | **bool** | Include jobs which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<JobQueryDtoSortingInner>**](JobQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Does not have an effect for the `count` endpoint. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


