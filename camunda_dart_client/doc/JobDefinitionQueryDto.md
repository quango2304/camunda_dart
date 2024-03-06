# openapi.model.JobDefinitionQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobDefinitionId** | **String** | Filter by job definition id. | [optional] 
**activityIdIn** | **List<String>** | Only include job definitions which belong to one of the passed activity ids. | [optional] [default to const []]
**processDefinitionId** | **String** | Only include job definitions which exist for the given process definition id. | [optional] 
**processDefinitionKey** | **String** | Only include job definitions which exist for the given process definition key. | [optional] 
**jobType** | **String** | Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types. | [optional] 
**jobConfiguration** | **String** | Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration. | [optional] 
**active** | **bool** | Only include active job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
**suspended** | **bool** | Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior. | [optional] 
**withOverridingJobPriority** | **bool** | Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied. | [optional] 
**tenantIdIn** | **List<String>** | Only include job definitions which belong to one of the passed tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**includeJobDefinitionsWithoutTenantId** | **bool** | Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<JobDefinitionQueryDtoSortingInner>**](JobDefinitionQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Sorting has no effect for `count` endpoints. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


