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


/// tests for HistoricExternalTaskLogApi
void main() {
  // final instance = HistoricExternalTaskLogApi();

  group('tests for HistoricExternalTaskLogApi', () {
    // Get External Task Log Error Details
    //
    // Retrieves the corresponding error details of the passed historic external task log by id.
    //
    //Future<Object> getErrorDetailsHistoricExternalTaskLog(String id) async
    test('test getErrorDetailsHistoricExternalTaskLog', () async {
      // TODO
    });

    // Get External Task Log
    //
    // Retrieves a historic external task log by id.
    //
    //Future<HistoricExternalTaskLogDto> getHistoricExternalTaskLog(String id) async
    test('test getHistoricExternalTaskLog', () async {
      // TODO
    });

    // Get External Task Logs
    //
    // Queries for historic external task logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
    //
    //Future<List<HistoricExternalTaskLogDto>> getHistoricExternalTaskLogs({ String logId, String externalTaskId, String topicName, String workerId, String errorMessage, String activityIdIn, String activityInstanceIdIn, String executionIdIn, String processInstanceId, String processDefinitionId, String processDefinitionKey, String tenantIdIn, bool withoutTenantId, int priorityLowerThanOrEquals, int priorityHigherThanOrEquals, bool creationLog, bool failureLog, bool successLog, bool deletionLog, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricExternalTaskLogs', () async {
      // TODO
    });

    // Get External Task Log Count
    //
    // Queries for the number of historic external task logs that fulfill the given parameters. Takes the same parameters as the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method.
    //
    //Future<CountResultDto> getHistoricExternalTaskLogsCount({ String logId, String externalTaskId, String topicName, String workerId, String errorMessage, String activityIdIn, String activityInstanceIdIn, String executionIdIn, String processInstanceId, String processDefinitionId, String processDefinitionKey, String tenantIdIn, bool withoutTenantId, int priorityLowerThanOrEquals, int priorityHigherThanOrEquals, bool creationLog, bool failureLog, bool successLog, bool deletionLog }) async
    test('test getHistoricExternalTaskLogsCount', () async {
      // TODO
    });

    // Get External Task Logs (POST)
    //
    // Queries for historic external task logs that fulfill the given parameters. This method is slightly more powerful than the [Get External Task Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query/) method because it allows filtering by historic external task logs values of the different types `String`, `Number` or `Boolean`.
    //
    //Future<List<HistoricExternalTaskLogDto>> queryHistoricExternalTaskLogs({ HistoricExternalTaskLogQueryDto historicExternalTaskLogQueryDto }) async
    test('test queryHistoricExternalTaskLogs', () async {
      // TODO
    });

    // Get External Task Log Count (POST)
    //
    // Queries for the number of historic external task logs that fulfill the given parameters. This method takes the same message body as the [Get External Task Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/post-external-task-log-query/) method and therefore it is slightly more powerful than the [Get External Task Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/external-task-log/get-external-task-log-query-count/) method.
    //
    //Future<CountResultDto> queryHistoricExternalTaskLogsCount({ HistoricExternalTaskLogQueryDto historicExternalTaskLogQueryDto }) async
    test('test queryHistoricExternalTaskLogsCount', () async {
      // TODO
    });

  });
}
