# openapi.model.EventSubscriptionQueryDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventSubscriptionId** | **String** | The id of the event subscription. | [optional] 
**eventName** | **String** | The name of the event this subscription belongs to as defined in the process model. | [optional] 
**eventType** | **String** | The type of the event subscription. | [optional] 
**executionId** | **String** | The execution that is subscribed on the referenced event. | [optional] 
**processInstanceId** | **String** | The process instance this subscription belongs to. | [optional] 
**activityId** | **String** | The identifier of the activity that this event subscription belongs to. This could for example be the id of a receive task. | [optional] 
**tenantIdIn** | **List<String>** | Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids. | [optional] [default to const []]
**withoutTenantId** | **bool** | Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior. | [optional] 
**includeEventSubscriptionsWithoutTenantId** | **bool** | Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior. | [optional] 
**sorting** | [**List<EventSubscriptionQueryDtoSortingInner>**](EventSubscriptionQueryDtoSortingInner.md) | Apply sorting of the result | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


