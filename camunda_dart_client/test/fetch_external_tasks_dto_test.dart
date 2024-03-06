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

// tests for FetchExternalTasksDto
void main() {
  // final instance = FetchExternalTasksDto();

  group('test FetchExternalTasksDto', () {
    // **Mandatory.** The id of the worker on which behalf tasks are fetched. The returned tasks are locked for that worker and can only be completed when providing the same worker id.
    // String workerId
    test('to test the property `workerId`', () async {
      // TODO
    });

    // **Mandatory.** The maximum number of tasks to return.
    // int maxTasks
    test('to test the property `maxTasks`', () async {
      // TODO
    });

    // A `boolean` value, which indicates whether the task should be fetched based on its priority or arbitrarily.
    // bool usePriority
    test('to test the property `usePriority`', () async {
      // TODO
    });

    // The [Long Polling](https://docs.camunda.org/manual/7.20/user-guide/process-engine/external-tasks/#long-polling-to-fetch-and-lock-external-tasks) timeout in milliseconds.  **Note:** The value cannot be set larger than 1.800.000 milliseconds (corresponds to 30 minutes).
    // int asyncResponseTimeout
    test('to test the property `asyncResponseTimeout`', () async {
      // TODO
    });

    // A JSON array of topic objects for which external tasks should be fetched. The returned tasks may be arbitrarily distributed among these topics. Each topic object has the following properties:
    // List<FetchExternalTaskTopicDto> topics (default value: const [])
    test('to test the property `topics`', () async {
      // TODO
    });


  });

}
