//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeploymentApi {
  DeploymentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create
  ///
  /// Creates a deployment.  **Security Consideration**  Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///   The tenant id for the deployment to be created.
  ///
  /// * [String] deploymentSource:
  ///   The source for the deployment to be created.
  ///
  /// * [bool] deployChangedOnly:
  ///   A flag indicating whether the process engine should perform duplicate checking on a per-resource basis. If set to true, only those resources that have actually changed are deployed. Checks are made against resources included previous deployments of the same name and only against the latest versions of those resources. If set to true, the option enable-duplicate-filtering is overridden and set to true.
  ///
  /// * [bool] enableDuplicateFiltering:
  ///   A flag indicating whether the process engine should perform duplicate checking for the deployment or not. This allows you to check if a deployment with the same name and the same resouces already exists and if true, not create a new deployment but instead return the existing deployment. The default value is false.
  ///
  /// * [String] deploymentName:
  ///   The name for the deployment to be created.
  ///
  /// * [DateTime] deploymentActivationTime:
  ///   Sets the date on which the process definitions contained in this deployment will be activated. This means that all process definitions will be deployed as usual, but they will be suspended from the start until the given activation date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to create the deployment resource. It is possible to have more than one form part with different form part names for the binary data to create a deployment.
  Future<Response> createDeploymentWithHttpInfo({ String? tenantId, String? deploymentSource, bool? deployChangedOnly, bool? enableDuplicateFiltering, String? deploymentName, DateTime? deploymentActivationTime, MultipartFile? data, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/create';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (tenantId != null) {
      hasFields = true;
      mp.fields[r'tenant-id'] = parameterToString(tenantId);
    }
    if (deploymentSource != null) {
      hasFields = true;
      mp.fields[r'deployment-source'] = parameterToString(deploymentSource);
    }
    if (deployChangedOnly != null) {
      hasFields = true;
      mp.fields[r'deploy-changed-only'] = parameterToString(deployChangedOnly);
    }
    if (enableDuplicateFiltering != null) {
      hasFields = true;
      mp.fields[r'enable-duplicate-filtering'] = parameterToString(enableDuplicateFiltering);
    }
    if (deploymentName != null) {
      hasFields = true;
      mp.fields[r'deployment-name'] = parameterToString(deploymentName);
    }
    if (deploymentActivationTime != null) {
      hasFields = true;
      mp.fields[r'deployment-activation-time'] = parameterToString(deploymentActivationTime);
    }
    if (data != null) {
      hasFields = true;
      mp.fields[r'data'] = data.field;
      mp.files.add(data);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Create
  ///
  /// Creates a deployment.  **Security Consideration**  Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code.
  ///
  /// Parameters:
  ///
  /// * [String] tenantId:
  ///   The tenant id for the deployment to be created.
  ///
  /// * [String] deploymentSource:
  ///   The source for the deployment to be created.
  ///
  /// * [bool] deployChangedOnly:
  ///   A flag indicating whether the process engine should perform duplicate checking on a per-resource basis. If set to true, only those resources that have actually changed are deployed. Checks are made against resources included previous deployments of the same name and only against the latest versions of those resources. If set to true, the option enable-duplicate-filtering is overridden and set to true.
  ///
  /// * [bool] enableDuplicateFiltering:
  ///   A flag indicating whether the process engine should perform duplicate checking for the deployment or not. This allows you to check if a deployment with the same name and the same resouces already exists and if true, not create a new deployment but instead return the existing deployment. The default value is false.
  ///
  /// * [String] deploymentName:
  ///   The name for the deployment to be created.
  ///
  /// * [DateTime] deploymentActivationTime:
  ///   Sets the date on which the process definitions contained in this deployment will be activated. This means that all process definitions will be deployed as usual, but they will be suspended from the start until the given activation date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [MultipartFile] data:
  ///   The binary data to create the deployment resource. It is possible to have more than one form part with different form part names for the binary data to create a deployment.
  Future<DeploymentWithDefinitionsDto?> createDeployment({ String? tenantId, String? deploymentSource, bool? deployChangedOnly, bool? enableDuplicateFiltering, String? deploymentName, DateTime? deploymentActivationTime, MultipartFile? data, }) async {
    final response = await createDeploymentWithHttpInfo( tenantId: tenantId, deploymentSource: deploymentSource, deployChangedOnly: deployChangedOnly, enableDuplicateFiltering: enableDuplicateFiltering, deploymentName: deploymentName, deploymentActivationTime: deploymentActivationTime, data: data, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentWithDefinitionsDto',) as DeploymentWithDefinitionsDto;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Deletes a deployment by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this deployment should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   `true`, if all input/output mappings should not be invoked.
  Future<Response> deleteDeploymentWithHttpInfo(String id, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}'
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
  /// Deletes a deployment by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to be deleted.
  ///
  /// * [bool] cascade:
  ///   `true`, if all process instances, historic process instances and jobs for this deployment should be deleted.
  ///
  /// * [bool] skipCustomListeners:
  ///   `true`, if only the built-in ExecutionListeners should be notified with the end event.
  ///
  /// * [bool] skipIoMappings:
  ///   `true`, if all input/output mappings should not be invoked.
  Future<void> deleteDeployment(String id, { bool? cascade, bool? skipCustomListeners, bool? skipIoMappings, }) async {
    final response = await deleteDeploymentWithHttpInfo(id,  cascade: cascade, skipCustomListeners: skipCustomListeners, skipIoMappings: skipIoMappings, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Retrieves a deployment by id, according to the `Deployment` interface of the engine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment.
  Future<Response> getDeploymentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}'
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
  /// Retrieves a deployment by id, according to the `Deployment` interface of the engine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment.
  Future<DeploymentDto?> getDeployment(String id,) async {
    final response = await getDeploymentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentDto',) as DeploymentDto;
    
    }
    return null;
  }

  /// Get Resource
  ///
  /// Retrieves a deployment resource by resource id for the given deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment
  ///
  /// * [String] resourceId (required):
  ///   The id of the deployment resource
  Future<Response> getDeploymentResourceWithHttpInfo(String id, String resourceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}/resources/{resourceId}'
      .replaceAll('{id}', id)
      .replaceAll('{resourceId}', resourceId);

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

  /// Get Resource
  ///
  /// Retrieves a deployment resource by resource id for the given deployment.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment
  ///
  /// * [String] resourceId (required):
  ///   The id of the deployment resource
  Future<DeploymentResourceDto?> getDeploymentResource(String id, String resourceId,) async {
    final response = await getDeploymentResourceWithHttpInfo(id, resourceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentResourceDto',) as DeploymentResourceDto;
    
    }
    return null;
  }

  /// Get Resource (Binary)
  ///
  /// Retrieves the binary content of a deployment resource for the given deployment by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment.
  ///
  /// * [String] resourceId (required):
  ///   The id of the deployment resource.
  Future<Response> getDeploymentResourceDataWithHttpInfo(String id, String resourceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}/resources/{resourceId}/data'
      .replaceAll('{id}', id)
      .replaceAll('{resourceId}', resourceId);

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

  /// Get Resource (Binary)
  ///
  /// Retrieves the binary content of a deployment resource for the given deployment by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment.
  ///
  /// * [String] resourceId (required):
  ///   The id of the deployment resource.
  Future<MultipartFile?> getDeploymentResourceData(String id, String resourceId,) async {
    final response = await getDeploymentResourceDataWithHttpInfo(id, resourceId,);
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

  /// Get Resources
  ///
  /// Retrieves all deployment resources of a given deployment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to retrieve the deployment resources for.
  Future<Response> getDeploymentResourcesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}/resources'
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

  /// Get Resources
  ///
  /// Retrieves all deployment resources of a given deployment.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to retrieve the deployment resources for.
  Future<List<DeploymentResourceDto>?> getDeploymentResources(String id,) async {
    final response = await getDeploymentResourcesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DeploymentResourceDto>') as List)
        .cast<DeploymentResourceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List
  ///
  /// Queries for deployments that fulfill given parameters. Parameters may be the properties of deployments, such as the id or name or a range of the deployment time. The size of the result set can be retrieved by using the [Get Deployment count](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by deployment id
  ///
  /// * [String] name:
  ///   Filter by the deployment name. Exact match.
  ///
  /// * [String] nameLike:
  ///   Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] source_:
  ///   Filter by the deployment source.
  ///
  /// * [bool] withoutSource:
  ///   Filter by the deployment source whereby source is equal to `null`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDeploymentsWithoutTenantId:
  ///   Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] after:
  ///   Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] before:
  ///   Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  Future<Response> getDeploymentsWithHttpInfo({ String? id, String? name, String? nameLike, String? source_, bool? withoutSource, String? tenantIdIn, bool? withoutTenantId, bool? includeDeploymentsWithoutTenantId, DateTime? after, DateTime? before, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (withoutSource != null) {
      queryParams.addAll(_queryParams('', 'withoutSource', withoutSource));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDeploymentsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDeploymentsWithoutTenantId', includeDeploymentsWithoutTenantId));
    }
    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
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
  /// Queries for deployments that fulfill given parameters. Parameters may be the properties of deployments, such as the id or name or a range of the deployment time. The size of the result set can be retrieved by using the [Get Deployment count](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by deployment id
  ///
  /// * [String] name:
  ///   Filter by the deployment name. Exact match.
  ///
  /// * [String] nameLike:
  ///   Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] source_:
  ///   Filter by the deployment source.
  ///
  /// * [bool] withoutSource:
  ///   Filter by the deployment source whereby source is equal to `null`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDeploymentsWithoutTenantId:
  ///   Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] after:
  ///   Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] before:
  ///   Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
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
  Future<List<DeploymentDto>?> getDeployments({ String? id, String? name, String? nameLike, String? source_, bool? withoutSource, String? tenantIdIn, bool? withoutTenantId, bool? includeDeploymentsWithoutTenantId, DateTime? after, DateTime? before, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getDeploymentsWithHttpInfo( id: id, name: name, nameLike: nameLike, source_: source_, withoutSource: withoutSource, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDeploymentsWithoutTenantId: includeDeploymentsWithoutTenantId, after: after, before: before, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DeploymentDto>') as List)
        .cast<DeploymentDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Deployments](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by deployment id
  ///
  /// * [String] name:
  ///   Filter by the deployment name. Exact match.
  ///
  /// * [String] nameLike:
  ///   Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] source_:
  ///   Filter by the deployment source.
  ///
  /// * [bool] withoutSource:
  ///   Filter by the deployment source whereby source is equal to `null`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDeploymentsWithoutTenantId:
  ///   Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] after:
  ///   Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] before:
  ///   Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  Future<Response> getDeploymentsCountWithHttpInfo({ String? id, String? name, String? nameLike, String? source_, bool? withoutSource, String? tenantIdIn, bool? withoutTenantId, bool? includeDeploymentsWithoutTenantId, DateTime? after, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (nameLike != null) {
      queryParams.addAll(_queryParams('', 'nameLike', nameLike));
    }
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (withoutSource != null) {
      queryParams.addAll(_queryParams('', 'withoutSource', withoutSource));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeDeploymentsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeDeploymentsWithoutTenantId', includeDeploymentsWithoutTenantId));
    }
    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
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
  /// Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Deployments](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Filter by deployment id
  ///
  /// * [String] name:
  ///   Filter by the deployment name. Exact match.
  ///
  /// * [String] nameLike:
  ///   Filter by the deployment name that the parameter is a substring of. The parameter can include the wildcard `%` to express like-strategy such as: starts with (`%`name), ends with (name`%`) or contains (`%`name`%`).
  ///
  /// * [String] source_:
  ///   Filter by the deployment source.
  ///
  /// * [bool] withoutSource:
  ///   Filter by the deployment source whereby source is equal to `null`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A deployment must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include deployments which belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeDeploymentsWithoutTenantId:
  ///   Include deployments which belong to no tenant. Can be used in combination with `tenantIdIn`. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] after:
  ///   Restricts to all deployments after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] before:
  ///   Restricts to all deployments before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  Future<CountResultDto?> getDeploymentsCount({ String? id, String? name, String? nameLike, String? source_, bool? withoutSource, String? tenantIdIn, bool? withoutTenantId, bool? includeDeploymentsWithoutTenantId, DateTime? after, DateTime? before, }) async {
    final response = await getDeploymentsCountWithHttpInfo( id: id, name: name, nameLike: nameLike, source_: source_, withoutSource: withoutSource, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeDeploymentsWithoutTenantId: includeDeploymentsWithoutTenantId, after: after, before: before, );
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

  /// Get Registered Deployments
  ///
  /// Queries the registered deployment IDs for the current application.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRegisteredDeploymentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/registered';

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

  /// Get Registered Deployments
  ///
  /// Queries the registered deployment IDs for the current application.
  Future<List<String>?> getRegisteredDeployments() async {
    final response = await getRegisteredDeploymentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);

    }
    return null;
  }

  /// Redeploy
  ///
  /// Re-deploys an existing deployment.  The deployment resources to re-deploy can be restricted by using the properties `resourceIds` or `resourceNames`. If no deployment resources to re-deploy are passed then all existing resources of the given deployment are re-deployed.  **Warning**: Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to re-deploy.
  ///
  /// * [RedeploymentDto] redeploymentDto:
  Future<Response> redeployWithHttpInfo(String id, { RedeploymentDto? redeploymentDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deployment/{id}/redeploy'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = redeploymentDto;

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

  /// Redeploy
  ///
  /// Re-deploys an existing deployment.  The deployment resources to re-deploy can be restricted by using the properties `resourceIds` or `resourceNames`. If no deployment resources to re-deploy are passed then all existing resources of the given deployment are re-deployed.  **Warning**: Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the deployment to re-deploy.
  ///
  /// * [RedeploymentDto] redeploymentDto:
  Future<DeploymentWithDefinitionsDto?> redeploy(String id, { RedeploymentDto? redeploymentDto, }) async {
    final response = await redeployWithHttpInfo(id,  redeploymentDto: redeploymentDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeploymentWithDefinitionsDto',) as DeploymentWithDefinitionsDto;
    
    }
    return null;
  }
}
