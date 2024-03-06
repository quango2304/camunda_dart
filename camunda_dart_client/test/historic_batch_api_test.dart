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


/// tests for HistoricBatchApi
void main() {
  // final instance = HistoricBatchApi();

  group('tests for HistoricBatchApi', () {
    // Delete Historic Batch
    //
    // Deletes a historic batch by id, including related historic job logs.
    //
    //Future deleteHistoricBatch(String id) async
    test('test deleteHistoricBatch', () async {
      // TODO
    });

    // Get Cleanable Batch Report
    //
    // Retrieves a report about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ) so that you can tune the history time to live. These reports include the count of the finished batches, cleanable batches and type of the batch. The size of the result set can be retrieved by using the [Get Cleanable Batch Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report-count/) method.  **Please note:** The history time to live for batch operations does not support [Multi-Tenancy](https://docs.camunda.org/manual/7.20/user-guide/process-engine/multi-tenancy.md). The report will return an information for all batch operations (for all tenants) if you have permissions to see the history. 
    //
    //Future<List<CleanableHistoricBatchReportResultDto>> getCleanableHistoricBatchesReport({ String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getCleanableHistoricBatchesReport', () async {
      // TODO
    });

    // Get Cleanable Batch Report Count
    //
    // Queries for the number of report results about a historic batch operations relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup) ). Takes the same parameters as the [Get Cleanable Batch Report](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-cleanable-batch-report/) method.
    //
    //Future<CountResultDto> getCleanableHistoricBatchesReportCount() async
    test('test getCleanableHistoricBatchesReportCount', () async {
      // TODO
    });

    // Get Historic Batch
    //
    // Retrieves a historic batch by id, according to the `HistoricBatch` interface in the engine.
    //
    //Future<HistoricBatchDto> getHistoricBatch(String id) async
    test('test getHistoricBatch', () async {
      // TODO
    });

    // Get Historic Batches
    //
    // Queries for historic batches that fulfill given parameters. Parameters may be the properties of batches, such as the id or type. The size of the result set can be retrieved by using the [Get Historic Batch Count](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query-count/) method.
    //
    //Future<List<HistoricBatchDto>> getHistoricBatches({ String batchId, String type, bool completed, String tenantIdIn, bool withoutTenantId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricBatches', () async {
      // TODO
    });

    // Get Historic Batch Count
    //
    // Requests the number of historic batches that fulfill the query criteria. Takes the same filtering parameters as the [Get Historic Batches](https://docs.camunda.org/manual/7.20/reference/rest/history/batch/get-query/) method.
    //
    //Future<CountResultDto> getHistoricBatchesCount({ String batchId, String type, bool completed, String tenantIdIn, bool withoutTenantId }) async
    test('test getHistoricBatchesCount', () async {
      // TODO
    });

    // Set Removal Time Async (POST)
    //
    // Sets the removal time to multiple historic batches asynchronously (batch).  At least __historicBatchIds__ or __historicBatchQuery__ has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
    //
    //Future<BatchDto> setRemovalTimeAsyncHistoricBatch({ SetRemovalTimeToHistoricBatchesDto setRemovalTimeToHistoricBatchesDto }) async
    test('test setRemovalTimeAsyncHistoricBatch', () async {
      // TODO
    });

  });
}
