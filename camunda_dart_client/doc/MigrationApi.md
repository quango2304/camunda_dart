# openapi.api.MigrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080/engine-rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeMigrationPlan**](MigrationApi.md#executemigrationplan) | **POST** /migration/execute | Execute Migration Plan
[**executeMigrationPlanAsync**](MigrationApi.md#executemigrationplanasync) | **POST** /migration/executeAsync | Execute Migration Plan Async (Batch)
[**generateMigrationPlan**](MigrationApi.md#generatemigrationplan) | **POST** /migration/generate | Generate Migration Plan
[**validateMigrationPlan**](MigrationApi.md#validatemigrationplan) | **POST** /migration/validate | Validate Migration Plan


# **executeMigrationPlan**
> executeMigrationPlan(migrationExecutionDto)

Execute Migration Plan

Executes a migration plan synchronously for multiple process instances. To execute a migration plan asynchronously, use the [Execute Migration Plan Async(Batch)](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration-async/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MigrationApi();
final migrationExecutionDto = MigrationExecutionDto(); // MigrationExecutionDto | 

try {
    api_instance.executeMigrationPlan(migrationExecutionDto);
} catch (e) {
    print('Exception when calling MigrationApi->executeMigrationPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationExecutionDto** | [**MigrationExecutionDto**](MigrationExecutionDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeMigrationPlanAsync**
> BatchDto executeMigrationPlanAsync(migrationExecutionDto)

Execute Migration Plan Async (Batch)

Executes a migration plan asynchronously (batch) for multiple process instances. To execute a migration plan synchronously, use the [Execute MigrationPlan](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MigrationApi();
final migrationExecutionDto = MigrationExecutionDto(); // MigrationExecutionDto | 

try {
    final result = api_instance.executeMigrationPlanAsync(migrationExecutionDto);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->executeMigrationPlanAsync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationExecutionDto** | [**MigrationExecutionDto**](MigrationExecutionDto.md)|  | [optional] 

### Return type

[**BatchDto**](BatchDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateMigrationPlan**
> MigrationPlanDto generateMigrationPlan(migrationPlanGenerationDto)

Generate Migration Plan

Generates a migration plan for two process definitions. The generated migration plan contains migration instructions which map equal activities between the two process definitions.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MigrationApi();
final migrationPlanGenerationDto = MigrationPlanGenerationDto(); // MigrationPlanGenerationDto | 

try {
    final result = api_instance.generateMigrationPlan(migrationPlanGenerationDto);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->generateMigrationPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationPlanGenerationDto** | [**MigrationPlanGenerationDto**](MigrationPlanGenerationDto.md)|  | [optional] 

### Return type

[**MigrationPlanDto**](MigrationPlanDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMigrationPlan**
> MigrationPlanReportDto validateMigrationPlan(migrationPlanDto)

Validate Migration Plan

Validates a migration plan statically without executing it. This corresponds to the [creation time validation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#creation-time-validation) described in the user guide.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = MigrationApi();
final migrationPlanDto = MigrationPlanDto(); // MigrationPlanDto | 

try {
    final result = api_instance.validateMigrationPlan(migrationPlanDto);
    print(result);
} catch (e) {
    print('Exception when calling MigrationApi->validateMigrationPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **migrationPlanDto** | [**MigrationPlanDto**](MigrationPlanDto.md)|  | [optional] 

### Return type

[**MigrationPlanReportDto**](MigrationPlanReportDto.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

