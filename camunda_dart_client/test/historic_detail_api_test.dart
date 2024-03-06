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


/// tests for HistoricDetailApi
void main() {
  // final instance = HistoricDetailApi();

  group('tests for HistoricDetailApi', () {
    // Get Historic Details
    //
    // Queries for historic details that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
    //
    //Future<List<HistoricDetailDto>> getHistoricDetails({ String processInstanceId, String processInstanceIdIn, String executionId, String taskId, String activityInstanceId, String caseInstanceId, String caseExecutionId, String variableInstanceId, String variableTypeIn, String tenantIdIn, bool withoutTenantId, String userOperationId, bool formFields, bool variableUpdates, bool excludeTaskDetails, bool initial, DateTime occurredBefore, DateTime occurredAfter, String sortBy, String sortOrder, int firstResult, int maxResults, bool deserializeValues }) async
    test('test getHistoricDetails', () async {
      // TODO
    });

    // Get Historic Detail Count
    //
    // Queries for the number of historic details that fulfill the given parameters. Takes the same parameters as the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method.
    //
    //Future<CountResultDto> getHistoricDetailsCount({ String processInstanceId, String processInstanceIdIn, String executionId, String taskId, String activityInstanceId, String caseInstanceId, String caseExecutionId, String variableInstanceId, String variableTypeIn, String tenantIdIn, bool withoutTenantId, String userOperationId, bool formFields, bool variableUpdates, bool excludeTaskDetails, bool initial, DateTime occurredBefore, DateTime occurredAfter }) async
    test('test getHistoricDetailsCount', () async {
      // TODO
    });

    // Get Historic Detail
    //
    // Retrieves a historic detail by id.
    //
    //Future<HistoricDetailDto> historicDetail(String id, { bool deserializeValue }) async
    test('test historicDetail', () async {
      // TODO
    });

    // Get Historic Detail (Binary)
    //
    // Retrieves the content of a historic variable update by id. Applicable for byte array and file variables.
    //
    //Future<MultipartFile> historicDetailBinary(String id) async
    test('test historicDetailBinary', () async {
      // TODO
    });

    // Get Historic Details (POST)
    //
    // Queries for historic details that fulfill the given parameters. This method is slightly more powerful than the [Get Historic Details](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query/) method because it allows sorting by multiple parameters. The size of the result set can be retrieved by using the [Get Historic Detail Count](https://docs.camunda.org/manual/7.20/reference/rest/history/detail/get-detail-query-count/) method.
    //
    //Future<List<HistoricDetailDto>> queryHistoricDetails({ int firstResult, int maxResults, bool deserializeValues, HistoricDetailQueryDto historicDetailQueryDto }) async
    test('test queryHistoricDetails', () async {
      // TODO
    });

  });
}
