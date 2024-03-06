//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EventSubscriptionApi {
  EventSubscriptionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get List
  ///
  /// Queries for event subscriptions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Event Subscriptions count](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventSubscriptionId:
  ///   Only select subscription with the given id.
  ///
  /// * [String] eventName:
  ///   Only select subscriptions for events with the given name.
  ///
  /// * [String] eventType:
  ///   Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
  ///
  /// * [String] executionId:
  ///   Only select subscriptions that belong to an execution with the given id.
  ///
  /// * [String] processInstanceId:
  ///   Only select subscriptions that belong to a process instance with the given id.
  ///
  /// * [String] activityId:
  ///   Only select subscriptions that belong to an activity with the given id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeEventSubscriptionsWithoutTenantId:
  ///   Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
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
  Future<Response> getEventSubscriptionsWithHttpInfo({ String? eventSubscriptionId, String? eventName, String? eventType, String? executionId, String? processInstanceId, String? activityId, String? tenantIdIn, bool? withoutTenantId, bool? includeEventSubscriptionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event-subscription';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventSubscriptionId != null) {
      queryParams.addAll(_queryParams('', 'eventSubscriptionId', eventSubscriptionId));
    }
    if (eventName != null) {
      queryParams.addAll(_queryParams('', 'eventName', eventName));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeEventSubscriptionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeEventSubscriptionsWithoutTenantId', includeEventSubscriptionsWithoutTenantId));
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
  /// Queries for event subscriptions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Event Subscriptions count](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] eventSubscriptionId:
  ///   Only select subscription with the given id.
  ///
  /// * [String] eventName:
  ///   Only select subscriptions for events with the given name.
  ///
  /// * [String] eventType:
  ///   Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
  ///
  /// * [String] executionId:
  ///   Only select subscriptions that belong to an execution with the given id.
  ///
  /// * [String] processInstanceId:
  ///   Only select subscriptions that belong to a process instance with the given id.
  ///
  /// * [String] activityId:
  ///   Only select subscriptions that belong to an activity with the given id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeEventSubscriptionsWithoutTenantId:
  ///   Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
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
  Future<List<EventSubscriptionDto>?> getEventSubscriptions({ String? eventSubscriptionId, String? eventName, String? eventType, String? executionId, String? processInstanceId, String? activityId, String? tenantIdIn, bool? withoutTenantId, bool? includeEventSubscriptionsWithoutTenantId, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getEventSubscriptionsWithHttpInfo( eventSubscriptionId: eventSubscriptionId, eventName: eventName, eventType: eventType, executionId: executionId, processInstanceId: processInstanceId, activityId: activityId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeEventSubscriptionsWithoutTenantId: includeEventSubscriptionsWithoutTenantId, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EventSubscriptionDto>') as List)
        .cast<EventSubscriptionDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get List Count
  ///
  /// Queries for the number of event subscriptions that fulfill given parameters. Takes the same parameters as the [Get Event Subscriptions](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventSubscriptionId:
  ///   Only select subscription with the given id.
  ///
  /// * [String] eventName:
  ///   Only select subscriptions for events with the given name.
  ///
  /// * [String] eventType:
  ///   Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
  ///
  /// * [String] executionId:
  ///   Only select subscriptions that belong to an execution with the given id.
  ///
  /// * [String] processInstanceId:
  ///   Only select subscriptions that belong to a process instance with the given id.
  ///
  /// * [String] activityId:
  ///   Only select subscriptions that belong to an activity with the given id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeEventSubscriptionsWithoutTenantId:
  ///   Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getEventSubscriptionsCountWithHttpInfo({ String? eventSubscriptionId, String? eventName, String? eventType, String? executionId, String? processInstanceId, String? activityId, String? tenantIdIn, bool? withoutTenantId, bool? includeEventSubscriptionsWithoutTenantId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/event-subscription/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventSubscriptionId != null) {
      queryParams.addAll(_queryParams('', 'eventSubscriptionId', eventSubscriptionId));
    }
    if (eventName != null) {
      queryParams.addAll(_queryParams('', 'eventName', eventName));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (activityId != null) {
      queryParams.addAll(_queryParams('', 'activityId', activityId));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (includeEventSubscriptionsWithoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'includeEventSubscriptionsWithoutTenantId', includeEventSubscriptionsWithoutTenantId));
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
  /// Queries for the number of event subscriptions that fulfill given parameters. Takes the same parameters as the [Get Event Subscriptions](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] eventSubscriptionId:
  ///   Only select subscription with the given id.
  ///
  /// * [String] eventName:
  ///   Only select subscriptions for events with the given name.
  ///
  /// * [String] eventType:
  ///   Only select subscriptions for events with the given type. Valid values: `message`, `signal`, `compensate` and `conditional`.
  ///
  /// * [String] executionId:
  ///   Only select subscriptions that belong to an execution with the given id.
  ///
  /// * [String] processInstanceId:
  ///   Only select subscriptions that belong to a process instance with the given id.
  ///
  /// * [String] activityId:
  ///   Only select subscriptions that belong to an activity with the given id.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] includeEventSubscriptionsWithoutTenantId:
  ///   Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getEventSubscriptionsCount({ String? eventSubscriptionId, String? eventName, String? eventType, String? executionId, String? processInstanceId, String? activityId, String? tenantIdIn, bool? withoutTenantId, bool? includeEventSubscriptionsWithoutTenantId, }) async {
    final response = await getEventSubscriptionsCountWithHttpInfo( eventSubscriptionId: eventSubscriptionId, eventName: eventName, eventType: eventType, executionId: executionId, processInstanceId: processInstanceId, activityId: activityId, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, includeEventSubscriptionsWithoutTenantId: includeEventSubscriptionsWithoutTenantId, );
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
}
