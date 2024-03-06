# openapi.model.AuthorizationDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the authorization. | [optional] 
**type** | **int** | The type of the authorization (0=global, 1=grant, 2=revoke). See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service.md#authorization-type) for more information about authorization types. | [optional] 
**permissions** | **List<String>** | An array of Strings holding the permissions provided by this authorization. | [optional] [default to const []]
**userId** | **String** | The id of the user this authorization has been created for. The value `*` represents a global authorization ranging over all users. | [optional] 
**groupId** | **String** | The id of the group this authorization has been created for. | [optional] 
**resourceType** | **int** | An integer representing the resource type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/authorization-service/#resources) for a list of integer representations of resource types. | [optional] 
**resourceId** | **String** | The resource Id. The value `*` represents an authorization ranging over all instances of a resource. | [optional] 
**removalTime** | [**DateTime**](DateTime.md) | The removal time indicates the date a historic instance authorization is cleaned up. A removal time can only be assigned to a historic instance authorization. Can be `null` when not related to a historic instance resource or when the removal time strategy is end and the root process instance is not finished. Default format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`. | [optional] 
**rootProcessInstanceId** | **String** | The process instance id of the root process instance the historic instance authorization is related to. Can be `null` if not related to a historic instance resource. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


