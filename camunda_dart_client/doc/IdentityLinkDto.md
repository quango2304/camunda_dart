# openapi.model.IdentityLinkDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userId** | **String** | The id of the user participating in this link. Either `userId` or `groupId` is set. | [optional] 
**groupId** | **String** | The id of the group participating in this link. Either `groupId` or `userId` is set. | [optional] 
**type** | **String** | The type of the identity link. The value of the this property can be user-defined. The Process Engine provides three pre-defined Identity Link `type`s:  * `candidate` * `assignee` - reserved for the task assignee * `owner` - reserved for the task owner  **Note**: When adding or removing an Identity Link, the `type` property must be defined. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


