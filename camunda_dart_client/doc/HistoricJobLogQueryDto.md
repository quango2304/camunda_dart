# openapi.model.HistoricJobLogQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logId** | **String** | Filter by historic job log id. | [optional] 
**jobId** | **String** | Filter by job id. | [optional] 
**jobExceptionMessage** | **String** | Filter by job exception message. | [optional] 
**jobDefinitionId** | **String** | Filter by job definition id. | [optional] 
**jobDefinitionType** | **String** | Filter by job definition type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job definition types. | [optional] 
**jobDefinitionConfiguration** | **String** | Filter by job definition configuration. | [optional] 
**activityIdIn** | **List<String>** | Only include historic job logs which belong to one of the passed activity ids. | [optional] [default to const []]
**failedActivityIdIn** | **List<String>** | Only include historic job logs which belong to failures of one of the passed activity ids. | [optional] [default to const []]
**executionIdIn** | **List<String>** | Only include historic job logs which belong to one of the passed execution ids. | [optional] [default to const []]
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processDefinitionId** | **String** | Filter by process definition id. | [optional] 
**processDefinitionKey** | **String** | Filter by process definition key. | [optional] 
**deploymentId** | **String** | Filter by deployment id. | [optional] 
**tenantIdIn** | **List<String>** | Only include historic job log entries which belong to one of the passed and comma- separated tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic job log entries that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**hostname** | **String** | Filter by hostname. | [optional] 
**jobPriorityLowerThanOrEquals** | **int** | Only include logs for which the associated job had a priority lower than or equal to the given value. Value must be a valid `long` value. | [optional] 
**jobPriorityHigherThanOrEquals** | **int** | Only include logs for which the associated job had a priority higher than or equal to the given value. Value must be a valid `long` value. | [optional] 
**creationLog** | **bool** | Only include creation logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**failureLog** | **bool** | Only include failure logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**successLog** | **bool** | Only include success logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**deletionLog** | **bool** | Only include deletion logs. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<HistoricJobLogQueryDtoSortingInner>**](HistoricJobLogQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


