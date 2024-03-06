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

// tests for ActivityInstanceDto
void main() {
  // final instance = ActivityInstanceDto();

  group('test ActivityInstanceDto', () {
    // The id of the activity instance.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The id of the parent activity instance, for example a sub process instance.
    // String parentActivityInstanceId
    test('to test the property `parentActivityInstanceId`', () async {
      // TODO
    });

    // The id of the activity.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // The name of the activity
    // String activityName
    test('to test the property `activityName`', () async {
      // TODO
    });

    // The name of the activity. This property is deprecated. Please use 'activityName'.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The type of activity (corresponds to the XML element name in the BPMN 2.0, e.g., 'userTask')
    // String activityType
    test('to test the property `activityType`', () async {
      // TODO
    });

    // The id of the process instance this activity instance is part of.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the process definition.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // A list of child activity instances.
    // List<ActivityInstanceDto> childActivityInstances (default value: const [])
    test('to test the property `childActivityInstances`', () async {
      // TODO
    });

    // A list of child transition instances. A transition instance represents an execution waiting in an asynchronous continuation.
    // List<TransitionInstanceDto> childTransitionInstances (default value: const [])
    test('to test the property `childTransitionInstances`', () async {
      // TODO
    });

    // A list of execution ids.
    // List<String> executionIds (default value: const [])
    test('to test the property `executionIds`', () async {
      // TODO
    });

    // A list of incident ids.
    // List<String> incidentIds (default value: const [])
    test('to test the property `incidentIds`', () async {
      // TODO
    });

    // A list of JSON objects containing incident specific properties: * `id`: the id of the incident * `activityId`: the activity id in which the incident occurred
    // List<ActivityInstanceIncidentDto> incidents (default value: const [])
    test('to test the property `incidents`', () async {
      // TODO
    });


  });

}
