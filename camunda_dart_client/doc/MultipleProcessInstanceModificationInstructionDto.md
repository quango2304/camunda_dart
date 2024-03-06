# openapi.model.MultipleProcessInstanceModificationInstructionDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow. | 
**activityId** | **String** | Can be used with instructions of types `startTransition`. Specifies the sequence flow to start. | [optional] 
**transitionId** | **String** | Can be used with instructions of types `startTransition`. Specifies the sequence flow to start. | [optional] 
**cancelCurrentActiveActivityInstances** | **bool** | Can be used with instructions of type cancel. Prevents the deletion of new created activity instances. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


