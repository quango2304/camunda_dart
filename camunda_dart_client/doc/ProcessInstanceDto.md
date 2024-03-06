# openapi.model.ProcessInstanceDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**List<AtomLink>**](AtomLink.md) | The links associated to this resource, with `method`, `href` and `rel`. | [optional] [default to const []]
**id** | **String** | The id of the process instance. | [optional] 
**definitionId** | **String** | The id of the process definition that this process instance belongs to. | [optional] 
**businessKey** | **String** | The business key of the process instance. | [optional] 
**caseInstanceId** | **String** | The id of the case instance associated with the process instance. | [optional] 
**ended** | **bool** | A flag indicating whether the process instance has ended or not. Deprecated: will always be false! | [optional] 
**suspended** | **bool** | A flag indicating whether the process instance is suspended or not. | [optional] 
**tenantId** | **String** | The tenant id of the process instance. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


