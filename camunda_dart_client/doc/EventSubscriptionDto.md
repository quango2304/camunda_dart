# openapi.model.EventSubscriptionDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the event subscription. | [optional] 
**eventType** | **String** | The type of the event subscription. | [optional] 
**eventName** | **String** | The name of the event this subscription belongs to as defined in the process model. | [optional] 
**executionId** | **String** | The execution that is subscribed on the referenced event. | [optional] 
**processInstanceId** | **String** | The process instance this subscription belongs to. | [optional] 
**activityId** | **String** | The identifier of the activity that this event subscription belongs to. This could for example be the id of a receive task. | [optional] 
**createdDate** | [**DateTime**](DateTime.md) | The time this event subscription was created. | [optional] 
**tenantId** | **String** | The id of the tenant this event subscription belongs to. Can be `null` if the subscription belongs to no single tenant. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


