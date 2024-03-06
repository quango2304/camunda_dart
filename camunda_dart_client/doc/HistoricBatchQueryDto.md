# openapi.model.HistoricBatchQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchId** | **String** | Filter by batch id. | [optional] 
**type** | **String** | Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
**completed** | **bool** |  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<HistoricBatchQueryDtoSortingInner>**](HistoricBatchQueryDtoSortingInner.md) | An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


