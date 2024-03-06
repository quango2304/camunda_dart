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

// tests for ProcessInstanceModificationInstructionDto
void main() {
  // final instance = ProcessInstanceModificationInstructionDto();

  group('test ProcessInstanceModificationInstructionDto', () {
    // **Mandatory**. One of the following values: `cancel`, `startBeforeActivity`, `startAfterActivity`, `startTransition`.  * A cancel instruction requests cancellation of a single activity instance or all instances of one activity. * A startBeforeActivity instruction requests to enter a given activity. * A startAfterActivity instruction requests to execute the single outgoing sequence flow of a given activity. * A startTransition instruction requests to execute a specific sequence flow.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // TriggerVariableValueDto variables
    test('to test the property `variables`', () async {
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

    // Can be used with instructions of type `cancel`. Specifies the activity instance to cancel. Valid values are the activity instance IDs supplied by the [Get Activity Instance request](https://docs.camunda.org/manual/7.20/reference/rest/process-instance/get-activity-instances/).
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // Can be used with instructions of type `cancel`. Specifies the transition instance to cancel. Valid values are the transition instance IDs supplied by the [Get Activity Instance request](https://docs.camunda.org/manual/7.20/reference/rest/process-instance/get-activity-instances/).
    // String transitionInstanceId
    test('to test the property `transitionInstanceId`', () async {
      // TODO
    });

    // Can be used with instructions of type `startBeforeActivity`, `startAfterActivity`, and `startTransition`. Valid values are the activity instance IDs supplied by the Get Activity Instance request. If there are multiple parent activity instances of the targeted activity, this specifies the ancestor scope in which hierarchy the activity/transition is to be instantiated.  Example: When there are two instances of a subprocess and an activity contained in the subprocess is to be started, this parameter allows to specifiy under which subprocess instance the activity should be started.
    // String ancestorActivityInstanceId
    test('to test the property `ancestorActivityInstanceId`', () async {
      // TODO
    });

    // Can be used with instructions of type cancel. Prevents the deletion of new created activity instances.
    // bool cancelCurrentActiveActivityInstances
    test('to test the property `cancelCurrentActiveActivityInstances`', () async {
      // TODO
    });


  });

}
