# openapi.model.HistoricBatchDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the batch. | [optional] 
**type** | **String** | The type of the batch. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
**totalJobs** | **int** |  The total jobs of a batch is the number of batch execution jobs required to complete the batch.  | [optional] 
**batchJobsPerSeed** | **int** |  The number of batch execution jobs created per seed job invocation. The batch seed job is invoked until it has created all batch execution jobs required by the batch (see `totalJobs` property).  | [optional] 
**invocationsPerBatchJob** | **int** |  Every batch execution job invokes the command executed by the batch `invocationsPerBatchJob` times. E.g., for a process instance migration batch this specifies the number of process instances which are migrated per batch execution job.  | [optional] 
**seedJobDefinitionId** | **String** | The job definition id for the seed jobs of this batch. | [optional] 
**monitorJobDefinitionId** | **String** | The job definition id for the monitor jobs of this batch. | [optional] 
**batchJobDefinitionId** | **String** | The job definition id for the batch execution jobs of this batch. | [optional] 
**tenantId** | **String** | The tenant id of the batch. | [optional] 
**createUserId** | **String** | The batch creator's user id. | [optional] 
**startTime** | [**DateTime**](DateTime.md) | The time the batch was started. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**executionStartTime** | [**DateTime**](DateTime.md) | The time the batch execution was started, i.e., at least one batch job has been executed. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**endTime** | [**DateTime**](DateTime.md) | The time the batch ended. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the historic batch should be removed by the History Cleanup job. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


