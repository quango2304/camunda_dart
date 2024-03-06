# openapi.model.TelemetryInternalsDto

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**database** | [**AbstractVendorVersionInformationDto**](AbstractVendorVersionInformationDto.md) |  | [optional] 
**applicationServer** | [**AbstractVendorVersionInformationDto**](AbstractVendorVersionInformationDto.md) |  | [optional] 
**licenseKey** | [**TelemetryLicenseKeyDto**](TelemetryLicenseKeyDto.md) |  | [optional] 
**camundaIntegration** | **List<String>** | List of Camunda integrations used (e.g., Camunda Spring Boot Starter, Camunda Run, WildFly/JBoss subsystem, Camunda EJB). | [optional] [default to const []]
**commands** | [**Map<String, TelemetryCountDto>**](TelemetryCountDto.md) | The count of executed commands after the last retrieved data. | [optional] [default to const {}]
**metrics** | [**Map<String, TelemetryCountDto>**](TelemetryCountDto.md) | The collected metrics are the number of root process instance executions started, the number of activity instances started or also known as flow node instances, and the number of executed decision instances and elements. | [optional] [default to const {}]
**webapps** | **List<String>** | The webapps enabled in this installation of Camunda. | [optional] [default to const []]
**jdk** | [**AbstractVendorVersionInformationDto**](AbstractVendorVersionInformationDto.md) |  | [optional] 
**dataCollectionStartDate** | [**DateTime**](DateTime.md) | The date when the engine started to collect dynamic data, such as command executions and metrics. If telemetry sending is enabled, dynamic data resets on sending the data to Camunda. Dynamic data and the date returned by this method are reset in three cases: engine startup, after engine start when sending telemetry data to Camunda is enabled via API, after sending telemetry data to Camunda (only when this was enabled) The date is in the format <code>YYYY-MM-DD'T'HH:mm:ss.SSSZ</code>. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


