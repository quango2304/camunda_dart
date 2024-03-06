# openapi.model.HistoricIncidentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the incident. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition this incident is associated with. | [optional] 
**processDefinitionId** | **String** | The id of the process definition this incident is associated with. | [optional] 
**processInstanceId** | **String** | The key of the process definition this incident is associated with. | [optional] 
**executionId** | **String** | The id of the execution this incident is associated with. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the process containing this incident. | [optional] 
**createTime** | [**DateTime**](DateTime.md) | The time this incident happened.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**endTime** | [**DateTime**](DateTime.md) | The time this incident has been deleted or resolved.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the incident should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**incidentType** | **String** | The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](/manual/develop/user- guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
**activityId** | **String** | The id of the activity this incident is associated with. | [optional] 
**failedActivityId** | **String** | The id of the activity on which the last exception occurred. | [optional] 
**causeIncidentId** | **String** | The id of the associated cause incident which has been triggered. | [optional] 
**rootCauseIncidentId** | **String** | The id of the associated root cause incident which has been triggered. | [optional] 
**configuration** | **String** | The payload of this incident. | [optional] 
**historyConfiguration** | **String** | The payload of this incident at the time when it occurred. | [optional] 
**incidentMessage** | **String** | The message of this incident. | [optional] 
**tenantId** | **String** | The id of the tenant this incident is associated with. | [optional] 
**jobDefinitionId** | **String** | The job definition id the incident is associated with. | [optional] 
**open** | **bool** | If true, this incident is open. | [optional] 
**deleted** | **bool** | If true, this incident has been deleted. | [optional] 
**resolved** | **bool** | If true, this incident has been resolved. | [optional] 
**annotation** | **String** | The annotation set to the incident. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


