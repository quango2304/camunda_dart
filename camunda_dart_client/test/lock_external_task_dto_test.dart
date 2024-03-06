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

// tests for LockExternalTaskDto
void main() {
  // final instance = LockExternalTaskDto();

  group('test LockExternalTaskDto', () {
    // **Mandatory.** The ID of the worker who is performing the operation on the external task. If the task is already locked, must match the id of the worker who has most recently locked the task.
    // String workerId
    test('to test the property `workerId`', () async {
      // TODO
    });

    // The duration to lock the external task for in milliseconds. **Note:** Attempting to lock an already locked external task with the same `workerId` will succeed and a new lock duration will be set, starting from the current moment.
    // int lockDuration
    test('to test the property `lockDuration`', () async {
      // TODO
    });


  });

}
