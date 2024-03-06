# openapi.model.FilterDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The id of the filter. | [optional] 
**resourceType** | **String** | The resource type of the filter. | [optional] 
**name** | **String** | The name of the filter. | [optional] 
**owner** | **String** | The user id of the owner of the filter. | [optional] 
**query** | [**Object**](.md) | The query of the filter as a JSON object. | [optional] 
**properties** | [**Object**](.md) | The properties of a filter as a JSON object. | [optional] 
**itemCount** | **int** |  The number of items matched by the filter itself. Note: Only exists if the query parameter `itemCount` was set to `true` | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


