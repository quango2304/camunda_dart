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


/// tests for ModificationApi
void main() {
  // final instance = ModificationApi();

  group('tests for ModificationApi', () {
    // Execute Modification
    //
    // Executes a modification synchronously for multiple process instances. To modify a single process instance, use the [Modify Process Instance Execution State](https://docs.camunda.org/manual/7.20/reference/rest/process-instance/post-modification/) method. To execute a modification asynchronously, use the [Execute Modification Async (Batch)](https://docs.camunda.org/manual/7.20/reference/rest/modification/post-modification-async/) method.  For more information about the difference between synchronous and asynchronous execution of a modification, please refer to the related section of the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration.md#executing-a-migration-plan).
    //
    //Future executeModification({ ModificationDto modificationDto }) async
    test('test executeModification', () async {
      // TODO
    });

    // Execute Modification Async (Batch)
    //
    // Executes a modification asynchronously for multiple process instances. To execute a modification synchronously, use the [Execute Modification](https://docs.camunda.org/manual/7.20/reference/rest/modification/post-modification-sync/) method.  For more information about the difference between synchronous and asynchronous execution of a modification, please refer to the related section of the [user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration.md#executing-a-migration-plan).
    //
    //Future<BatchDto> executeModificationAsync({ ModificationDto modificationDto }) async
    test('test executeModificationAsync', () async {
      // TODO
    });

  });
}
