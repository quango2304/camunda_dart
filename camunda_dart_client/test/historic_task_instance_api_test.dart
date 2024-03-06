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


/// tests for HistoricTaskInstanceApi
void main() {
  // final instance = HistoricTaskInstanceApi();

  group('tests for HistoricTaskInstanceApi', () {
    // Get Task Report (Historic)
    //
    // Retrieves a report of completed tasks. When the report type is set to `count`, the report contains a list of completed task counts where an entry contains the task name, the definition key of the task, the process definition id, the process definition key, the process definition name and the count of how many tasks were completed for the specified key in a given period. When the report type is set to `duration`, the report contains a minimum, maximum and average duration value of all completed task instances in a given period.
    //
    //Future<List<HistoricTaskInstanceReportResultDto>> getHistoricTaskInstanceReport({ String reportType, String periodUnit, DateTime completedBefore, DateTime completedAfter, String groupBy }) async
    test('test getHistoricTaskInstanceReport', () async {
      // TODO
    });

    // Get Tasks (Historic)
    //
    // Queries for historic tasks that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Task Count](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query-count/) method.
    //
    //Future<List<HistoricTaskInstanceDto>> getHistoricTaskInstances({ String taskId, String taskParentTaskId, String processInstanceId, String processInstanceBusinessKey, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, String executionId, String processDefinitionId, String processDefinitionKey, String processDefinitionName, String caseInstanceId, String caseExecutionId, String caseDefinitionId, String caseDefinitionKey, String caseDefinitionName, String activityInstanceIdIn, String taskName, String taskNameLike, String taskDescription, String taskDescriptionLike, String taskDefinitionKey, String taskDefinitionKeyIn, String taskDeleteReason, String taskDeleteReasonLike, String taskAssignee, String taskAssigneeLike, String taskOwner, String taskOwnerLike, int taskPriority, bool assigned, bool unassigned, bool finished, bool unfinished, bool processFinished, bool processUnfinished, DateTime taskDueDate, DateTime taskDueDateBefore, DateTime taskDueDateAfter, bool withoutTaskDueDate, DateTime taskFollowUpDate, DateTime taskFollowUpDateBefore, DateTime taskFollowUpDateAfter, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, String tenantIdIn, bool withoutTenantId, String taskVariables, String processVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String taskInvolvedUser, String taskInvolvedGroup, String taskHadCandidateUser, String taskHadCandidateGroup, bool withCandidateGroups, bool withoutCandidateGroups, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getHistoricTaskInstances', () async {
      // TODO
    });

    // Get Task Count
    //
    // Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method.
    //
    //Future<CountResultDto> getHistoricTaskInstancesCount({ String taskId, String taskParentTaskId, String processInstanceId, String processInstanceBusinessKey, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, String executionId, String processDefinitionId, String processDefinitionKey, String processDefinitionName, String caseInstanceId, String caseExecutionId, String caseDefinitionId, String caseDefinitionKey, String caseDefinitionName, String activityInstanceIdIn, String taskName, String taskNameLike, String taskDescription, String taskDescriptionLike, String taskDefinitionKey, String taskDefinitionKeyIn, String taskDeleteReason, String taskDeleteReasonLike, String taskAssignee, String taskAssigneeLike, String taskOwner, String taskOwnerLike, int taskPriority, bool assigned, bool unassigned, bool finished, bool unfinished, bool processFinished, bool processUnfinished, DateTime taskDueDate, DateTime taskDueDateBefore, DateTime taskDueDateAfter, bool withoutTaskDueDate, DateTime taskFollowUpDate, DateTime taskFollowUpDateBefore, DateTime taskFollowUpDateAfter, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, String tenantIdIn, bool withoutTenantId, String taskVariables, String processVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String taskInvolvedUser, String taskInvolvedGroup, String taskHadCandidateUser, String taskHadCandidateGroup, bool withCandidateGroups, bool withoutCandidateGroups }) async
    test('test getHistoricTaskInstancesCount', () async {
      // TODO
    });

    // Get Tasks (Historic) (POST)
    //
    // Queries for historic tasks that fulfill the given parameters. This method is slightly more powerful than the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query-count/) method.
    //
    //Future<List<HistoricTaskInstanceDto>> queryHistoricTaskInstances({ int firstResult, int maxResults, HistoricTaskInstanceQueryDto historicTaskInstanceQueryDto }) async
    test('test queryHistoricTaskInstances', () async {
      // TODO
    });

    // Get Task Count (POST)
    //
    // Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method. Corresponds to the size of the result set of the [Get Tasks (Historic) (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query/) method and takes the same parameters.
    //
    //Future<CountResultDto> queryHistoricTaskInstancesCount({ HistoricTaskInstanceQueryDto historicTaskInstanceQueryDto }) async
    test('test queryHistoricTaskInstancesCount', () async {
      // TODO
    });

  });
}
