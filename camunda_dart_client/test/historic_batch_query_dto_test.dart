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

// tests for HistoricBatchQueryDto
void main() {
  // final instance = HistoricBatchQueryDto();

  group('test HistoricBatchQueryDto', () {
    // Filter by batch id.
    // String batchId
    test('to test the property `batchId`', () async {
      // TODO
    });

    // Filter by batch type. See the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/batch/#creating-a-batch) for more information about batch types.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    //  Filter completed or not completed batches. If the value is `true`, only completed batches, i.e., end time is set, are returned. Otherwise, if the value is `false`, only running batches, i.e., end time is null, are returned.
    // bool completed
    test('to test the property `completed`', () async {
      // TODO
    });

    // Filter by a comma-separated list of tenant ids. A batch matches if it has one of the given tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include batches which belong to no tenant. Value can effectively only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // An array of criteria to sort the result by. Each element of the array is                        an object that specifies one ordering. The position in the array                        identifies the rank of an ordering, i.e., whether it is primary, secondary,                        etc. Has no effect for the `/count` endpoint
    // List<HistoricBatchQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
