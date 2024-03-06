//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TaskIdentityLinkApi {
  TaskIdentityLinkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add
  ///
  /// Adds an identity link to a task by id. Can be used to link any user or group to a task and specify a relation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add a link to.
  ///
  /// * [IdentityLinkDto] identityLinkDto:
  Future<Response> addIdentityLinkWithHttpInfo(String id, { IdentityLinkDto? identityLinkDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/identity-links'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = identityLinkDto;

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

  /// Add
  ///
  /// Adds an identity link to a task by id. Can be used to link any user or group to a task and specify a relation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add a link to.
  ///
  /// * [IdentityLinkDto] identityLinkDto:
  Future<void> addIdentityLink(String id, { IdentityLinkDto? identityLinkDto, }) async {
    final response = await addIdentityLinkWithHttpInfo(id,  identityLinkDto: identityLinkDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete
  ///
  /// Removes an identity link from a task by id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to remove a link from.
  ///
  /// * [IdentityLinkDto] identityLinkDto:
  Future<Response> deleteIdentityLinkWithHttpInfo(String id, { IdentityLinkDto? identityLinkDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/identity-links/delete'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = identityLinkDto;

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

  /// Delete
  ///
  /// Removes an identity link from a task by id
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to remove a link from.
  ///
  /// * [IdentityLinkDto] identityLinkDto:
  Future<void> deleteIdentityLink(String id, { IdentityLinkDto? identityLinkDto, }) async {
    final response = await deleteIdentityLinkWithHttpInfo(id,  identityLinkDto: identityLinkDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get List
  ///
  /// Gets the identity links for a task by id, which are the users and groups that are in *some* relation to it (including assignee and owner).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the identity links for.
  ///
  /// * [String] type:
  ///   Filter by the type of links to include.
  Future<Response> getIdentityLinksWithHttpInfo(String id, { String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/identity-links'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
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
  /// Gets the identity links for a task by id, which are the users and groups that are in *some* relation to it (including assignee and owner).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the identity links for.
  ///
  /// * [String] type:
  ///   Filter by the type of links to include.
  Future<List<IdentityLinkDto>?> getIdentityLinks(String id, { String? type, }) async {
    final response = await getIdentityLinksWithHttpInfo(id,  type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<IdentityLinkDto>') as List)
        .cast<IdentityLinkDto>()
        .toList(growable: false);

    }
    return null;
  }
}
