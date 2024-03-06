# openapi.model.HistoricProcessInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processInstanceId** | **String** | Filter by process instance id. | [optional] 
**processInstanceIds** | **List<String>** | Filter by process instance ids. Must be a JSON array of `Strings`. | [optional] [default to const []]
**processDefinitionId** | **String** | Filter by the process definition the instances run on. | [optional] 
**processDefinitionKey** | **String** | Filter by the key of the process definition the instances run on. | [optional] 
**processDefinitionKeyIn** | **List<String>** | Filter by a list of process definition keys. A process instance must have one of the given process definition keys. Must be a JSON array of `Strings`. | [optional] [default to const []]
**processDefinitionName** | **String** | Filter by the name of the process definition the instances run on. | [optional] 
**processDefinitionNameLike** | **String** | Filter by process definition names that the parameter is a substring of. | [optional] 
**processDefinitionKeyNotIn** | **List<String>** | Exclude instances that belong to a set of process definitions. Must be a JSON array of `Strings`. | [optional] [default to const []]
**processInstanceBusinessKey** | **String** | Filter by process instance business key. | [optional] 
**processInstanceBusinessKeyIn** | **List<String>** | Filter by a list of business keys. A process instance must have one of the given business keys. Must be a JSON array of `Strings` | [optional] [default to const []]
**processInstanceBusinessKeyLike** | **String** | Filter by process instance business key that the parameter is a substring of. | [optional] 
**rootProcessInstances** | **bool** | Restrict the query to all process instances that are top level process instances. | [optional] 
**finished** | **bool** | Only include finished process instances. This flag includes all process instances that are completed or terminated. Value may only be `true`, as `false` is the default behavior. | [optional] 
**unfinished** | **bool** | Only include unfinished process instances. Value may only be `true`, as `false` is the default behavior. | [optional] 
**withIncidents** | **bool** | Only include process instances which have an incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
**withRootIncidents** | **bool** | Only include process instances which have a root incident. Value may only be `true`, as `false` is the default behavior. | [optional] 
**incidentType** | **String** | Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types. | [optional] 
**incidentStatus** | **String** | Only include process instances which have an incident in status either open or resolved. To get all process instances, use the query parameter withIncidents. | [optional] 
**incidentMessage** | **String** | Filter by the incident message. Exact match. | [optional] 
**incidentMessageLike** | **String** | Filter by the incident message that the parameter is a substring of. | [optional] 
**startedBefore** | [**DateTime**](DateTime.md) | Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**startedAfter** | [**DateTime**](DateTime.md) | Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedBefore** | [**DateTime**](DateTime.md) | Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**finishedAfter** | [**DateTime**](DateTime.md) | Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**executedActivityAfter** | [**DateTime**](DateTime.md) | Restrict to instances that executed an activity after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**executedActivityBefore** | [**DateTime**](DateTime.md) | Restrict to instances that executed an activity before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**executedJobAfter** | [**DateTime**](DateTime.md) | Restrict to instances that executed an job after the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**executedJobBefore** | [**DateTime**](DateTime.md) | Restrict to instances that executed an job before the given date (inclusive). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**startedBy** | **String** | Only include process instances that were started by the given user. | [optional] 
**superProcessInstanceId** | **String** | Restrict query to all process instances that are sub process instances of the given process instance. Takes a process instance id. | [optional] 
**subProcessInstanceId** | **String** | Restrict query to one process instance that has a sub process instance with the given id. | [optional] 
**superCaseInstanceId** | **String** | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
**subCaseInstanceId** | **String** | Restrict query to one process instance that has a sub case instance with the given id. | [optional] 
**caseInstanceId** | **String** | Restrict query to all process instances that are sub process instances of the given case instance. Takes a case instance id. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a list of tenant ids. A process instance must have one of the given tenant ids. Must be a JSON array of `Strings` | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic process instances which belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**executedActivityIdIn** | **List<String>** | Restrict to instances that executed an activity with one of given ids. Must be a JSON array of `Strings` | [optional] [default to const []]
**activeActivityIdIn** | **List<String>** | Restrict to instances that have an active activity with one of given ids. Must be a JSON array of `Strings` | [optional] [default to const []]
**active** | **bool** | Restrict to instances that are active. | [optional] 
**suspended** | **bool** | Restrict to instances that are suspended. | [optional] 
**completed** | **bool** | Restrict to instances that are completed. | [optional] 
**externallyTerminated** | **bool** | Restrict to instances that are externallyTerminated. | [optional] 
**internallyTerminated** | **bool** | Restrict to instances that are internallyTerminated. | [optional] 
**variables** | [**List<VariableQueryParameterDto>**](VariableQueryParameterDto.md) | A JSON array to only include process instances that have/had variables with certain values. The array consists of objects with the three properties `name`, `operator` and `value`. `name` (`String`) is the variable name, `operator` (`String`) is the comparison operator to be used and `value` the variable value.  Value may be `String`, `Number` or `Boolean`.  Valid operator values are: `eq` - equal to; `neq` - not equal to; `gt` - greater than; `gteq` - greater than or equal to; `lt` - lower than; `lteq` - lower than or equal to; `like`.  | [optional] [default to const []]
**variableNamesIgnoreCase** | **bool** | Match all variable names provided in variables case-insensitively. If set to `true` variableName and variablename are treated as equal. | [optional] 
**variableValuesIgnoreCase** | **bool** | Match all variable values provided in variables case-insensitively. If set to `true` variableValue and variablevalue are treated as equal. | [optional] 
**orQueries** | [**List<HistoricProcessInstanceQueryDto>**](HistoricProcessInstanceQueryDto.md) | A JSON array of nested historic process instance queries with OR semantics.  A process instance matches a nested query if it fulfills at least one of the query's predicates.  With multiple nested queries, a process instance must fulfill at least one predicate of each query ([Conjunctive Normal Form](https://en.wikipedia.org/wiki/Conjunctive_normal_form)).  All process instance query properties can be used except for: `sorting`  See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-engine-api/#or-queries) for more information about OR queries. | [optional] [default to const []]
**sorting** | [**List<HistoricProcessInstanceQueryDtoSortingInner>**](HistoricProcessInstanceQueryDtoSortingInner.md) | Apply sorting of the result | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


