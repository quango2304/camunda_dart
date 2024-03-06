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


/// tests for HistoricJobLogApi
void main() {
  // final instance = HistoricJobLogApi();

  group('tests for HistoricJobLogApi', () {
    // Get Job Log
    //
    // Retrieves a historic job log by id.
    //
    //Future<HistoricJobLogDto> getHistoricJobLog(String id) async
    test('test getHistoricJobLog', () async {
      // TODO
    });

    // Get Job Logs
    //
    // Queries for historic job logs that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
    //
    //Future<List<HistoricJobLogDto>> getHistoricJobLogs({ String logId, String jobId, String jobExceptionMessage, String jobDefinitionId, String jobDefinitionType, String jobDefinitionConfiguration, String activityIdIn, String failedActivityIdIn, String executionIdIn, String processInstanceId, String processDefinitionId, String processDefinitionKey, String deploymentId, String tenantIdIn, bool withoutTenantId, String hostname, int jobPriorityLowerThanOrEquals, int jobPriorityHigherThanOrEquals, bool creationLog, bool failureLog, bool successLog, bool deletionLog, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricJobLogs', () async {
      // TODO
    });

    // Get Job Log Count
    //
    // Queries for the number of historic job logs that fulfill the given parameters. Takes the same parameters as the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method.
    //
    //Future<CountResultDto> getHistoricJobLogsCount({ String logId, String jobId, String jobExceptionMessage, String jobDefinitionId, String jobDefinitionType, String jobDefinitionConfiguration, String activityIdIn, String failedActivityIdIn, String executionIdIn, String processInstanceId, String processDefinitionId, String processDefinitionKey, String deploymentId, String tenantIdIn, bool withoutTenantId, String hostname, int jobPriorityLowerThanOrEquals, int jobPriorityHigherThanOrEquals, bool creationLog, bool failureLog, bool successLog, bool deletionLog }) async
    test('test getHistoricJobLogsCount', () async {
      // TODO
    });

    // Get Job Log Exception Stacktrace
    //
    // Retrieves the corresponding exception stacktrace to the passed historic job log by id.
    //
    //Future<Object> getStacktraceHistoricJobLog(String id) async
    test('test getStacktraceHistoricJobLog', () async {
      // TODO
    });

    // Get Job Logs (POST)
    //
    // Queries for historic job logs that fulfill the given parameters. This method is slightly more powerful than the [Get Job Logs](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query/) method because it allows filtering by historic job logs values of the different types `String`, `Number` or `Boolean`.
    //
    //Future<List<HistoricJobLogDto>> queryHistoricJobLogs({ int firstResult, int maxResults, HistoricJobLogQueryDto historicJobLogQueryDto }) async
    test('test queryHistoricJobLogs', () async {
      // TODO
    });

    // Get Job Log Count (POST)
    //
    // Queries for the number of historic job logs that fulfill the given parameters. This method takes the same message body as the [Get Job Logs (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/post-job-log-query/) method and therefore it is slightly more powerful than the [Get Job Log Count](https://docs.camunda.org/manual/7.20/reference/rest/history/job-log/get-job-log-query-count/) method.
    //
    //Future<CountResultDto> queryHistoricJobLogsCount({ HistoricJobLogQueryDto historicJobLogQueryDto }) async
    test('test queryHistoricJobLogsCount', () async {
      // TODO
    });

  });
}
