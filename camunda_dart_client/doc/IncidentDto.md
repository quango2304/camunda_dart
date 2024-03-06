# openapi.model.IncidentDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the incident. | [optional] 
**processDefinitionId** | **String** | The id of the process definition this incident is associated with. | [optional] 
**processInstanceId** | **String** | The id of the process instance this incident is associated with. | [optional] 
**executionId** | **String** | The id of the execution this incident is associated with. | [optional] 
**incidentTimestamp** | [**DateTime**](DateTime.md) | The time this incident happened. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**incidentType** | **String** | The type of incident, for example: `failedJobs` will be returned in case of an incident which identified a failed job during the execution of a process instance. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
**activityId** | **String** | The id of the activity this incident is associated with. | [optional] 
**failedActivityId** | **String** | The id of the activity on which the last exception occurred. | [optional] 
**causeIncidentId** | **String** | The id of the associated cause incident which has been triggered. | [optional] 
**rootCauseIncidentId** | **String** | The id of the associated root cause incident which has been triggered. | [optional] 
**configuration** | **String** | The payload of this incident. | [optional] 
**tenantId** | **String** | The id of the tenant this incident is associated with. | [optional] 
**incidentMessage** | **String** | The message of this incident. | [optional] 
**jobDefinitionId** | **String** | The job definition id the incident is associated with. | [optional] 
**annotation** | **String** | The annotation set to the incident. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


