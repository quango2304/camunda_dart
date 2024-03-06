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


/// tests for BatchApi
void main() {
  // final instance = BatchApi();

  group('tests for BatchApi', () {
    // Delete
    //
    // Deletes a batch by id, including all related jobs and job definitions. Optionally also deletes the batch history.
    //
    //Future deleteBatch(String id, { bool cascade }) async
    test('test deleteBatch', () async {
      // TODO
    });

    // Get
    //
    // Retrieves a batch by id, according to the Batch interface in the engine.
    //
    //Future<BatchDto> getBatch(String id) async
    test('test getBatch', () async {
      // TODO
    });

    // Get Statistics
    //
    // Queries for batch statistics that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the  [Get Batch Statistics Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query-count/) method.
    //
    //Future<List<BatchStatisticsDto>> getBatchStatistics({ String sortBy, String sortOrder, int firstResult, int maxResults, String batchId, String type, String tenantIdIn, bool withoutTenantId, bool suspended, String createdBy, DateTime startedBefore, DateTime startedAfter, bool withFailures, bool withoutFailures }) async
    test('test getBatchStatistics', () async {
      // TODO
    });

    // Get Statistics Count
    //
    // Requests the number of batch statistics that fulfill the query criteria. Takes the same filtering parameters as the [Get Batch Statistics](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-statistics-query/) method.
    //
    //Future<CountResultDto> getBatchStatisticsCount({ String batchId, String type, String tenantIdIn, bool withoutTenantId, bool suspended, String createdBy, DateTime startedBefore, DateTime startedAfter, bool withFailures, bool withoutFailures }) async
    test('test getBatchStatisticsCount', () async {
      // TODO
    });

    // Get List
    //
    // Queries for batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query-count/) method.
    //
    //Future<List<BatchDto>> getBatches({ String sortBy, String sortOrder, int firstResult, int maxResults, String batchId, String type, String tenantIdIn, bool withoutTenantId, bool suspended, String createdBy, DateTime startedBefore, DateTime startedAfter, bool withFailures, bool withoutFailures }) async
    test('test getBatches', () async {
      // TODO
    });

    // Get List Count
    //
    // Requests the number of batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Batches](https://docs.camunda.org/manual/7.20/reference/rest/batch/get-query/) method.
    //
    //Future<CountResultDto> getBatchesCount({ String batchId, String type, String tenantIdIn, bool withoutTenantId, bool suspended, String createdBy, DateTime startedBefore, DateTime startedAfter, bool withFailures, bool withoutFailures }) async
    test('test getBatchesCount', () async {
      // TODO
    });

    // Activate/Suspend
    //
    // Activates or suspends a batch by id.
    //
    //Future updateBatchSuspensionState(String id, { SuspensionStateDto suspensionStateDto }) async
    test('test updateBatchSuspensionState', () async {
      // TODO
    });

  });
}
