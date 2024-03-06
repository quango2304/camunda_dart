//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for EventSubscriptionApi
void main() {
  // final instance = EventSubscriptionApi();

  group('tests for EventSubscriptionApi', () {
    // Get List
    //
    // Queries for event subscriptions that fulfill given parameters. The size of the result set can be retrieved by using the [Get Event Subscriptions count](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query-count/) method.
    //
    //Future<List<EventSubscriptionDto>> getEventSubscriptions({ String eventSubscriptionId, String eventName, String eventType, String executionId, String processInstanceId, String activityId, String tenantIdIn, bool withoutTenantId, bool includeEventSubscriptionsWithoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getEventSubscriptions', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of event subscriptions that fulfill given parameters. Takes the same parameters as the [Get Event Subscriptions](https://docs.camunda.org/manual/7.20/reference/rest/event-subscription/get-query/) method.
    //
    //Future<CountResultDto> getEventSubscriptionsCount({ String eventSubscriptionId, String eventName, String eventType, String executionId, String processInstanceId, String activityId, String tenantIdIn, bool withoutTenantId, bool includeEventSubscriptionsWithoutTenantId }) async
    test('test getEventSubscriptionsCount', () async {
      // TODO
    });

  });
}
