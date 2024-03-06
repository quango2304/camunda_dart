# openapi.model.HistoricDecisionInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the decision instance. | [optional] 
**decisionDefinitionId** | **String** | The id of the decision definition that this decision instance belongs to. | [optional] 
**decisionDefinitionKey** | **String** | The key of the decision definition that this decision instance belongs to. | [optional] 
**decisionDefinitionName** | **String** | The name of the decision definition that this decision instance belongs to. | [optional] 
**evaluationTime** | [**DateTime**](DateTime.md) | The time the instance was evaluated.  [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The time after which the instance should be removed by the History Cleanup job. [Default format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**processDefinitionId** | **String** | The id of the process definition that this decision instance belongs to. | [optional] 
**processDefinitionKey** | **String** | The key of the process definition that this decision instance belongs to. | [optional] 
**processInstanceId** | **String** | The id of the process instance that this decision instance belongs to. | [optional] 
**caseDefinitionId** | **String** | The id of the case definition that this decision instance belongs to. | [optional] 
**caseDefinitionKey** | **String** | The key of the case definition that this decision instance belongs to. | [optional] 
**caseInstanceId** | **String** | The id of the case instance that this decision instance belongs to. | [optional] 
**activityId** | **String** | The id of the activity that this decision instance belongs to. | [optional] 
**activityInstanceId** | **String** | The id of the activity instance that this decision instance belongs to. | [optional] 
**tenantId** | **String** | The tenant id of the historic decision instance. | [optional] 
**userId** | **String** | The id of the authenticated user that has evaluated this decision instance without a process or case instance. | [optional] 
**inputs** | [**List<HistoricDecisionInputInstanceDto>**](HistoricDecisionInputInstanceDto.md) | The list of decision input values. **Only exists** if `includeInputs` was set to `true` in the query. | [optional] [default to const []]
**ouputs** | [**List<HistoricDecisionOutputInstanceDto>**](HistoricDecisionOutputInstanceDto.md) | The list of decision output values. **Only exists** if `includeOutputs` was set to `true` in the query. | [optional] [default to const []]
**collectResultValue** | **double** | The result of the collect aggregation of the decision result if used. `null` if no aggregation was used. | [optional] 
**rootDecisionInstanceId** | **String** | The decision instance id of the evaluated root decision. Can be `null` if this instance is the root decision instance of the evaluation. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance that initiated the evaluation of this decision. Can be `null` if this decision instance is not evaluated as part of a BPMN process. | [optional] 
**decisionRequirementsDefinitionId** | **String** | The id of the decision requirements definition that this decision instance belongs to. | [optional] 
**decisionRequirementsDefinitionKey** | **String** | The key of the decision requirements definition that this decision instance belongs to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


