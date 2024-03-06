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


/// tests for HistoricProcessInstanceApi
void main() {
  // final instance = HistoricProcessInstanceApi();

  group('tests for HistoricProcessInstanceApi', () {
    // Delete
    //
    // Deletes a process instance from the history by id.
    //
    //Future deleteHistoricProcessInstance(String id, { bool failIfNotExists }) async
    test('test deleteHistoricProcessInstance', () async {
      // TODO
    });

    // Delete Async (POST)
    //
    // Delete multiple historic process instances asynchronously (batch). At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided then all instances matching query criterion and instances from the list will be deleted.
    //
    //Future<BatchDto> deleteHistoricProcessInstancesAsync({ DeleteHistoricProcessInstancesDto deleteHistoricProcessInstancesDto }) async
    test('test deleteHistoricProcessInstancesAsync', () async {
      // TODO
    });

    // Delete Variable Instances
    //
    // Deletes all variables of a process instance from the history by id.
    //
    //Future deleteHistoricVariableInstancesOfHistoricProcessInstance(String id) async
    test('test deleteHistoricVariableInstancesOfHistoricProcessInstance', () async {
      // TODO
    });

    // Get
    //
    // Retrieves a historic process instance by id, according to the `HistoricProcessInstance` interface in the engine.
    //
    //Future<HistoricProcessInstanceDto> getHistoricProcessInstance(String id) async
    test('test getHistoricProcessInstance', () async {
      // TODO
    });

    // Get Duration Report
    //
    // Retrieves a report about the duration of completed process instances, grouped by a period. These reports include the maximum, minimum and average duration of all completed process instances which were started in a given period.  **Note:** This only includes historic data.
    //
    //Future<List<DurationReportResultDto>> getHistoricProcessInstanceDurationReport(String reportType, String periodUnit, { String processDefinitionIdIn, String processDefinitionKeyIn, DateTime startedBefore, DateTime startedAfter }) async
    test('test getHistoricProcessInstanceDurationReport', () async {
      // TODO
    });

    // Get List
    //
    // Queries for historic process instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query-count/) method.
    //
    //Future<List<HistoricProcessInstanceDto>> getHistoricProcessInstances({ String sortBy, String sortOrder, int firstResult, int maxResults, String processInstanceId, String processInstanceIds, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionName, String processDefinitionNameLike, String processDefinitionKeyNotIn, String processInstanceBusinessKey, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, bool rootProcessInstances, bool finished, bool unfinished, bool withIncidents, bool withRootIncidents, String incidentType, String incidentStatus, String incidentMessage, String incidentMessageLike, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, DateTime executedActivityAfter, DateTime executedActivityBefore, DateTime executedJobAfter, DateTime executedJobBefore, String startedBy, String superProcessInstanceId, String subProcessInstanceId, String superCaseInstanceId, String subCaseInstanceId, String caseInstanceId, String tenantIdIn, bool withoutTenantId, String executedActivityIdIn, String activeActivityIdIn, bool active, bool suspended, bool completed, bool externallyTerminated, bool internallyTerminated, String variables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase }) async
    test('test getHistoricProcessInstances', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of historic process instances that fulfill the given parameters. Takes the same parameters as the [Get Process Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method.
    //
    //Future<CountResultDto> getHistoricProcessInstancesCount({ String processInstanceId, String processInstanceIds, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionName, String processDefinitionNameLike, String processDefinitionKeyNotIn, String processInstanceBusinessKey, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, bool rootProcessInstances, bool finished, bool unfinished, bool withIncidents, bool withRootIncidents, String incidentType, String incidentStatus, String incidentMessage, String incidentMessageLike, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, DateTime executedActivityAfter, DateTime executedActivityBefore, DateTime executedJobAfter, DateTime executedJobBefore, String startedBy, String superProcessInstanceId, String subProcessInstanceId, String superCaseInstanceId, String subCaseInstanceId, String caseInstanceId, String tenantIdIn, bool withoutTenantId, String executedActivityIdIn, String activeActivityIdIn, bool active, bool suspended, bool completed, bool externallyTerminated, bool internallyTerminated, String variables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase }) async
    test('test getHistoricProcessInstancesCount', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for historic process instances that fulfill the given parameters. This method is slightly more powerful than the [Get Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) because it allows filtering by multiple process variables of types `String`, `Number` or `Boolean`.
    //
    //Future<List<HistoricProcessInstanceDto>> queryHistoricProcessInstances({ int firstResult, int maxResults, HistoricProcessInstanceQueryDto historicProcessInstanceQueryDto }) async
    test('test queryHistoricProcessInstances', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Queries for the number of historic process instances that fulfill the given parameters. This method takes the same message body as the [Get Process Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/get-process-instance-query/) method and therefore it is slightly more powerful than the [Get Process Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/process-instance/post-process-instance-query-count/) method.
    //
    //Future<CountResultDto> queryHistoricProcessInstancesCount({ HistoricProcessInstanceQueryDto historicProcessInstanceQueryDto }) async
    test('test queryHistoricProcessInstancesCount', () async {
      // TODO
    });

    // Set Removal Time Async (POST)
    //
    // Sets the removal time to multiple historic process instances asynchronously (batch).  At least `historicProcessInstanceIds` or `historicProcessInstanceQuery` has to be provided. If both are provided, all instances matching query criterion and instances from the list will be updated with a removal time.
    //
    //Future<BatchDto> setRemovalTimeAsync({ SetRemovalTimeToHistoricProcessInstancesDto setRemovalTimeToHistoricProcessInstancesDto }) async
    test('test setRemovalTimeAsync', () async {
      // TODO
    });

  });
}
