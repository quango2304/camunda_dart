# openapi.model.HistoricDecisionInstanceQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**decisionInstanceId** | **String** | Filter by decision instance id. | [optional] 
**decisionInstanceIdIn** | **List<String>** | Filter by decision instance ids. Must be a comma-separated list of decision instance ids. | [optional] [default to const []]
**decisionDefinitionId** | **String** | Filter by the decision definition the instances belongs to. | [optional] 
**decisionDefinitionIdIn** | **List<String>** | Filter by the decision definitions the instances belongs to. Must be a comma-separated list of decision definition ids. | [optional] [default to const []]
**decisionDefinitionKey** | **String** | Filter by the key of the decision definition the instances belongs to. | [optional] 
**decisionDefinitionKeyIn** | **List<String>** | Filter by the keys of the decision definition the instances belongs to. Must be a comma- separated list of decision definition keys. | [optional] [default to const []]
**decisionDefinitionName** | **String** | Filter by the name of the decision definition the instances belongs to. | [optional] 
**decisionDefinitionNameLike** | **String** | Filter by the name of the decision definition the instances belongs to, that the parameter is a substring of. | [optional] 
**processDefinitionId** | **String** | Filter by the process definition the instances belongs to. | [optional] 
**processDefinitionKey** | **String** | Filter by the key of the process definition the instances belongs to. | [optional] 
**processInstanceId** | **String** | Filter by the process instance the instances belongs to. | [optional] 
**caseDefinitionId** | **String** | Filter by the case definition the instances belongs to. | [optional] 
**caseDefinitionKey** | **String** | Filter by the key of the case definition the instances belongs to. | [optional] 
**caseInstanceId** | **String** | Filter by the case instance the instances belongs to. | [optional] 
**activityIdIn** | **List<String>** | Filter by the activity ids the instances belongs to. Must be a comma-separated list of acitvity ids. | [optional] [default to const []]
**activityInstanceIdIn** | **List<String>** | Filter by the activity instance ids the instances belongs to. Must be a comma-separated list of acitvity instance ids. | [optional] [default to const []]
**tenantIdIn** | **List<String>** | Filter by a comma-separated list of tenant ids. A historic decision instance must have one of the given tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only include historic decision instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior. | [optional] 
**evaluatedBefore** | [**DateTime**](DateTime.md) | Restrict to instances that were evaluated before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**evaluatedAfter** | [**DateTime**](DateTime.md) | Restrict to instances that were evaluated after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM- dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`. | [optional] 
**userId** | **String** | Restrict to instances that were evaluated by the given user. | [optional] 
**rootDecisionInstanceId** | **String** | Restrict to instances that have a given root decision instance id. This also includes the decision instance with the given id. | [optional] 
**rootDecisionInstancesOnly** | **bool** | Restrict to instances those are the root decision instance of an evaluation. Value may only be `true`, as `false` is the default behavior. | [optional] 
**decisionRequirementsDefinitionId** | **String** | Filter by the decision requirements definition the instances belongs to. | [optional] 
**decisionRequirementsDefinitionKey** | **String** | Filter by the key of the decision requirements definition the instances belongs to. | [optional] 
**includeInputs** | **bool** | Include input values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
**includeOutputs** | **bool** | Include output values in the result. Value may only be `true`, as `false` is the default behavior. | [optional] 
**disableBinaryFetching** | **bool** | Disables fetching of byte array input and output values. Value may only be `true`, as `false` is the default behavior. | [optional] 
**disableCustomObjectDeserialization** | **bool** | Disables deserialization of input and output values that are custom objects. Value may only be `true`, as `false` is the default behavior. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


