# openapi.api.IncidentApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearIncidentAnnotation**](IncidentApi.md#clearincidentannotation) | **DELETE** /incident/{id}/annotation | Clear Incident Annotation
[**getIncident**](IncidentApi.md#getincident) | **GET** /incident/{id} | Get Incident
[**getIncidents**](IncidentApi.md#getincidents) | **GET** /incident | Get List
[**getIncidentsCount**](IncidentApi.md#getincidentscount) | **GET** /incident/count | Get List Count
[**resolveIncident**](IncidentApi.md#resolveincident) | **DELETE** /incident/{id} | Resolve Incident
[**setIncidentAnnotation**](IncidentApi.md#setincidentannotation) | **PUT** /incident/{id}/annotation | Set Incident Annotation


# **clearIncidentAnnotation**
> clearIncidentAnnotation(id)

Clear Incident Annotation

Clears the annotation of an incident with given id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final id = id_example; // String | The id of the incident to clear the annotation at.

try {
    api_instance.clearIncidentAnnotation(id);
} catch (e) {
    print('Exception when calling IncidentApi->clearIncidentAnnotation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the incident to clear the annotation at. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncident**
> IncidentDto getIncident(id)

Get Incident

Retrieves an incident by ID.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final id = id_example; // String | The id of the incident to be retrieved.

try {
    final result = api_instance.getIncident(id);
    print(result);
} catch (e) {
    print('Exception when calling IncidentApi->getIncident: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the incident to be retrieved. | 

### Return type

[**IncidentDto**](IncidentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncidents**
> List<IncidentDto> getIncidents(incidentId, incidentType, incidentMessage, incidentMessageLike, processDefinitionId, processDefinitionKeyIn, processInstanceId, executionId, incidentTimestampBefore, incidentTimestampAfter, activityId, failedActivityId, causeIncidentId, rootCauseIncidentId, configuration, tenantIdIn, jobDefinitionIdIn, sortBy, sortOrder, firstResult, maxResults)

Get List

Queries for incidents that fulfill given parameters. The size of the result set can be retrieved by using the [Get Incident Count](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query-count/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final incidentId = incidentId_example; // String | Restricts to incidents that have the given id.
final incidentType = incidentType_example; // String | Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Restricts to incidents that have the given incident message.
final incidentMessageLike = incidentMessageLike_example; // String | Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
final processDefinitionId = processDefinitionId_example; // String | Restricts to incidents that belong to a process definition with the given id.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
final processInstanceId = processInstanceId_example; // String | Restricts to incidents that belong to a process instance with the given id.
final executionId = executionId_example; // String | Restricts to incidents that belong to an execution with the given id.
final incidentTimestampBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final incidentTimestampAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final activityId = activityId_example; // String | Restricts to incidents that belong to an activity with the given id.
final failedActivityId = failedActivityId_example; // String | Restricts to incidents that were created due to the failure of an activity with the given id.
final causeIncidentId = causeIncidentId_example; // String | Restricts to incidents that have the given incident id as cause incident.
final rootCauseIncidentId = rootCauseIncidentId_example; // String | Restricts to incidents that have the given incident id as root cause incident.
final configuration = configuration_example; // String | Restricts to incidents that have the given parameter set as configuration.
final tenantIdIn = tenantIdIn_example; // String | Restricts to incidents that have one of the given comma-separated tenant ids.
final jobDefinitionIdIn = jobDefinitionIdIn_example; // String | Restricts to incidents that have one of the given comma-separated job definition ids.
final sortBy = sortBy_example; // String | Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
final sortOrder = sortOrder_example; // String | Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
final firstResult = 56; // int | Pagination of results. Specifies the index of the first result to return.
final maxResults = 56; // int | Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.

try {
    final result = api_instance.getIncidents(incidentId, incidentType, incidentMessage, incidentMessageLike, processDefinitionId, processDefinitionKeyIn, processInstanceId, executionId, incidentTimestampBefore, incidentTimestampAfter, activityId, failedActivityId, causeIncidentId, rootCauseIncidentId, configuration, tenantIdIn, jobDefinitionIdIn, sortBy, sortOrder, firstResult, maxResults);
    print(result);
} catch (e) {
    print('Exception when calling IncidentApi->getIncidents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incidentId** | **String**| Restricts to incidents that have the given id. | [optional] 
 **incidentType** | **String**| Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Restricts to incidents that have the given incident message. | [optional] 
 **incidentMessageLike** | **String**| Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`). | [optional] 
 **processDefinitionId** | **String**| Restricts to incidents that belong to a process definition with the given id. | [optional] 
 **processDefinitionKeyIn** | **String**| Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list. | [optional] 
 **processInstanceId** | **String**| Restricts to incidents that belong to a process instance with the given id. | [optional] 
 **executionId** | **String**| Restricts to incidents that belong to an execution with the given id. | [optional] 
 **incidentTimestampBefore** | **DateTime**| Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **incidentTimestampAfter** | **DateTime**| Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **activityId** | **String**| Restricts to incidents that belong to an activity with the given id. | [optional] 
 **failedActivityId** | **String**| Restricts to incidents that were created due to the failure of an activity with the given id. | [optional] 
 **causeIncidentId** | **String**| Restricts to incidents that have the given incident id as cause incident. | [optional] 
 **rootCauseIncidentId** | **String**| Restricts to incidents that have the given incident id as root cause incident. | [optional] 
 **configuration** | **String**| Restricts to incidents that have the given parameter set as configuration. | [optional] 
 **tenantIdIn** | **String**| Restricts to incidents that have one of the given comma-separated tenant ids. | [optional] 
 **jobDefinitionIdIn** | **String**| Restricts to incidents that have one of the given comma-separated job definition ids. | [optional] 
 **sortBy** | **String**| Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter. | [optional] 
 **sortOrder** | **String**| Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter. | [optional] 
 **firstResult** | **int**| Pagination of results. Specifies the index of the first result to return. | [optional] 
 **maxResults** | **int**| Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left. | [optional] 

### Return type

[**List<IncidentDto>**](IncidentDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncidentsCount**
> CountResultDto getIncidentsCount(incidentId, incidentType, incidentMessage, incidentMessageLike, processDefinitionId, processDefinitionKeyIn, processInstanceId, executionId, incidentTimestampBefore, incidentTimestampAfter, activityId, failedActivityId, causeIncidentId, rootCauseIncidentId, configuration, tenantIdIn, jobDefinitionIdIn)

Get List Count

Queries for the number of incidents that fulfill given parameters. Takes the same parameters as the [Get Incidents](https://docs.camunda.org/manual/7.20/reference/rest/incident/get-query/) method.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final incidentId = incidentId_example; // String | Restricts to incidents that have the given id.
final incidentType = incidentType_example; // String | Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
final incidentMessage = incidentMessage_example; // String | Restricts to incidents that have the given incident message.
final incidentMessageLike = incidentMessageLike_example; // String | Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`).
final processDefinitionId = processDefinitionId_example; // String | Restricts to incidents that belong to a process definition with the given id.
final processDefinitionKeyIn = processDefinitionKeyIn_example; // String | Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list.
final processInstanceId = processInstanceId_example; // String | Restricts to incidents that belong to a process instance with the given id.
final executionId = executionId_example; // String | Restricts to incidents that belong to an execution with the given id.
final incidentTimestampBefore = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final incidentTimestampAfter = 2013-10-20T19:20:30+01:00; // DateTime | Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
final activityId = activityId_example; // String | Restricts to incidents that belong to an activity with the given id.
final failedActivityId = failedActivityId_example; // String | Restricts to incidents that were created due to the failure of an activity with the given id.
final causeIncidentId = causeIncidentId_example; // String | Restricts to incidents that have the given incident id as cause incident.
final rootCauseIncidentId = rootCauseIncidentId_example; // String | Restricts to incidents that have the given incident id as root cause incident.
final configuration = configuration_example; // String | Restricts to incidents that have the given parameter set as configuration.
final tenantIdIn = tenantIdIn_example; // String | Restricts to incidents that have one of the given comma-separated tenant ids.
final jobDefinitionIdIn = jobDefinitionIdIn_example; // String | Restricts to incidents that have one of the given comma-separated job definition ids.

try {
    final result = api_instance.getIncidentsCount(incidentId, incidentType, incidentMessage, incidentMessageLike, processDefinitionId, processDefinitionKeyIn, processInstanceId, executionId, incidentTimestampBefore, incidentTimestampAfter, activityId, failedActivityId, causeIncidentId, rootCauseIncidentId, configuration, tenantIdIn, jobDefinitionIdIn);
    print(result);
} catch (e) {
    print('Exception when calling IncidentApi->getIncidentsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incidentId** | **String**| Restricts to incidents that have the given id. | [optional] 
 **incidentType** | **String**| Restricts to incidents that belong to the given incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
 **incidentMessage** | **String**| Restricts to incidents that have the given incident message. | [optional] 
 **incidentMessageLike** | **String**| Restricts to incidents that incidents message is a substring of the given value. The string can include the wildcard character '%' to express like-strategy: starts with (`string%`), ends with (`%string`) or contains (`%string%`). | [optional] 
 **processDefinitionId** | **String**| Restricts to incidents that belong to a process definition with the given id. | [optional] 
 **processDefinitionKeyIn** | **String**| Restricts to incidents that belong to a process definition with the given keys. Must be a comma-separated list. | [optional] 
 **processInstanceId** | **String**| Restricts to incidents that belong to a process instance with the given id. | [optional] 
 **executionId** | **String**| Restricts to incidents that belong to an execution with the given id. | [optional] 
 **incidentTimestampBefore** | **DateTime**| Restricts to incidents that have an incidentTimestamp date before the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **incidentTimestampAfter** | **DateTime**| Restricts to incidents that have an incidentTimestamp date after the given date.  By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
 **activityId** | **String**| Restricts to incidents that belong to an activity with the given id. | [optional] 
 **failedActivityId** | **String**| Restricts to incidents that were created due to the failure of an activity with the given id. | [optional] 
 **causeIncidentId** | **String**| Restricts to incidents that have the given incident id as cause incident. | [optional] 
 **rootCauseIncidentId** | **String**| Restricts to incidents that have the given incident id as root cause incident. | [optional] 
 **configuration** | **String**| Restricts to incidents that have the given parameter set as configuration. | [optional] 
 **tenantIdIn** | **String**| Restricts to incidents that have one of the given comma-separated tenant ids. | [optional] 
 **jobDefinitionIdIn** | **String**| Restricts to incidents that have one of the given comma-separated job definition ids. | [optional] 

### Return type

[**CountResultDto**](CountResultDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveIncident**
> resolveIncident(id)

Resolve Incident

Resolves an incident with given id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final id = id_example; // String | The id of the incident to be resolved.

try {
    api_instance.resolveIncident(id);
} catch (e) {
    print('Exception when calling IncidentApi->resolveIncident: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the incident to be resolved. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setIncidentAnnotation**
> setIncidentAnnotation(id, annotationDto)

Set Incident Annotation

Sets the annotation of an incident with given id.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = IncidentApi();
final id = id_example; // String | The id of the incident to clear the annotation at.
final annotationDto = AnnotationDto(); // AnnotationDto | 

try {
    api_instance.setIncidentAnnotation(id, annotationDto);
} catch (e) {
    print('Exception when calling IncidentApi->setIncidentAnnotation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The id of the incident to clear the annotation at. | 
 **annotationDto** | [**AnnotationDto**](AnnotationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

