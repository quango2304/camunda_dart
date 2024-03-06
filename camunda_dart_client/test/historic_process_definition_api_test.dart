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


/// tests for HistoricProcessDefinitionApi
void main() {
  // final instance = HistoricProcessDefinitionApi();

  group('tests for HistoricProcessDefinitionApi', () {
    // Get Cleanable Process Instance Report
    //
    // Retrieves a report about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup))  so that you can tune the history time to live. These reports include the count of the finished historic process instances, cleanable process instances and basic process definition data - id, key, name and version. The size of the result set can be retrieved by using the [Get Cleanable Process Instance Report Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report-count/) method.
    //
    //Future<List<CleanableHistoricProcessInstanceReportResultDto>> getCleanableHistoricProcessInstanceReport({ String processDefinitionIdIn, String processDefinitionKeyIn, String tenantIdIn, bool withoutTenantId, bool compact, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getCleanableHistoricProcessInstanceReport', () async {
      // TODO
    });

    // Get Cleanable Process Instance Report Count
    //
    // Queries for the number of report results about a process definition and finished process instances relevant to history cleanup (see [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup)). Takes the same parameters as the [Get Cleanable Process Instance Report](https://docs.camunda.org/manual/7.20/reference/rest/history/process-definition/get-cleanable-process-instance-report/) method.
    //
    //Future<CountResultDto> getCleanableHistoricProcessInstanceReportCount({ String processDefinitionIdIn, String processDefinitionKeyIn, String tenantIdIn, bool withoutTenantId, bool compact }) async
    test('test getCleanableHistoricProcessInstanceReportCount', () async {
      // TODO
    });

    // Get Historic Activity Statistics
    //
    // Retrieves historic statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances and, optionally, the number of canceled activity instances, finished activity instances and activity instances which completed a scope (i.e., in BPMN 2.0 manner: a scope is completed by an activity instance when the activity instance consumed a token but did not emit a new token). **Note:** This only includes historic data.
    //
    //Future<List<HistoricActivityStatisticsDto>> getHistoricActivityStatistics(String id, { bool canceled, bool finished, bool completeScope, bool incidents, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, String processInstanceIdIn, String sortBy, String sortOrder }) async
    test('test getHistoricActivityStatistics', () async {
      // TODO
    });

  });
}
