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

// tests for SetJobRetriesDto
void main() {
  // final instance = SetJobRetriesDto();

  group('test SetJobRetriesDto', () {
    // The due date to set for the job. A due date indicates when this job is ready for execution. Jobs with due dates in the past will be scheduled for execution.
    // DateTime dueDate
    test('to test the property `dueDate`', () async {
      // TODO
    });

    // The number of retries to set for the resource.  Must be >= 0. If this is 0, an incident is created and the task, or job, cannot be fetched, or acquired anymore unless the retries are increased again. Can not be null.
    // int retries
    test('to test the property `retries`', () async {
      // TODO
    });

    // A list of job ids to set retries for.
    // List<String> jobIds (default value: const [])
    test('to test the property `jobIds`', () async {
      // TODO
    });

    // JobQueryDto jobQuery
    test('to test the property `jobQuery`', () async {
      // TODO
    });


  });

}
