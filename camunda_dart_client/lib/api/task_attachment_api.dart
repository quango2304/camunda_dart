//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TaskAttachmentApi {
  TaskAttachmentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create
  ///
  /// Creates an attachment for a task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add the attachment to.
  ///
  /// * [String] attachmentName:
  ///   The name of the attachment.
  ///
  /// * [String] attachmentDescription:
  ///   The description of the attachment.
  ///
  /// * [String] attachmentType:
  ///   The type of the attachment.
  ///
  /// * [String] url:
  ///   The url to the remote content of the attachment.
  ///
  /// * [MultipartFile] content:
  ///   The content of the attachment.
  Future<Response> addAttachmentWithHttpInfo(String id, { String? attachmentName, String? attachmentDescription, String? attachmentType, String? url, MultipartFile? content, }) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/attachment/create'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (attachmentName != null) {
      hasFields = true;
      mp.fields[r'attachment-name'] = parameterToString(attachmentName);
    }
    if (attachmentDescription != null) {
      hasFields = true;
      mp.fields[r'attachment-description'] = parameterToString(attachmentDescription);
    }
    if (attachmentType != null) {
      hasFields = true;
      mp.fields[r'attachment-type'] = parameterToString(attachmentType);
    }
    if (url != null) {
      hasFields = true;
      mp.fields[r'url'] = parameterToString(url);
    }
    if (content != null) {
      hasFields = true;
      mp.fields[r'content'] = content.field;
      mp.files.add(content);
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
  /// Creates an attachment for a task.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to add the attachment to.
  ///
  /// * [String] attachmentName:
  ///   The name of the attachment.
  ///
  /// * [String] attachmentDescription:
  ///   The description of the attachment.
  ///
  /// * [String] attachmentType:
  ///   The type of the attachment.
  ///
  /// * [String] url:
  ///   The url to the remote content of the attachment.
  ///
  /// * [MultipartFile] content:
  ///   The content of the attachment.
  Future<AttachmentDto?> addAttachment(String id, { String? attachmentName, String? attachmentDescription, String? attachmentType, String? url, MultipartFile? content, }) async {
    final response = await addAttachmentWithHttpInfo(id,  attachmentName: attachmentName, attachmentDescription: attachmentDescription, attachmentType: attachmentType, url: url, content: content, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentDto',) as AttachmentDto;
    
    }
    return null;
  }

  /// Delete
  ///
  /// Removes an attachment from a task by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be removed.
  Future<Response> deleteAttachmentWithHttpInfo(String id, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/attachment/{attachmentId}'
      .replaceAll('{id}', id)
      .replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// Removes an attachment from a task by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be removed.
  Future<void> deleteAttachment(String id, String attachmentId,) async {
    final response = await deleteAttachmentWithHttpInfo(id, attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get
  ///
  /// Retrieves a task attachment by task id and attachment id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be retrieved.
  Future<Response> getAttachmentWithHttpInfo(String id, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/attachment/{attachmentId}'
      .replaceAll('{id}', id)
      .replaceAll('{attachmentId}', attachmentId);

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
  /// Retrieves a task attachment by task id and attachment id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be retrieved.
  Future<AttachmentDto?> getAttachment(String id, String attachmentId,) async {
    final response = await getAttachmentWithHttpInfo(id, attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentDto',) as AttachmentDto;
    
    }
    return null;
  }

  /// Get (Binary)
  ///
  /// Retrieves the binary content of a task attachment by task id and attachment id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be retrieved.
  Future<Response> getAttachmentDataWithHttpInfo(String id, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/attachment/{attachmentId}/data'
      .replaceAll('{id}', id)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get (Binary)
  ///
  /// Retrieves the binary content of a task attachment by task id and attachment id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task.
  ///
  /// * [String] attachmentId (required):
  ///   The id of the attachment to be retrieved.
  Future<MultipartFile?> getAttachmentData(String id, String attachmentId,) async {
    final response = await getAttachmentDataWithHttpInfo(id, attachmentId,);
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

  /// Get List
  ///
  /// Gets the attachments for a task.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the attachments for.
  Future<Response> getAttachmentsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/task/{id}/attachment'
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
  /// Gets the attachments for a task.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The id of the task to retrieve the attachments for.
  Future<List<AttachmentDto>?> getAttachments(String id,) async {
    final response = await getAttachmentsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AttachmentDto>') as List)
        .cast<AttachmentDto>()
        .toList(growable: false);

    }
    return null;
  }
}
