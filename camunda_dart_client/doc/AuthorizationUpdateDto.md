# openapi.model.AuthorizationUpdateDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **List<String>** | An array of Strings holding the permissions provided by this authorization. | [optional] [default to const []]
**userId** | **String** | The id of the user this authorization has been created for. The value `*` represents a global authorization ranging over all users. | [optional] 
**groupId** | **String** | The id of the group this authorization has been created for. | [optional] 
**resourceType** | **int** | An integer representing the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types. | [optional] 
**resourceId** | **String** | The resource Id. The value `*` represents an authorization ranging over all instances of a resource. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


