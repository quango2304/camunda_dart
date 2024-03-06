//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TaskCommentApi {
  TaskCommentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create
  ///
  /// Creates a comment for a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add the comment to.
  ///
  /// * [CommentDto] commentDto:
  ///   **Note:** Only the `message` and `processInstanceId` properties will be used. Every other property passed to this endpoint will be ignored.
  Future<Response> createCommentWithHttpInfo(String id, { CommentDto? commentDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/comment/create'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = commentDto;

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

  /// Create
  ///
  /// Creates a comment for a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add the comment to.
  ///
  /// * [CommentDto] commentDto:
  ///   **Note:** Only the `message` and `processInstanceId` properties will be used. Every other property passed to this endpoint will be ignored.
  Future<CommentDto?> createComment(String id, { CommentDto? commentDto, }) async {
    final response = await createCommentWithHttpInfo(id,  commentDto: commentDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentDto',) as CommentDto;
    
    }
    return null;
  }

  /// Get
  ///
  /// Retrieves a task comment by task id and comment id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] commentId (required):
  ///   The id of the comment to be retrieved.
  Future<Response> getCommentWithHttpInfo(String id, String commentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/comment/{commentId}'
      .replaceAll('{id}', id)
      .replaceAll('{commentId}', commentId);

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
  /// Retrieves a task comment by task id and comment id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] commentId (required):
  ///   The id of the comment to be retrieved.
  Future<CommentDto?> getComment(String id, String commentId,) async {
    final response = await getCommentWithHttpInfo(id, commentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentDto',) as CommentDto;
    
    }
    return null;
  }

  /// Get List
  ///
  /// Gets the comments for a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the comments for.
  Future<Response> getCommentsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/comment'
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

  /// Get List
  ///
  /// Gets the comments for a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the comments for.
  Future<List<CommentDto>?> getComments(String id,) async {
    final response = await getCommentsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CommentDto>') as List)
        .cast<CommentDto>()
        .toList(growable: false);

    }
    return null;
  }
}
