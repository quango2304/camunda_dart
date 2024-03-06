//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProcessDefinitionApi {
  ProcessDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete
  ///
  /// Deletes a running process instance by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<Response> deleteProcessDefinitionWithHttpInfo(String id, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cascade != null) {
      queryParams.addAll(_queryParams('', 'cascade', cascade));
    }
    if (skipCustomListeners != null) {
      queryParams.addAll(_queryParams('', 'skipCustomListeners', skipCustomListeners));
    }
    if (skipIoMappings != null) {
      queryParams.addAll(_queryParams('', 'skipIoMappings', skipIoMappings));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete
  ///
  /// Deletes a running process instance by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<void> deleteProcessDefinition(String id, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    final response = await deleteProcessDefinitionWithHttpInfo(id,  cascade: cascade, skipCustomListeners: skipCustomListeners, skipIoMappings: skipIoMappings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete By Key
  ///
  /// Deletes process definitions by a given key which belong to no tenant id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definitions to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<Response> deleteProcessDefinitionsByKeyWithHttpInfo(String key, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cascade != null) {
      queryParams.addAll(_queryParams('', 'cascade', cascade));
    }
    if (skipCustomListeners != null) {
      queryParams.addAll(_queryParams('', 'skipCustomListeners', skipCustomListeners));
    }
    if (skipIoMappings != null) {
      queryParams.addAll(_queryParams('', 'skipIoMappings', skipIoMappings));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete By Key
  ///
  /// Deletes process definitions by a given key which belong to no tenant id.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definitions to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<void> deleteProcessDefinitionsByKey(String key, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    final response = await deleteProcessDefinitionsByKeyWithHttpInfo(key,  cascade: cascade, skipCustomListeners: skipCustomListeners, skipIoMappings: skipIoMappings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete By Key
  ///
  /// Deletes process definitions by a given key and which belong to a tenant id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definitions to be deleted.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definitions belong to.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<Response> deleteProcessDefinitionsByKeyAndTenantIdWithHttpInfo(String key, String tenantId, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cascade != null) {
      queryParams.addAll(_queryParams('', 'cascade', cascade));
    }
    if (skipCustomListeners != null) {
      queryParams.addAll(_queryParams('', 'skipCustomListeners', skipCustomListeners));
    }
    if (skipIoMappings != null) {
      queryParams.addAll(_queryParams('', 'skipIoMappings', skipIoMappings));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete By Key
  ///
  /// Deletes process definitions by a given key and which belong to a tenant id.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definitions to be deleted.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definitions belong to.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this process definition should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   A boolean value to control whether input/output mappings should be executed during deletion. `true`, if input/output mappings should not be invoked.
  Future<void> deleteProcessDefinitionsByKeyAndTenantId(String key, String tenantId, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    final response = await deleteProcessDefinitionsByKeyAndTenantIdWithHttpInfo(key, tenantId,  cascade: cascade, skipCustomListeners: skipCustomListeners, skipIoMappings: skipIoMappings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<Response> getActivityStatisticsWithHttpInfo(String id, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/statistics'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (failedJobs != null) {
      queryParams.addAll(_queryParams('', 'failedJobs', failedJobs));
    }
    if (incidents != null) {
      queryParams.addAll(_queryParams('', 'incidents', incidents));
    }
    if (incidentsForType != null) {
      queryParams.addAll(_queryParams('', 'incidentsForType', incidentsForType));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<List<ActivityStatisticsResultDto>?> getActivityStatistics(String id, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    final response = await getActivityStatisticsWithHttpInfo(id,  failedJobs: failedJobs, incidents: incidents, incidentsForType: incidentsForType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ActivityStatisticsResultDto>') as List)
        .cast<ActivityStatisticsResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of the latest version of the given process definition which belongs to no tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<Response> getActivityStatisticsByProcessDefinitionKeyWithHttpInfo(String key, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/statistics'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (failedJobs != null) {
      queryParams.addAll(_queryParams('', 'failedJobs', failedJobs));
    }
    if (incidents != null) {
      queryParams.addAll(_queryParams('', 'incidents', incidents));
    }
    if (incidentsForType != null) {
      queryParams.addAll(_queryParams('', 'incidentsForType', incidentsForType));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of the latest version of the given process definition which belongs to no tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<List<ActivityStatisticsResultDto>?> getActivityStatisticsByProcessDefinitionKey(String key, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    final response = await getActivityStatisticsByProcessDefinitionKeyWithHttpInfo(key,  failedJobs: failedJobs, incidents: incidents, incidentsForType: incidentsForType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ActivityStatisticsResultDto>') as List)
        .cast<ActivityStatisticsResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of the latest version of the given process definition for a tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<Response> getActivityStatisticsByProcessDefinitionKeyAndTenantIdWithHttpInfo(String key, String tenantId, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/statistics'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (failedJobs != null) {
      queryParams.addAll(_queryParams('', 'failedJobs', failedJobs));
    }
    if (incidents != null) {
      queryParams.addAll(_queryParams('', 'incidents', incidents));
    }
    if (incidentsForType != null) {
      queryParams.addAll(_queryParams('', 'incidentsForType', incidentsForType));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Activity Instance Statistics
  ///
  /// Retrieves runtime statistics of the latest version of the given process definition for a tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  Future<List<ActivityStatisticsResultDto>?> getActivityStatisticsByProcessDefinitionKeyAndTenantId(String key, String tenantId, { bool? failedJobs, bool? incidents, String? incidentsForType, }) async {
    final response = await getActivityStatisticsByProcessDefinitionKeyAndTenantIdWithHttpInfo(key, tenantId,  failedJobs: failedJobs, incidents: incidents, incidentsForType: incidentsForType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ActivityStatisticsResultDto>') as List)
        .cast<ActivityStatisticsResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the deployed start form for.
  Future<Response> getDeployedStartFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/deployed-start-form'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the deployed start form for.
  Future<MultipartFile?> getDeployedStartForm(String id,) async {
    final response = await getDeployedStartFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<Response> getDeployedStartFormByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/deployed-start-form'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<MultipartFile?> getDeployedStartFormByKey(String key,) async {
    final response = await getDeployedStartFormByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definitions belong to.
  Future<Response> getDeployedStartFormByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/deployed-start-form'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Deployed Start Form
  ///
  /// Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definitions belong to.
  Future<MultipartFile?> getDeployedStartFormByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getDeployedStartFormByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get
  ///
  /// Retrieves the latest version of the process definition for tenant according to the `ProcessDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<Response> getLatestProcessDefinitionByTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get
  ///
  /// Retrieves the latest version of the process definition for tenant according to the `ProcessDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<ProcessDefinitionDto?> getLatestProcessDefinitionByTenantId(String key, String tenantId,) async {
    final response = await getLatestProcessDefinitionByTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDto',) as ProcessDefinitionDto;
    
    }
    return null;
  }

  /// Get
  ///
  /// Retrieves a process definition according to the `ProcessDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be retrieved.
  Future<Response> getProcessDefinitionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get
  ///
  /// Retrieves a process definition according to the `ProcessDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be retrieved.
  Future<ProcessDefinitionDto?> getProcessDefinition(String id,) async {
    final response = await getProcessDefinitionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDto',) as ProcessDefinitionDto;
    
    }
    return null;
  }

  /// Get XML
  ///
  /// Retrieves the BPMN 2.0 XML of a process definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<Response> getProcessDefinitionBpmn20XmlWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/xml'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get XML
  ///
  /// Retrieves the BPMN 2.0 XML of a process definition.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<ProcessDefinitionDiagramDto?> getProcessDefinitionBpmn20Xml(String id,) async {
    final response = await getProcessDefinitionBpmn20XmlWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDiagramDto',) as ProcessDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get XML
  ///
  /// Retrieves latest version the BPMN 2.0 XML of a process definition.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) whose XML should be retrieved.
  Future<Response> getProcessDefinitionBpmn20XmlByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/xml'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get XML
  ///
  /// Retrieves latest version the BPMN 2.0 XML of a process definition.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) whose XML should be retrieved.
  Future<ProcessDefinitionDiagramDto?> getProcessDefinitionBpmn20XmlByKey(String key,) async {
    final response = await getProcessDefinitionBpmn20XmlByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDiagramDto',) as ProcessDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get XML
  ///
  /// Retrieves latest version the BPMN 2.0 XML of a process definition. Returns the XML for the latest version of the process definition for tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) whose XML should be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<Response> getProcessDefinitionBpmn20XmlByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/xml'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get XML
  ///
  /// Retrieves latest version the BPMN 2.0 XML of a process definition. Returns the XML for the latest version of the process definition for tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) whose XML should be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<ProcessDefinitionDiagramDto?> getProcessDefinitionBpmn20XmlByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getProcessDefinitionBpmn20XmlByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDiagramDto',) as ProcessDefinitionDiagramDto;
    
    }
    return null;
  }

  /// Get
  ///
  /// Retrieves the latest version of the process definition which belongs to no tenant according to the `ProcessDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<Response> getProcessDefinitionByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get
  ///
  /// Retrieves the latest version of the process definition which belongs to no tenant according to the `ProcessDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<ProcessDefinitionDto?> getProcessDefinitionByKey(String key,) async {
    final response = await getProcessDefinitionByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessDefinitionDto',) as ProcessDefinitionDto;
    
    }
    return null;
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram of a process definition.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<Response> getProcessDefinitionDiagramWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/diagram'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram of a process definition.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<MultipartFile?> getProcessDefinitionDiagram(String id,) async {
    final response = await getProcessDefinitionDiagramWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram for the latest version of the process definition which belongs to no tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition.
  Future<Response> getProcessDefinitionDiagramByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/diagram'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram for the latest version of the process definition which belongs to no tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition.
  Future<MultipartFile?> getProcessDefinitionDiagramByKey(String key,) async {
    final response = await getProcessDefinitionDiagramByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram for the latest version of the process definition for tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<Response> getProcessDefinitionDiagramByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/diagram'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Diagram
  ///
  /// Retrieves the diagram for the latest version of the process definition for tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<MultipartFile?> getProcessDefinitionDiagramByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getProcessDefinitionDiagramByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Process Instance Statistics
  ///
  /// Retrieves runtime statistics of the process engine, grouped by process definitions. These statistics include the number of running process instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [bool] rootIncidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of root incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType` or `incidents`.
  Future<Response> getProcessDefinitionStatisticsWithHttpInfo({ bool? failedJobs, bool? incidents, String? incidentsForType, bool? rootIncidents, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/statistics';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (failedJobs != null) {
      queryParams.addAll(_queryParams('', 'failedJobs', failedJobs));
    }
    if (incidents != null) {
      queryParams.addAll(_queryParams('', 'incidents', incidents));
    }
    if (incidentsForType != null) {
      queryParams.addAll(_queryParams('', 'incidentsForType', incidentsForType));
    }
    if (rootIncidents != null) {
      queryParams.addAll(_queryParams('', 'rootIncidents', rootIncidents));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Process Instance Statistics
  ///
  /// Retrieves runtime statistics of the process engine, grouped by process definitions. These statistics include the number of running process instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
  ///
  /// Parameters:
  ///
  /// * [bool] failedJobs:
  ///   Whether to include the number of failed jobs in the result or not. Valid values are `true` or `false`.
  ///
  /// * [bool] incidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType`.
  ///
  /// * [String] incidentsForType:
  ///   If this property has been set with any incident type (i.e., a string value) the result will only include the number of incidents for the assigned incident type. Cannot be used in combination with `incidents`. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [bool] rootIncidents:
  ///   Valid values for this property are `true` or `false`. If this property has been set to `true` the result will include the corresponding number of root incidents for each occurred incident type. If it is set to `false`, the incidents will not be included in the result. Cannot be used in combination with `incidentsForType` or `incidents`.
  Future<List<ProcessDefinitionStatisticsResultDto>?> getProcessDefinitionStatistics({ bool? failedJobs, bool? incidents, String? incidentsForType, bool? rootIncidents, }) async {
    final response = await getProcessDefinitionStatisticsWithHttpInfo( failedJobs: failedJobs, incidents: incidents, incidentsForType: incidentsForType, rootIncidents: rootIncidents, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProcessDefinitionStatisticsResultDto>') as List)
        .cast<ProcessDefinitionStatisticsResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List
  ///
  /// Queries for process definitions that fulfill given parameters. Parameters may be the properties of  process definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by a comma-separated list of process definition ids.
  ///
  /// * [String] name:
  ///   Filter by process definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] key:
  ///   Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
  ///
  /// * [String] keysIn:
  ///   Filter by a comma-separated list of process definition keys.
  ///
  /// * [String] keyLike:
  ///   Filter by process definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by process definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by process definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by process definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the process definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those process definition resources that the parameter is a substring of.
  ///
  /// * [String] startableBy:
  ///   Filter by a user name who is allowed to start the process.
  ///
  /// * [bool] active:
  ///   Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] includeProcessDefinitionsWithoutTenantId:
  ///   Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tag that the parameter is a substring of.
  ///
  /// * [bool] withoutVersionTag:
  ///   Only include process definitions without a `versionTag`.
  ///
  /// * [bool] startableInTasklist:
  ///   Filter by process definitions which are startable in Tasklist..
  ///
  /// * [bool] notStartableInTasklist:
  ///   Filter by process definitions which are not startable in Tasklist.
  ///
  /// * [bool] startablePermissionCheck:
  ///   Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<Response> getProcessDefinitionsWithHttpInfo({ String? processDefinitionId, String? processDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keysIn, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? startableBy, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? includeProcessDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, bool? withoutVersionTag, bool? startableInTasklist, bool? notStartableInTasklist, bool? startablePermissionCheck, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionIdIn', processDefinitionIdIn));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (deployedAfter != null) {
      queryParams.addAll(_queryParams('', 'deployedAfter', deployedAfter));
    }
    if (deployedAt != null) {
      queryParams.addAll(_queryParams('', 'deployedAt', deployedAt));
    }
    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (keysIn != null) {
      queryParams.addAll(_queryParams('', 'keysIn', keysIn));
    }
    if (keyLike != null) {
      queryParams.addAll(_queryParams('', 'keyLike', keyLike));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryLike != null) {
      queryParams.addAll(_queryParams('', 'categoryLike', categoryLike));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (latestVersion != null) {
      queryParams.addAll(_queryParams('', 'latestVersion', latestVersion));
    }
    if (resourceName != null) {
      queryParams.addAll(_queryParams('', 'resourceName', resourceName));
    }
    if (resourceNameLike != null) {
      queryParams.addAll(_queryParams('', 'resourceNameLike', resourceNameLike));
    }
    if (startableBy != null) {
      queryParams.addAll(_queryParams('', 'startableBy', startableBy));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (incidentId != null) {
      queryParams.addAll(_queryParams('', 'incidentId', incidentId));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeProcessDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeProcessDefinitionsWithoutTenantId', includeProcessDefinitionsWithoutTenantId));
    }
    if (versionTag != null) {
      queryParams.addAll(_queryParams('', 'versionTag', versionTag));
    }
    if (versionTagLike != null) {
      queryParams.addAll(_queryParams('', 'versionTagLike', versionTagLike));
    }
    if (withoutVersionTag != null) {
      queryParams.addAll(_queryParams('', 'withoutVersionTag', withoutVersionTag));
    }
    if (startableInTasklist != null) {
      queryParams.addAll(_queryParams('', 'startableInTasklist', startableInTasklist));
    }
    if (notStartableInTasklist != null) {
      queryParams.addAll(_queryParams('', 'notStartableInTasklist', notStartableInTasklist));
    }
    if (startablePermissionCheck != null) {
      queryParams.addAll(_queryParams('', 'startablePermissionCheck', startablePermissionCheck));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
    }
    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get List
  ///
  /// Queries for process definitions that fulfill given parameters. Parameters may be the properties of  process definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by a comma-separated list of process definition ids.
  ///
  /// * [String] name:
  ///   Filter by process definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] key:
  ///   Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
  ///
  /// * [String] keysIn:
  ///   Filter by a comma-separated list of process definition keys.
  ///
  /// * [String] keyLike:
  ///   Filter by process definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by process definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by process definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by process definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the process definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those process definition resources that the parameter is a substring of.
  ///
  /// * [String] startableBy:
  ///   Filter by a user name who is allowed to start the process.
  ///
  /// * [bool] active:
  ///   Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] includeProcessDefinitionsWithoutTenantId:
  ///   Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tag that the parameter is a substring of.
  ///
  /// * [bool] withoutVersionTag:
  ///   Only include process definitions without a `versionTag`.
  ///
  /// * [bool] startableInTasklist:
  ///   Filter by process definitions which are startable in Tasklist..
  ///
  /// * [bool] notStartableInTasklist:
  ///   Filter by process definitions which are not startable in Tasklist.
  ///
  /// * [bool] startablePermissionCheck:
  ///   Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<List<ProcessDefinitionDto>?> getProcessDefinitions({ String? processDefinitionId, String? processDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keysIn, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? startableBy, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? includeProcessDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, bool? withoutVersionTag, bool? startableInTasklist, bool? notStartableInTasklist, bool? startablePermissionCheck, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getProcessDefinitionsWithHttpInfo( processDefinitionId: processDefinitionId, processDefinitionIdIn: processDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, deployedAfter: deployedAfter, deployedAt: deployedAt, key: key, keysIn: keysIn, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, startableBy: startableBy, active: active, suspended: suspended, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeProcessDefinitionsWithoutTenantId: includeProcessDefinitionsWithoutTenantId, versionTag: versionTag, versionTagLike: versionTagLike, withoutVersionTag: withoutVersionTag, startableInTasklist: startableInTasklist, notStartableInTasklist: notStartableInTasklist, startablePermissionCheck: startablePermissionCheck, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProcessDefinitionDto>') as List)
        .cast<ProcessDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Requests the number of process definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Definitions](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by a comma-separated list of process definition ids.
  ///
  /// * [String] name:
  ///   Filter by process definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] key:
  ///   Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
  ///
  /// * [String] keysIn:
  ///   Filter by a comma-separated list of process definition keys.
  ///
  /// * [String] keyLike:
  ///   Filter by process definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by process definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by process definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by process definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the process definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those process definition resources that the parameter is a substring of.
  ///
  /// * [String] startableBy:
  ///   Filter by a user name who is allowed to start the process.
  ///
  /// * [bool] active:
  ///   Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] includeProcessDefinitionsWithoutTenantId:
  ///   Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tag that the parameter is a substring of.
  ///
  /// * [bool] withoutVersionTag:
  ///   Only include process definitions without a `versionTag`.
  ///
  /// * [bool] startableInTasklist:
  ///   Filter by process definitions which are startable in Tasklist..
  ///
  /// * [bool] notStartableInTasklist:
  ///   Filter by process definitions which are not startable in Tasklist.
  ///
  /// * [bool] startablePermissionCheck:
  ///   Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level
  Future<Response> getProcessDefinitionsCountWithHttpInfo({ String? processDefinitionId, String? processDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keysIn, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? startableBy, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? includeProcessDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, bool? withoutVersionTag, bool? startableInTasklist, bool? notStartableInTasklist, bool? startablePermissionCheck, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionIdIn != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionIdIn', processDefinitionIdIn));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (deploymentId != null) {
      queryParams.addAll(_queryParams('', 'deploymentId', deploymentId));
    }
    if (deployedAfter != null) {
      queryParams.addAll(_queryParams('', 'deployedAfter', deployedAfter));
    }
    if (deployedAt != null) {
      queryParams.addAll(_queryParams('', 'deployedAt', deployedAt));
    }
    if (key != null) {
      queryParams.addAll(_queryParams('', 'key', key));
    }
    if (keysIn != null) {
      queryParams.addAll(_queryParams('', 'keysIn', keysIn));
    }
    if (keyLike != null) {
      queryParams.addAll(_queryParams('', 'keyLike', keyLike));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (categoryLike != null) {
      queryParams.addAll(_queryParams('', 'categoryLike', categoryLike));
    }
    if (version != null) {
      queryParams.addAll(_queryParams('', 'version', version));
    }
    if (latestVersion != null) {
      queryParams.addAll(_queryParams('', 'latestVersion', latestVersion));
    }
    if (resourceName != null) {
      queryParams.addAll(_queryParams('', 'resourceName', resourceName));
    }
    if (resourceNameLike != null) {
      queryParams.addAll(_queryParams('', 'resourceNameLike', resourceNameLike));
    }
    if (startableBy != null) {
      queryParams.addAll(_queryParams('', 'startableBy', startableBy));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (incidentId != null) {
      queryParams.addAll(_queryParams('', 'incidentId', incidentId));
    }
    if (incidentType != null) {
      queryParams.addAll(_queryParams('', 'incidentType', incidentType));
    }
    if (incidentMessage != null) {
      queryParams.addAll(_queryParams('', 'incidentMessage', incidentMessage));
    }
    if (incidentMessageLike != null) {
      queryParams.addAll(_queryParams('', 'incidentMessageLike', incidentMessageLike));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeProcessDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeProcessDefinitionsWithoutTenantId', includeProcessDefinitionsWithoutTenantId));
    }
    if (versionTag != null) {
      queryParams.addAll(_queryParams('', 'versionTag', versionTag));
    }
    if (versionTagLike != null) {
      queryParams.addAll(_queryParams('', 'versionTagLike', versionTagLike));
    }
    if (withoutVersionTag != null) {
      queryParams.addAll(_queryParams('', 'withoutVersionTag', withoutVersionTag));
    }
    if (startableInTasklist != null) {
      queryParams.addAll(_queryParams('', 'startableInTasklist', startableInTasklist));
    }
    if (notStartableInTasklist != null) {
      queryParams.addAll(_queryParams('', 'notStartableInTasklist', notStartableInTasklist));
    }
    if (startablePermissionCheck != null) {
      queryParams.addAll(_queryParams('', 'startablePermissionCheck', startablePermissionCheck));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get List Count
  ///
  /// Requests the number of process definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Definitions](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionIdIn:
  ///   Filter by a comma-separated list of process definition ids.
  ///
  /// * [String] name:
  ///   Filter by process definition name.
  ///
  /// * [String] nameLike:
  ///   Filter by process definition names that the parameter is a substring of.
  ///
  /// * [String] deploymentId:
  ///   Filter by the deployment the id belongs to.
  ///
  /// * [DateTime] deployedAfter:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed after (exclusive) a specific time. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [DateTime] deployedAt:
  ///   Filter by the deploy time of the deployment the process definition belongs to. Only selects process definitions that have been deployed at a specific time (exact match). By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.546+0200`.
  ///
  /// * [String] key:
  ///   Filter by process definition key, i.e., the id in the BPMN 2.0 XML. Exact match.
  ///
  /// * [String] keysIn:
  ///   Filter by a comma-separated list of process definition keys.
  ///
  /// * [String] keyLike:
  ///   Filter by process definition keys that the parameter is a substring of.
  ///
  /// * [String] category:
  ///   Filter by process definition category. Exact match.
  ///
  /// * [String] categoryLike:
  ///   Filter by process definition categories that the parameter is a substring of.
  ///
  /// * [int] version:
  ///   Filter by process definition version.
  ///
  /// * [bool] latestVersion:
  ///   Only include those process definitions that are latest versions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] resourceName:
  ///   Filter by the name of the process definition resource. Exact match.
  ///
  /// * [String] resourceNameLike:
  ///   Filter by names of those process definition resources that the parameter is a substring of.
  ///
  /// * [String] startableBy:
  ///   Filter by a user name who is allowed to start the process.
  ///
  /// * [bool] active:
  ///   Only include active process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended process definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] incidentId:
  ///   Filter by the incident id.
  ///
  /// * [String] incidentType:
  ///   Filter by the incident type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/incidents/#incident-types) for a list of incident types.
  ///
  /// * [String] incidentMessage:
  ///   Filter by the incident message. Exact match.
  ///
  /// * [String] incidentMessageLike:
  ///   Filter by the incident message that the parameter is a substring of.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A process definition must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include process definitions which belong to no tenant. Value may only be true, as false is the default behavior.
  ///
  /// * [bool] includeProcessDefinitionsWithoutTenantId:
  ///   Include process definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] versionTag:
  ///   Filter by the version tag.
  ///
  /// * [String] versionTagLike:
  ///   Filter by the version tag that the parameter is a substring of.
  ///
  /// * [bool] withoutVersionTag:
  ///   Only include process definitions without a `versionTag`.
  ///
  /// * [bool] startableInTasklist:
  ///   Filter by process definitions which are startable in Tasklist..
  ///
  /// * [bool] notStartableInTasklist:
  ///   Filter by process definitions which are not startable in Tasklist.
  ///
  /// * [bool] startablePermissionCheck:
  ///   Filter by process definitions which the user is allowed to start in Tasklist. If the user doesn't have these permissions the result will be empty list. The permissions are: * `CREATE` permission for all Process instances * `CREATE_INSTANCE` and `READ` permission on Process definition level
  Future<CountResultDto?> getProcessDefinitionsCount({ String? processDefinitionId, String? processDefinitionIdIn, String? name, String? nameLike, String? deploymentId, DateTime? deployedAfter, DateTime? deployedAt, String? key, String? keysIn, String? keyLike, String? category, String? categoryLike, int? version, bool? latestVersion, String? resourceName, String? resourceNameLike, String? startableBy, bool? active, bool? suspended, String? incidentId, String? incidentType, String? incidentMessage, String? incidentMessageLike, String? tenantIdIn, bool? withoutTenantId, bool? includeProcessDefinitionsWithoutTenantId, String? versionTag, String? versionTagLike, bool? withoutVersionTag, bool? startableInTasklist, bool? notStartableInTasklist, bool? startablePermissionCheck, }) async {
    final response = await getProcessDefinitionsCountWithHttpInfo( processDefinitionId: processDefinitionId, processDefinitionIdIn: processDefinitionIdIn, name: name, nameLike: nameLike, deploymentId: deploymentId, deployedAfter: deployedAfter, deployedAt: deployedAt, key: key, keysIn: keysIn, keyLike: keyLike, category: category, categoryLike: categoryLike, version: version, latestVersion: latestVersion, resourceName: resourceName, resourceNameLike: resourceNameLike, startableBy: startableBy, active: active, suspended: suspended, incidentId: incidentId, incidentType: incidentType, incidentMessage: incidentMessage, incidentMessageLike: incidentMessageLike, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeProcessDefinitionsWithoutTenantId: includeProcessDefinitionsWithoutTenantId, versionTag: versionTag, versionTagLike: versionTagLike, withoutVersionTag: withoutVersionTag, startableInTasklist: startableInTasklist, notStartableInTasklist: notStartableInTasklist, startablePermissionCheck: startablePermissionCheck, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResultDto',) as CountResultDto;
    
    }
    return null;
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves the rendered form for a process definition. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the rendered start form for.
  Future<Response> getRenderedStartFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/rendered-form'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves the rendered form for a process definition. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the rendered start form for.
  Future<MultipartFile?> getRenderedStartForm(String id,) async {
    final response = await getRenderedStartFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves  the rendered form for the latest version of the process definition which belongs to no tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<Response> getRenderedStartFormByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/rendered-form'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves  the rendered form for the latest version of the process definition which belongs to no tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  Future<MultipartFile?> getRenderedStartFormByKey(String key,) async {
    final response = await getRenderedStartFormByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves  the rendered form for the latest version of the process definition for a tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<Response> getRenderedStartFormByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/rendered-form'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Rendered Start Form
  ///
  /// Retrieves  the rendered form for the latest version of the process definition for a tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<MultipartFile?> getRenderedStartFormByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getRenderedStartFormByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for a process definition. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the start form key for.
  Future<Response> getStartFormWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/startForm'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for a process definition. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to get the start form key for.
  Future<FormDto?> getStartForm(String id,) async {
    final response = await getStartFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return null;
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for the latest version of the process definition which belongs to no tenant. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) for which the form key is to be retrieved.
  Future<Response> getStartFormByKeyWithHttpInfo(String key,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/startForm'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for the latest version of the process definition which belongs to no tenant. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) for which the form key is to be retrieved.
  Future<FormDto?> getStartFormByKey(String key,) async {
    final response = await getStartFormByKeyWithHttpInfo(key,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return null;
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for the latest version of the process definition for a tenant. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) for which the form key is to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<Response> getStartFormByKeyAndTenantIdWithHttpInfo(String key, String tenantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/startForm'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Key
  ///
  /// Retrieves the key of the start form for the latest version of the process definition for a tenant. The form key corresponds to the `FormData#formKey` property in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) for which the form key is to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  Future<FormDto?> getStartFormByKeyAndTenantId(String key, String tenantId,) async {
    final response = await getStartFormByKeyAndTenantIdWithHttpInfo(key, tenantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FormDto',) as FormDto;
    
    }
    return null;
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for a process definition (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to retrieve the variables for.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getStartFormVariablesWithHttpInfo(String id, { String? variableNames, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/form-variables'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableNames != null) {
      queryParams.addAll(_queryParams('', 'variableNames', variableNames));
    }
    if (deserializeValues != null) {
      queryParams.addAll(_queryParams('', 'deserializeValues', deserializeValues));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for a process definition (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to retrieve the variables for.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getStartFormVariables(String id, { String? variableNames, bool? deserializeValues, }) async {
    final response = await getStartFormVariablesWithHttpInfo(id,  variableNames: variableNames, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, VariableValueDto>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, VariableValueDto>'),);

    }
    return null;
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for the latest process definition which belongs to no tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getStartFormVariablesByKeyWithHttpInfo(String key, { String? variableNames, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/form-variables'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableNames != null) {
      queryParams.addAll(_queryParams('', 'variableNames', variableNames));
    }
    if (deserializeValues != null) {
      queryParams.addAll(_queryParams('', 'deserializeValues', deserializeValues));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for the latest process definition which belongs to no tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getStartFormVariablesByKey(String key, { String? variableNames, bool? deserializeValues, }) async {
    final response = await getStartFormVariablesByKeyWithHttpInfo(key,  variableNames: variableNames, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, VariableValueDto>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, VariableValueDto>'),);

    }
    return null;
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for the latest process definition for a tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Response> getStartFormVariablesByKeyAndTenantIdWithHttpInfo(String key, String tenantId, { String? variableNames, bool? deserializeValues, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/form-variables'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (variableNames != null) {
      queryParams.addAll(_queryParams('', 'variableNames', variableNames));
    }
    if (deserializeValues != null) {
      queryParams.addAll(_queryParams('', 'deserializeValues', deserializeValues));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Start Form Variables
  ///
  /// Retrieves the start form variables for the latest process definition for a tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [String] variableNames:
  ///   A comma-separated list of variable names. Allows restricting the list of requested variables to the variable names in the list. It is best practice to restrict the list of variables to the variables actually required by the form in order to minimize fetching of data. If the query parameter is ommitted all variables are fetched. If the query parameter contains non-existent variable names, the variable names are ignored.
  ///
  /// * [bool] deserializeValues:
  ///   Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default true).  If set to true, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](http://jackson.codehaus.org/) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to false, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.  **Note**: While true is the default value for reasons of backward compatibility, we recommend setting this parameter to false when developing web applications that are independent of the Java process applications deployed to the engine.
  Future<Map<String, VariableValueDto>?> getStartFormVariablesByKeyAndTenantId(String key, String tenantId, { String? variableNames, bool? deserializeValues, }) async {
    final response = await getStartFormVariablesByKeyAndTenantIdWithHttpInfo(key, tenantId,  variableNames: variableNames, deserializeValues: deserializeValues, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, VariableValueDto>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, VariableValueDto>'),);

    }
    return null;
  }

  /// Get Static Called Process Definitions
  ///
  /// For the given process, returns a list of called process definitions corresponding to the `CalledProcessDefinition` interface in the engine. The list contains all process definitions that are referenced statically by call activities in the given process. This endpoint does not resolve process definitions that are referenced with expressions. Each called process definition contains a list of call activity ids, which specifies the call activities that are calling that process. This endpoint does not resolve references to case definitions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<Response> getStaticCalledProcessDefinitionsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/static-called-process-definitions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Static Called Process Definitions
  ///
  /// For the given process, returns a list of called process definitions corresponding to the `CalledProcessDefinition` interface in the engine. The list contains all process definitions that are referenced statically by call activities in the given process. This endpoint does not resolve process definitions that are referenced with expressions. Each called process definition contains a list of call activity ids, which specifies the call activities that are calling that process. This endpoint does not resolve references to case definitions.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition.
  Future<List<CalledProcessDefinitionDto>?> getStaticCalledProcessDefinitions(String id,) async {
    final response = await getStaticCalledProcessDefinitionsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CalledProcessDefinitionDto>') as List)
        .cast<CalledProcessDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Restart Process Instance
  ///
  /// Restarts process instances that were canceled or terminated synchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance Async](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-async/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition of the process instances to restart.
  ///
  /// * [RestartProcessInstanceDto] restartProcessInstanceDto:
  Future<Response> restartProcessInstanceWithHttpInfo(String id, { RestartProcessInstanceDto? restartProcessInstanceDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/restart'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = restartProcessInstanceDto;

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

  /// Restart Process Instance
  ///
  /// Restarts process instances that were canceled or terminated synchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance Async](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-async/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition of the process instances to restart.
  ///
  /// * [RestartProcessInstanceDto] restartProcessInstanceDto:
  Future<void> restartProcessInstance(String id, { RestartProcessInstanceDto? restartProcessInstanceDto, }) async {
    final response = await restartProcessInstanceWithHttpInfo(id,  restartProcessInstanceDto: restartProcessInstanceDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restart Process Instance Async
  ///
  /// Restarts process instances that were canceled or terminated asynchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-sync/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition of the process instances to restart.
  ///
  /// * [RestartProcessInstanceDto] restartProcessInstanceDto:
  Future<Response> restartProcessInstanceAsyncOperationWithHttpInfo(String id, { RestartProcessInstanceDto? restartProcessInstanceDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/restart-async'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = restartProcessInstanceDto;

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

  /// Restart Process Instance Async
  ///
  /// Restarts process instances that were canceled or terminated asynchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-sync/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition of the process instances to restart.
  ///
  /// * [RestartProcessInstanceDto] restartProcessInstanceDto:
  Future<BatchDto?> restartProcessInstanceAsyncOperation(String id, { RestartProcessInstanceDto? restartProcessInstanceDto, }) async {
    final response = await restartProcessInstanceAsyncOperationWithHttpInfo(id,  restartProcessInstanceDto: restartProcessInstanceDto, );
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

  /// Start Instance
  ///
  /// Instantiates a given process definition. Process variables and business key may be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be retrieved.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<Response> startProcessInstanceWithHttpInfo(String id, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/start'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceDto;

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

  /// Start Instance
  ///
  /// Instantiates a given process definition. Process variables and business key may be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to be retrieved.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<ProcessInstanceWithVariablesDto?> startProcessInstance(String id, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    final response = await startProcessInstanceWithHttpInfo(id,  startProcessInstanceDto: startProcessInstanceDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceWithVariablesDto',) as ProcessInstanceWithVariablesDto;
    
    }
    return null;
  }

  /// Start Instance
  ///
  /// Instantiates a given process definition, starts the latest version of the process definition which belongs to no tenant. Process variables and business key may be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<Response> startProcessInstanceByKeyWithHttpInfo(String key, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/start'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceDto;

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

  /// Start Instance
  ///
  /// Instantiates a given process definition, starts the latest version of the process definition which belongs to no tenant. Process variables and business key may be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<ProcessInstanceWithVariablesDto?> startProcessInstanceByKey(String key, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    final response = await startProcessInstanceByKeyWithHttpInfo(key,  startProcessInstanceDto: startProcessInstanceDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceWithVariablesDto',) as ProcessInstanceWithVariablesDto;
    
    }
    return null;
  }

  /// Start Instance
  ///
  /// Instantiates a given process definition, starts the latest version of the process definition for tenant. Process variables and business key may be supplied in the request body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<Response> startProcessInstanceByKeyAndTenantIdWithHttpInfo(String key, String tenantId, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/start'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceDto;

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

  /// Start Instance
  ///
  /// Instantiates a given process definition, starts the latest version of the process definition for tenant. Process variables and business key may be supplied in the request body.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be retrieved.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [StartProcessInstanceDto] startProcessInstanceDto:
  Future<ProcessInstanceWithVariablesDto?> startProcessInstanceByKeyAndTenantId(String key, String tenantId, { StartProcessInstanceDto? startProcessInstanceDto, }) async {
    final response = await startProcessInstanceByKeyAndTenantIdWithHttpInfo(key, tenantId,  startProcessInstanceDto: startProcessInstanceDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceWithVariablesDto',) as ProcessInstanceWithVariablesDto;
    
    }
    return null;
  }

  /// Submit Start Form
  ///
  /// Starts a process instance using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to submit the form for.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<Response> submitFormWithHttpInfo(String id, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/submit-form'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceFormDto;

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

  /// Submit Start Form
  ///
  /// Starts a process instance using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to submit the form for.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<ProcessInstanceDto?> submitForm(String id, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    final response = await submitFormWithHttpInfo(id,  startProcessInstanceFormDto: startProcessInstanceFormDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceDto',) as ProcessInstanceDto;
    
    }
    return null;
  }

  /// Submit Start Form
  ///
  /// Starts the latest version of the process definition which belongs to no tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to submit the form for.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<Response> submitFormByKeyWithHttpInfo(String key, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/submit-form'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceFormDto;

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

  /// Submit Start Form
  ///
  /// Starts the latest version of the process definition which belongs to no tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to submit the form for.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<ProcessInstanceDto?> submitFormByKey(String key, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    final response = await submitFormByKeyWithHttpInfo(key,  startProcessInstanceFormDto: startProcessInstanceFormDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceDto',) as ProcessInstanceDto;
    
    }
    return null;
  }

  /// Submit Start Form
  ///
  /// Starts the latest version of the process definition for a tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to submit the form for.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<Response> submitFormByKeyAndTenantIdWithHttpInfo(String key, String tenantId, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/submit-form'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = startProcessInstanceFormDto;

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

  /// Submit Start Form
  ///
  /// Starts the latest version of the process definition for a tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to submit the form for.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [StartProcessInstanceFormDto] startProcessInstanceFormDto:
  Future<ProcessInstanceDto?> submitFormByKeyAndTenantId(String key, String tenantId, { StartProcessInstanceFormDto? startProcessInstanceFormDto, }) async {
    final response = await submitFormByKeyAndTenantIdWithHttpInfo(key, tenantId,  startProcessInstanceFormDto: startProcessInstanceFormDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProcessInstanceDto',) as ProcessInstanceDto;
    
    }
    return null;
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for process definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByProcessDefinitionIdWithHttpInfo(String id, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/history-time-to-live'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for process definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByProcessDefinitionId(String id, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByProcessDefinitionIdWithHttpInfo(id,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for the latest version of the process definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByProcessDefinitionKeyWithHttpInfo(String key, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/history-time-to-live'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for the latest version of the process definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to change history time to live.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByProcessDefinitionKey(String key, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByProcessDefinitionKeyWithHttpInfo(key,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for the latest version of the process definition for a tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to change history time to live.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<Response> updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantIdWithHttpInfo(String key, String tenantId, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/history-time-to-live'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = historyTimeToLiveDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update History Time to Live
  ///
  /// Updates history time to live for the latest version of the process definition for a tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition to change history time to live.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [HistoryTimeToLiveDto] historyTimeToLiveDto:
  Future<void> updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId(String key, String tenantId, { HistoryTimeToLiveDto? historyTimeToLiveDto, }) async {
    final response = await updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantIdWithHttpInfo(key, tenantId,  historyTimeToLiveDto: historyTimeToLiveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend By Key
  ///
  /// Activates or suspends process definitions with the given process definition key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed property is `processDefinitionId`.
  Future<Response> updateProcessDefinitionSuspensionStateWithHttpInfo({ ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/suspended';

    // ignore: prefer_final_locals
    Object? postBody = processDefinitionSuspensionStateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Activate/Suspend By Key
  ///
  /// Activates or suspends process definitions with the given process definition key.
  ///
  /// Parameters:
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed property is `processDefinitionId`.
  Future<void> updateProcessDefinitionSuspensionState({ ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    final response = await updateProcessDefinitionSuspensionStateWithHttpInfo( processDefinitionSuspensionStateDto: processDefinitionSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend By Id
  ///
  /// Activates or suspends a given process definition by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to activate or suspend.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<Response> updateProcessDefinitionSuspensionStateByIdWithHttpInfo(String id, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/{id}/suspended'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = processDefinitionSuspensionStateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Activate/Suspend By Id
  ///
  /// Activates or suspends a given process definition by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the process definition to activate or suspend.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<void> updateProcessDefinitionSuspensionStateById(String id, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    final response = await updateProcessDefinitionSuspensionStateByIdWithHttpInfo(id,  processDefinitionSuspensionStateDto: processDefinitionSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend by Id
  ///
  /// Activates or suspends a given process definition by latest version of process definition key which belongs to no tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be activated/suspended.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<Response> updateProcessDefinitionSuspensionStateByKeyWithHttpInfo(String key, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/suspended'
      .replaceAll('{key}', key);

    // ignore: prefer_final_locals
    Object? postBody = processDefinitionSuspensionStateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Activate/Suspend by Id
  ///
  /// Activates or suspends a given process definition by latest version of process definition key which belongs to no tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be activated/suspended.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<void> updateProcessDefinitionSuspensionStateByKey(String key, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    final response = await updateProcessDefinitionSuspensionStateByKeyWithHttpInfo(key,  processDefinitionSuspensionStateDto: processDefinitionSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend by Id
  ///
  /// Activates or suspends a given process definition by the latest version of the process definition for tenant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be activated/suspended.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<Response> updateProcessDefinitionSuspensionStateByKeyAndTenantIdWithHttpInfo(String key, String tenantId, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/process-definition/key/{key}/tenant-id/{tenant-id}/suspended'
      .replaceAll('{key}', key)
      .replaceAll('{tenant-id}', tenantId);

    // ignore: prefer_final_locals
    Object? postBody = processDefinitionSuspensionStateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Activate/Suspend by Id
  ///
  /// Activates or suspends a given process definition by the latest version of the process definition for tenant.
  ///
  /// Parameters:
  ///
  /// * [String] key (required):
  ///   The key of the process definition (the latest version thereof) to be activated/suspended.
  ///
  /// * [String] tenantId (required):
  ///   The id of the tenant the process definition belongs to.
  ///
  /// * [ProcessDefinitionSuspensionStateDto] processDefinitionSuspensionStateDto:
  ///   **Note**: Unallowed properties are `processDefinitionId` and `processDefinitionKey`.
  Future<void> updateProcessDefinitionSuspensionStateByKeyAndTenantId(String key, String tenantId, { ProcessDefinitionSuspensionStateDto? processDefinitionSuspensionStateDto, }) async {
    final response = await updateProcessDefinitionSuspensionStateByKeyAndTenantIdWithHttpInfo(key, tenantId,  processDefinitionSuspensionStateDto: processDefinitionSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
