# openapi.model.TelemetryLicenseKeyDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer** | **String** | The name of the customer the license was issued for. | [optional] 
**type** | **String** | The license type. | [optional] 
**validUntil** | [**DateTime**](DateTime.md) | The expiration date of the license. | [optional] 
**unlimited** | **bool** | Flag that indicates if the license is unlimited. | [optional] 
**features** | **Map<String, String>** | A map of features included in the license. | [optional] [default to const {}]
**raw** | **String** | The raw license information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


