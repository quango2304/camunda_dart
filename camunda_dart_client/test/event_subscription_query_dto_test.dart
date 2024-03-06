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

// tests for EventSubscriptionQueryDto
void main() {
  // final instance = EventSubscriptionQueryDto();

  group('test EventSubscriptionQueryDto', () {
    // The id of the event subscription.
    // String eventSubscriptionId
    test('to test the property `eventSubscriptionId`', () async {
      // TODO
    });

    // The name of the event this subscription belongs to as defined in the process model.
    // String eventName
    test('to test the property `eventName`', () async {
      // TODO
    });

    // The type of the event subscription.
    // String eventType
    test('to test the property `eventType`', () async {
      // TODO
    });

    // The execution that is subscribed on the referenced event.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The process instance this subscription belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The identifier of the activity that this event subscription belongs to. This could for example be the id of a receive task.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Filter by a comma-separated list of tenant ids. Only select subscriptions that belong to one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only select subscriptions which have no tenant id. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Select event subscriptions which have no tenant id. Can be used in combination with tenantIdIn parameter. Value may only be `true`, as `false` is the default behavior.
    // bool includeEventSubscriptionsWithoutTenantId
    test('to test the property `includeEventSubscriptionsWithoutTenantId`', () async {
      // TODO
    });

    // Apply sorting of the result
    // List<EventSubscriptionQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
