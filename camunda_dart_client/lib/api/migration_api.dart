//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MigrationApi {
  MigrationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Execute Migration Plan
  ///
  /// Executes a migration plan synchronously for multiple process instances. To execute a migration plan asynchronously, use the [Execute Migration Plan Async(Batch)](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration-async/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrationExecutionDto] migrationExecutionDto:
  Future<Response> executeMigrationPlanWithHttpInfo({ MigrationExecutionDto? migrationExecutionDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/execute';

    // ignore: prefer_final_locals
    Object? postBody = migrationExecutionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Execute Migration Plan
  ///
  /// Executes a migration plan synchronously for multiple process instances. To execute a migration plan asynchronously, use the [Execute Migration Plan Async(Batch)](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration-async/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
  ///
  /// Parameters:
  ///
  /// * [MigrationExecutionDto] migrationExecutionDto:
  Future<void> executeMigrationPlan({ MigrationExecutionDto? migrationExecutionDto, }) async {
    final response = await executeMigrationPlanWithHttpInfo( migrationExecutionDto: migrationExecutionDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute Migration Plan Async (Batch)
  ///
  /// Executes a migration plan asynchronously (batch) for multiple process instances. To execute a migration plan synchronously, use the [Execute MigrationPlan](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrationExecutionDto] migrationExecutionDto:
  Future<Response> executeMigrationPlanAsyncWithHttpInfo({ MigrationExecutionDto? migrationExecutionDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/executeAsync';

    // ignore: prefer_final_locals
    Object? postBody = migrationExecutionDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Execute Migration Plan Async (Batch)
  ///
  /// Executes a migration plan asynchronously (batch) for multiple process instances. To execute a migration plan synchronously, use the [Execute MigrationPlan](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
  ///
  /// Parameters:
  ///
  /// * [MigrationExecutionDto] migrationExecutionDto:
  Future<BatchDto?> executeMigrationPlanAsync({ MigrationExecutionDto? migrationExecutionDto, }) async {
    final response = await executeMigrationPlanAsyncWithHttpInfo( migrationExecutionDto: migrationExecutionDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BatchDto',) as BatchDto;
    
    }
    return null;
  }

  /// Generate Migration Plan
  ///
  /// Generates a migration plan for two process definitions. The generated migration plan contains migration instructions which map equal activities between the two process definitions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrationPlanGenerationDto] migrationPlanGenerationDto:
  Future<Response> generateMigrationPlanWithHttpInfo({ MigrationPlanGenerationDto? migrationPlanGenerationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/generate';

    // ignore: prefer_final_locals
    Object? postBody = migrationPlanGenerationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Generate Migration Plan
  ///
  /// Generates a migration plan for two process definitions. The generated migration plan contains migration instructions which map equal activities between the two process definitions.
  ///
  /// Parameters:
  ///
  /// * [MigrationPlanGenerationDto] migrationPlanGenerationDto:
  Future<MigrationPlanDto?> generateMigrationPlan({ MigrationPlanGenerationDto? migrationPlanGenerationDto, }) async {
    final response = await generateMigrationPlanWithHttpInfo( migrationPlanGenerationDto: migrationPlanGenerationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationPlanDto',) as MigrationPlanDto;
    
    }
    return null;
  }

  /// Validate Migration Plan
  ///
  /// Validates a migration plan statically without executing it. This corresponds to the [creation time validation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#creation-time-validation) described in the user guide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MigrationPlanDto] migrationPlanDto:
  Future<Response> validateMigrationPlanWithHttpInfo({ MigrationPlanDto? migrationPlanDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/migration/validate';

    // ignore: prefer_final_locals
    Object? postBody = migrationPlanDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Validate Migration Plan
  ///
  /// Validates a migration plan statically without executing it. This corresponds to the [creation time validation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#creation-time-validation) described in the user guide.
  ///
  /// Parameters:
  ///
  /// * [MigrationPlanDto] migrationPlanDto:
  Future<MigrationPlanReportDto?> validateMigrationPlan({ MigrationPlanDto? migrationPlanDto, }) async {
    final response = await validateMigrationPlanWithHttpInfo( migrationPlanDto: migrationPlanDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MigrationPlanReportDto',) as MigrationPlanReportDto;
    
    }
    return null;
  }
}
