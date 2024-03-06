# openapi.model.BatchStatisticsDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the batch. | [optional] 
**type** | **String** | The type of the batch. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types. | [optional] 
**totalJobs** | **int** | The total jobs of a batch is the number of batch execution jobs required to complete the batch. | [optional] 
**jobsCreated** | **int** | The number of batch execution jobs already created by the seed job. | [optional] 
**batchJobsPerSeed** | **int** | The number of batch execution jobs created per seed job invocation. The batch seed job is invoked until it has created all batch execution jobs required by the batch (see `totalJobs` property). | [optional] 
**invocationsPerBatchJob** | **int** | Every batch execution job invokes the command executed by the batch `invocationsPerBatchJob` times. E.g., for a process instance migration batch this specifies the number of process instances which are migrated per batch execution job. | [optional] 
**seedJobDefinitionId** | **String** | The job definition id for the seed jobs of this batch. | [optional] 
**monitorJobDefinitionId** | **String** | The job definition id for the monitor jobs of this batch. | [optional] 
**batchJobDefinitionId** | **String** | The job definition id for the batch execution jobs of this batch. | [optional] 
**suspended** | **bool** | Indicates whether this batch is suspended or not. | [optional] 
**tenantId** | **String** | The tenant id of the batch. | [optional] 
**createUserId** | **String** | The id of the user that created the batch. | [optional] 
**startTime** | [**DateTime**](DateTime.md) | The time the batch was started. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**executionStartTime** | [**DateTime**](DateTime.md) | The time the batch execution was started, i.e., at least one batch job has been executed. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. For further information, please see the [documentation] (https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) | [optional] 
**remainingJobs** | **int** | The number of remaining batch execution jobs. This does include failed batch execution jobs and batch execution jobs which still have to be created by the seed job. | [optional] 
**completedJobs** | **int** | The number of completed batch execution jobs. This does include aborted/deleted batch execution jobs. | [optional] 
**failedJobs** | **int** | The number of failed batch execution jobs. This does not include aborted or deleted batch execution jobs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


