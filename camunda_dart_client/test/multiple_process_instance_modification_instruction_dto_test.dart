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

// tests for MultipleProcessInstanceModificationInstructionDto
void main() {
  // final instance = MultipleProcessInstanceModificationInstructionDto();

  group('test MultipleProcessInstanceModificationInstructionDto', () {
    // **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
    // String activityId
    test('to test the property `activityId`', () async {
      // TODO
    });

    // Can be used with instructions of types `startTransition`. Specifies the sequence flow to start.
    // String transitionId
    test('to test the property `transitionId`', () async {
      // TODO
    });

    // Can be used with instructions of type cancel. Prevents the deletion of new created activity instances.
    // bool cancelCurrentActiveActivityInstances
    test('to test the property `cancelCurrentActiveActivityInstances`', () async {
      // TODO
    });


  });

}
