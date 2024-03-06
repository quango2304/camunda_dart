//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class JobDefinitionApi {
  JobDefinitionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Job Definition
  ///
  /// Retrieves a job definition by id, according to the `JobDefinition` interface in the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be retrieved.
  Future<Response> getJobDefinitionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/{id}'
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

  /// Get Job Definition
  ///
  /// Retrieves a job definition by id, according to the `JobDefinition` interface in the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be retrieved.
  Future<JobDefinitionDto?> getJobDefinition(String id,) async {
    final response = await getJobDefinitionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JobDefinitionDto',) as JobDefinitionDto;
    
    }
    return null;
  }

  /// Get Job Definitions
  ///
  /// Queries for job definitions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] activityIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated activity ids.
  ///
  /// * [String] processDefinitionId:
  ///   Only include job definitions which exist for the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Only include job definitions which exist for the given process definition key.
  ///
  /// * [String] jobType:
  ///   Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  ///
  /// * [String] jobConfiguration:
  ///   Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
  ///
  /// * [bool] active:
  ///   Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withOverridingJobPriority:
  ///   Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
  ///
  /// * [String] tenantIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobDefinitionsWithoutTenantId:
  ///   Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getJobDefinitionsWithHttpInfo({ String? jobDefinitionId, String? activityIdIn, String? processDefinitionId, String? processDefinitionKey, String? jobType, String? jobConfiguration, bool? active, bool? suspended, bool? withOverridingJobPriority, String? tenantIdIn, bool? withoutTenantId, bool? includeJobDefinitionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (jobType != null) {
      queryParams.addAll(_queryParams('', 'jobType', jobType));
    }
    if (jobConfiguration != null) {
      queryParams.addAll(_queryParams('', 'jobConfiguration', jobConfiguration));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (withOverridingJobPriority != null) {
      queryParams.addAll(_queryParams('', 'withOverridingJobPriority', withOverridingJobPriority));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeJobDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeJobDefinitionsWithoutTenantId', includeJobDefinitionsWithoutTenantId));
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

  /// Get Job Definitions
  ///
  /// Queries for job definitions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] activityIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated activity ids.
  ///
  /// * [String] processDefinitionId:
  ///   Only include job definitions which exist for the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Only include job definitions which exist for the given process definition key.
  ///
  /// * [String] jobType:
  ///   Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  ///
  /// * [String] jobConfiguration:
  ///   Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
  ///
  /// * [bool] active:
  ///   Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withOverridingJobPriority:
  ///   Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
  ///
  /// * [String] tenantIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobDefinitionsWithoutTenantId:
  ///   Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<JobDefinitionDto>?> getJobDefinitions({ String? jobDefinitionId, String? activityIdIn, String? processDefinitionId, String? processDefinitionKey, String? jobType, String? jobConfiguration, bool? active, bool? suspended, bool? withOverridingJobPriority, String? tenantIdIn, bool? withoutTenantId, bool? includeJobDefinitionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getJobDefinitionsWithHttpInfo( jobDefinitionId: jobDefinitionId, activityIdIn: activityIdIn, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, jobType: jobType, jobConfiguration: jobConfiguration, active: active, suspended: suspended, withOverridingJobPriority: withOverridingJobPriority, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeJobDefinitionsWithoutTenantId: includeJobDefinitionsWithoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<JobDefinitionDto>') as List)
        .cast<JobDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Job Definition Count
  ///
  /// Queries for the number of job definitions that fulfill given parameters. Takes the same parameters as the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] activityIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated activity ids.
  ///
  /// * [String] processDefinitionId:
  ///   Only include job definitions which exist for the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Only include job definitions which exist for the given process definition key.
  ///
  /// * [String] jobType:
  ///   Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  ///
  /// * [String] jobConfiguration:
  ///   Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
  ///
  /// * [bool] active:
  ///   Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withOverridingJobPriority:
  ///   Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
  ///
  /// * [String] tenantIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobDefinitionsWithoutTenantId:
  ///   Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getJobDefinitionsCountWithHttpInfo({ String? jobDefinitionId, String? activityIdIn, String? processDefinitionId, String? processDefinitionKey, String? jobType, String? jobConfiguration, bool? active, bool? suspended, bool? withOverridingJobPriority, String? tenantIdIn, bool? withoutTenantId, bool? includeJobDefinitionsWithoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (jobDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'jobDefinitionId', jobDefinitionId));
    }
    if (activityIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityIdIn', activityIdIn));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (jobType != null) {
      queryParams.addAll(_queryParams('', 'jobType', jobType));
    }
    if (jobConfiguration != null) {
      queryParams.addAll(_queryParams('', 'jobConfiguration', jobConfiguration));
    }
    if (active != null) {
      queryParams.addAll(_queryParams('', 'active', active));
    }
    if (suspended != null) {
      queryParams.addAll(_queryParams('', 'suspended', suspended));
    }
    if (withOverridingJobPriority != null) {
      queryParams.addAll(_queryParams('', 'withOverridingJobPriority', withOverridingJobPriority));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeJobDefinitionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeJobDefinitionsWithoutTenantId', includeJobDefinitionsWithoutTenantId));
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

  /// Get Job Definition Count
  ///
  /// Queries for the number of job definitions that fulfill given parameters. Takes the same parameters as the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] jobDefinitionId:
  ///   Filter by job definition id.
  ///
  /// * [String] activityIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated activity ids.
  ///
  /// * [String] processDefinitionId:
  ///   Only include job definitions which exist for the given process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Only include job definitions which exist for the given process definition key.
  ///
  /// * [String] jobType:
  ///   Only include job definitions which exist for the given job type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#job-creation) for more information about job types.
  ///
  /// * [String] jobConfiguration:
  ///   Only include job definitions which exist for the given job configuration. For example: for timer jobs it is the timer configuration.
  ///
  /// * [bool] active:
  ///   Only include active job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] suspended:
  ///   Only include suspended job definitions. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withOverridingJobPriority:
  ///   Only include job definitions that have an overriding job priority defined. The only effective value is `true`. If set to `false`, this filter is not applied.
  ///
  /// * [String] tenantIdIn:
  ///   Only include job definitions which belong to one of the passed and comma-separated tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include job definitions which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeJobDefinitionsWithoutTenantId:
  ///   Include job definitions which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getJobDefinitionsCount({ String? jobDefinitionId, String? activityIdIn, String? processDefinitionId, String? processDefinitionKey, String? jobType, String? jobConfiguration, bool? active, bool? suspended, bool? withOverridingJobPriority, String? tenantIdIn, bool? withoutTenantId, bool? includeJobDefinitionsWithoutTenantId, }) async {
    final response = await getJobDefinitionsCountWithHttpInfo( jobDefinitionId: jobDefinitionId, activityIdIn: activityIdIn, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, jobType: jobType, jobConfiguration: jobConfiguration, active: active, suspended: suspended, withOverridingJobPriority: withOverridingJobPriority, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeJobDefinitionsWithoutTenantId: includeJobDefinitionsWithoutTenantId, );
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

  /// Get Job Definitions (POST)
  ///
  /// Queries for job definitions that fulfill given parameters. This method is slightly more powerful than the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method because it allows filtering by multiple job definitions of types `String`, `Number` or `Boolean`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [JobDefinitionQueryDto] jobDefinitionQueryDto:
  Future<Response> queryJobDefinitionsWithHttpInfo({ int? firstResult, int? maxResults, JobDefinitionQueryDto? jobDefinitionQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition';

    // ignore: prefer_final_locals
    Object? postBody = jobDefinitionQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

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

  /// Get Job Definitions (POST)
  ///
  /// Queries for job definitions that fulfill given parameters. This method is slightly more powerful than the [Get Job Definitions](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query/) method because it allows filtering by multiple job definitions of types `String`, `Number` or `Boolean`.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [JobDefinitionQueryDto] jobDefinitionQueryDto:
  Future<List<JobDefinitionDto>?> queryJobDefinitions({ int? firstResult, int? maxResults, JobDefinitionQueryDto? jobDefinitionQueryDto, }) async {
    final response = await queryJobDefinitionsWithHttpInfo( firstResult: firstResult, maxResults: maxResults, jobDefinitionQueryDto: jobDefinitionQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<JobDefinitionDto>') as List)
        .cast<JobDefinitionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Job Definition Count (POST)
  ///
  /// Queries for the number of job definitions that fulfill given parameters. This method takes the same message body as the [Get Job Definitions (POST)](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/post-query/) method and therefore it is slightly more powerful than the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JobDefinitionQueryDto] jobDefinitionQueryDto:
  Future<Response> queryJobDefinitionsCountWithHttpInfo({ JobDefinitionQueryDto? jobDefinitionQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/count';

    // ignore: prefer_final_locals
    Object? postBody = jobDefinitionQueryDto;

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

  /// Get Job Definition Count (POST)
  ///
  /// Queries for the number of job definitions that fulfill given parameters. This method takes the same message body as the [Get Job Definitions (POST)](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/post-query/) method and therefore it is slightly more powerful than the [Get Job Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/job-definition/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [JobDefinitionQueryDto] jobDefinitionQueryDto:
  Future<CountResultDto?> queryJobDefinitionsCount({ JobDefinitionQueryDto? jobDefinitionQueryDto, }) async {
    final response = await queryJobDefinitionsCountWithHttpInfo( jobDefinitionQueryDto: jobDefinitionQueryDto, );
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

  /// Set Job Definition Priority by Id
  ///
  /// Sets an overriding execution priority for jobs with the given definition id. Optionally, the priorities of all the definitions' existing jobs are updated accordingly. The priority can be reset by setting it to `null`, meaning that a new job's priority will not be determined based on its definition's priority any longer. See the [user guide on job prioritization](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#set-job-definition-priorities-via-managementservice-api) for details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be updated.
  ///
  /// * [JobDefinitionPriorityDto] jobDefinitionPriorityDto:
  Future<Response> setJobPriorityJobDefinitionWithHttpInfo(String id, { JobDefinitionPriorityDto? jobDefinitionPriorityDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/{id}/jobPriority'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobDefinitionPriorityDto;

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

  /// Set Job Definition Priority by Id
  ///
  /// Sets an overriding execution priority for jobs with the given definition id. Optionally, the priorities of all the definitions' existing jobs are updated accordingly. The priority can be reset by setting it to `null`, meaning that a new job's priority will not be determined based on its definition's priority any longer. See the [user guide on job prioritization](https://docs.camunda.org/manual/7.20/user-guide/process-engine/the-job-executor/#set-job-definition-priorities-via-managementservice-api) for details.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be updated.
  ///
  /// * [JobDefinitionPriorityDto] jobDefinitionPriorityDto:
  Future<void> setJobPriorityJobDefinition(String id, { JobDefinitionPriorityDto? jobDefinitionPriorityDto, }) async {
    final response = await setJobPriorityJobDefinitionWithHttpInfo(id,  jobDefinitionPriorityDto: jobDefinitionPriorityDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set Job Retries By Job Definition Id
  ///
  /// Sets the number of retries of all **failed** jobs associated with the given job definition id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be updated.
  ///
  /// * [RetriesDto] retriesDto:
  Future<Response> setJobRetriesJobDefinitionWithHttpInfo(String id, { RetriesDto? retriesDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/{id}/retries'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = retriesDto;

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

  /// Set Job Retries By Job Definition Id
  ///
  /// Sets the number of retries of all **failed** jobs associated with the given job definition id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to be updated.
  ///
  /// * [RetriesDto] retriesDto:
  Future<void> setJobRetriesJobDefinition(String id, { RetriesDto? retriesDto, }) async {
    final response = await setJobRetriesJobDefinitionWithHttpInfo(id,  retriesDto: retriesDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend Job Definition By Id
  ///
  /// Activates or suspends a given job definition by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to activate or suspend.
  ///
  /// * [JobDefinitionSuspensionStateDto] jobDefinitionSuspensionStateDto:
  Future<Response> updateSuspensionStateJobDefinitionWithHttpInfo(String id, { JobDefinitionSuspensionStateDto? jobDefinitionSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/{id}/suspended'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = jobDefinitionSuspensionStateDto;

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

  /// Activate/Suspend Job Definition By Id
  ///
  /// Activates or suspends a given job definition by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the job definition to activate or suspend.
  ///
  /// * [JobDefinitionSuspensionStateDto] jobDefinitionSuspensionStateDto:
  Future<void> updateSuspensionStateJobDefinition(String id, { JobDefinitionSuspensionStateDto? jobDefinitionSuspensionStateDto, }) async {
    final response = await updateSuspensionStateJobDefinitionWithHttpInfo(id,  jobDefinitionSuspensionStateDto: jobDefinitionSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Activate/Suspend Job Definitions
  ///
  /// Activates or suspends job definitions with the given process definition id or process definition key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JobDefinitionsSuspensionStateDto] jobDefinitionsSuspensionStateDto:
  Future<Response> updateSuspensionStateJobDefinitionsWithHttpInfo({ JobDefinitionsSuspensionStateDto? jobDefinitionsSuspensionStateDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/job-definition/suspended';

    // ignore: prefer_final_locals
    Object? postBody = jobDefinitionsSuspensionStateDto;

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

  /// Activate/Suspend Job Definitions
  ///
  /// Activates or suspends job definitions with the given process definition id or process definition key.
  ///
  /// Parameters:
  ///
  /// * [JobDefinitionsSuspensionStateDto] jobDefinitionsSuspensionStateDto:
  Future<void> updateSuspensionStateJobDefinitions({ JobDefinitionsSuspensionStateDto? jobDefinitionsSuspensionStateDto, }) async {
    final response = await updateSuspensionStateJobDefinitionsWithHttpInfo( jobDefinitionsSuspensionStateDto: jobDefinitionsSuspensionStateDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
