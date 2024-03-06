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

// tests for HistoricActivityInstanceQueryDto
void main() {
  // final instance = HistoricActivityInstanceQueryDto();

  group('test HistoricActivityInstanceQueryDto', () {
    // Filter by activity instance id.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // Filter by process instance id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Filter by process definition id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // Filter by the id of the execution that executed the activity instance.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Filter by the activity id (according to BPMN 2.0 XML).
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Filter by the activity name (according to BPMN 2.0 XML).
    // String activityName
    test('to test the property `activityName`', () async {
      // TODO
    });

    // Filter by activity type.
    // String activityType
    test('to test the property `activityType`', () async {
      // TODO
    });

    // Only include activity instances that are user tasks and assigned to a given user.
    // String taskAssignee
    test('to test the property `taskAssignee`', () async {
      // TODO
    });

    // Only include finished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
    // bool finished
    test('to test the property `finished`', () async {
      // TODO
    });

    // Only include unfinished activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
    // bool unfinished
    test('to test the property `unfinished`', () async {
      // TODO
    });

    // Only include canceled activity instances. Value may only be `true`, as `false` behaves the same as when the property is not set.
    // bool canceled
    test('to test the property `canceled`', () async {
      // TODO
    });

    // Only include activity instances which completed a scope. Value may only be `true`, as `false` behaves the same as when the property is not set.
    // bool completeScope
    test('to test the property `completeScope`', () async {
      // TODO
    });

    // Restrict to instances that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedBefore
    test('to test the property `startedBefore`', () async {
      // TODO
    });

    // Restrict to instances that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime startedAfter
    test('to test the property `startedAfter`', () async {
      // TODO
    });

    // Restrict to instances that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedBefore
    test('to test the property `finishedBefore`', () async {
      // TODO
    });

    // Restrict to instances that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
    // DateTime finishedAfter
    test('to test the property `finishedAfter`', () async {
      // TODO
    });

    // Must be a JSON array of Strings. An activity instance must have one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic activity instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Apply sorting of the result
    // List<HistoricActivityInstanceQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
