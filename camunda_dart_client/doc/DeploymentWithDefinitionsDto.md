# openapi.model.DeploymentWithDefinitionsDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the deployment. | [optional] 
**tenantId** | **String** | The tenant id of the deployment. | [optional] 
**deploymentTime** | [**DateTime**](DateTime.md) | The time when the deployment was created. | [optional] 
**source_** | **String** | The source of the deployment. | [optional] 
**name** | **String** | The name of the deployment. | [optional] 
**links** | [**List<AtomLink>**](AtomLink.md) | The links associated to this resource, with `method`, `href` and `rel`. | [optional] [default to const []]
**deployedProcessDefinitions** | [**Map<String, ProcessDefinitionDto>**](ProcessDefinitionDto.md) | A JSON Object containing a property for each of the process definitions, which are successfully deployed with that deployment. The key is the process definition id, the value is a JSON Object corresponding to the process definition. | [optional] [default to const {}]
**deployedDecisionDefinitions** | [**Map<String, DecisionDefinitionDto>**](DecisionDefinitionDto.md) | A JSON Object containing a property for each of the decision definitions, which are successfully deployed with that deployment. The key is the decision definition id, the value is a JSON Object corresponding to the decision definition. | [optional] [default to const {}]
**deployedDecisionRequirementsDefinitions** | [**Map<String, DecisionRequirementsDefinitionDto>**](DecisionRequirementsDefinitionDto.md) | A JSON Object containing a property for each of the decision requirements definitions, which are successfully deployed with that deployment. The key is the decision requirements definition id, the value is a JSON Object corresponding to the decision requirements definition. | [optional] [default to const {}]
**deployedCaseDefinitions** | [**Map<String, CaseDefinitionDto>**](CaseDefinitionDto.md) | A JSON Object containing a property for each of the case definitions, which are successfully deployed with that deployment. The key is the case definition id, the value is a JSON Object corresponding to the case definition. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


