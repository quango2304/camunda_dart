# openapi.model.AuthorizationExceptionDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | An exception class indicating the occurred error. | [optional] 
**message** | **String** | A detailed message of the error. | [optional] 
**code** | **num** | The code allows your client application to identify the error in an automated fashion. You can look up the meaning of all built-in codes and learn how to add custom codes in the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/error-handling/#exception-codes). | [optional] 
**userId** | **String** | The id of the user that does not have expected permissions | [optional] 
**missingAuthorizations** | [**List<MissingAuthorizationDto>**](MissingAuthorizationDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


