//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class HistoricTaskInstanceApi {
  HistoricTaskInstanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get Task Report (Historic)
  ///
  /// Retrieves a report of completed tasks. When the report type is set to `count`, the report contains a list of completed task counts where an entry contains the task name, the definition key of the task, the process definition id, the process definition key, the process definition name and the count of how many tasks were completed for the specified key in a given period. When the report type is set to `duration`, the report contains a minimum, maximum and average duration value of all completed task instances in a given period.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] reportType:
  ///   **Mandatory.** Specifies the kind of the report to execute. To retrieve a report about the duration of process instances the value must be set to `duration`. For a report of the completed tasks in a specific timespan the value must be set to `count`.
  ///
  /// * [String] periodUnit:
  ///   When the report type is set to `duration`, this parameter is **mandatory**. Specifies the granularity of the report. Valid values are `month` and `quarter`.
  ///
  /// * [DateTime] completedBefore:
  ///   Restrict to tasks that were completed before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] completedAfter:
  ///   Restrict to tasks that were completed after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] groupBy:
  ///   When the report type is set to `count`, this parameter is **mandatory**. Groups the tasks report by a given criterion. Valid values are `taskName` and `processDefinition`.
  Future<Response> getHistoricTaskInstanceReportWithHttpInfo({ String? reportType, String? periodUnit, DateTime? completedBefore, DateTime? completedAfter, String? groupBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/task/report';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (reportType != null) {
      queryParams.addAll(_queryParams('', 'reportType', reportType));
    }
    if (periodUnit != null) {
      queryParams.addAll(_queryParams('', 'periodUnit', periodUnit));
    }
    if (completedBefore != null) {
      queryParams.addAll(_queryParams('', 'completedBefore', completedBefore));
    }
    if (completedAfter != null) {
      queryParams.addAll(_queryParams('', 'completedAfter', completedAfter));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Task Report (Historic)
  ///
  /// Retrieves a report of completed tasks. When the report type is set to `count`, the report contains a list of completed task counts where an entry contains the task name, the definition key of the task, the process definition id, the process definition key, the process definition name and the count of how many tasks were completed for the specified key in a given period. When the report type is set to `duration`, the report contains a minimum, maximum and average duration value of all completed task instances in a given period.
  ///
  /// Parameters:
  ///
  /// * [String] reportType:
  ///   **Mandatory.** Specifies the kind of the report to execute. To retrieve a report about the duration of process instances the value must be set to `duration`. For a report of the completed tasks in a specific timespan the value must be set to `count`.
  ///
  /// * [String] periodUnit:
  ///   When the report type is set to `duration`, this parameter is **mandatory**. Specifies the granularity of the report. Valid values are `month` and `quarter`.
  ///
  /// * [DateTime] completedBefore:
  ///   Restrict to tasks that were completed before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] completedAfter:
  ///   Restrict to tasks that were completed after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] groupBy:
  ///   When the report type is set to `count`, this parameter is **mandatory**. Groups the tasks report by a given criterion. Valid values are `taskName` and `processDefinition`.
  Future<List<HistoricTaskInstanceReportResultDto>?> getHistoricTaskInstanceReport({ String? reportType, String? periodUnit, DateTime? completedBefore, DateTime? completedAfter, String? groupBy, }) async {
    final response = await getHistoricTaskInstanceReportWithHttpInfo( reportType: reportType, periodUnit: periodUnit, completedBefore: completedBefore, completedAfter: completedAfter, groupBy: groupBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricTaskInstanceReportResultDto>') as List)
        .cast<HistoricTaskInstanceReportResultDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Tasks (Historic)
  ///
  /// Queries for historic tasks that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Task Count](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] taskParentTaskId:
  ///   Filter by parent task id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by  process instance business key that has the parameter value as a substring.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the task.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by the id of the case execution that executed the task.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed comma-separated activity instance ids.
  ///
  /// * [String] taskName:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] taskNameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] taskDescription:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] taskDescriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the passed comma-separated task definition keys.
  ///
  /// * [String] taskDeleteReason:
  ///   Restrict to tasks that have the given delete reason.
  ///
  /// * [String] taskDeleteReasonLike:
  ///   Restrict to tasks that have a delete reason that has the parameter value as a substring.
  ///
  /// * [String] taskAssignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] taskAssigneeLike:
  ///   Restrict to tasks that are assigned to users with the parameter value as a substring.
  ///
  /// * [String] taskOwner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] taskOwnerLike:
  ///   Restrict to tasks that are owned by users with the parameter value as a substring.
  ///
  /// * [int] taskPriority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [bool] finished:
  ///   Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processFinished:
  ///   Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processUnfinished:
  ///   Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskDueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withoutTaskDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskFollowUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] taskInvolvedUser:
  ///   Restrict to tasks with a historic identity link to the given user.
  ///
  /// * [String] taskInvolvedGroup:
  ///   Restrict to tasks with a historic identity link to the given group.
  ///
  /// * [String] taskHadCandidateUser:
  ///   Restrict to tasks with a historic identity link to the given candidate user.
  ///
  /// * [String] taskHadCandidateGroup:
  ///   Restrict to tasks with a historic identity link to the given candidate group.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<Response> getHistoricTaskInstancesWithHttpInfo({ String? taskId, String? taskParentTaskId, String? processInstanceId, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionName, String? caseInstanceId, String? caseExecutionId, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? activityInstanceIdIn, String? taskName, String? taskNameLike, String? taskDescription, String? taskDescriptionLike, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDeleteReason, String? taskDeleteReasonLike, String? taskAssignee, String? taskAssigneeLike, String? taskOwner, String? taskOwnerLike, int? taskPriority, bool? assigned, bool? unassigned, bool? finished, bool? unfinished, bool? processFinished, bool? processUnfinished, DateTime? taskDueDate, DateTime? taskDueDateBefore, DateTime? taskDueDateAfter, bool? withoutTaskDueDate, DateTime? taskFollowUpDate, DateTime? taskFollowUpDateBefore, DateTime? taskFollowUpDateAfter, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, String? taskVariables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? taskInvolvedUser, String? taskInvolvedGroup, String? taskHadCandidateUser, String? taskHadCandidateGroup, bool? withCandidateGroups, bool? withoutCandidateGroups, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/task';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (taskParentTaskId != null) {
      queryParams.addAll(_queryParams('', 'taskParentTaskId', taskParentTaskId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionName', caseDefinitionName));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (taskName != null) {
      queryParams.addAll(_queryParams('', 'taskName', taskName));
    }
    if (taskNameLike != null) {
      queryParams.addAll(_queryParams('', 'taskNameLike', taskNameLike));
    }
    if (taskDescription != null) {
      queryParams.addAll(_queryParams('', 'taskDescription', taskDescription));
    }
    if (taskDescriptionLike != null) {
      queryParams.addAll(_queryParams('', 'taskDescriptionLike', taskDescriptionLike));
    }
    if (taskDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKey', taskDefinitionKey));
    }
    if (taskDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyIn', taskDefinitionKeyIn));
    }
    if (taskDeleteReason != null) {
      queryParams.addAll(_queryParams('', 'taskDeleteReason', taskDeleteReason));
    }
    if (taskDeleteReasonLike != null) {
      queryParams.addAll(_queryParams('', 'taskDeleteReasonLike', taskDeleteReasonLike));
    }
    if (taskAssignee != null) {
      queryParams.addAll(_queryParams('', 'taskAssignee', taskAssignee));
    }
    if (taskAssigneeLike != null) {
      queryParams.addAll(_queryParams('', 'taskAssigneeLike', taskAssigneeLike));
    }
    if (taskOwner != null) {
      queryParams.addAll(_queryParams('', 'taskOwner', taskOwner));
    }
    if (taskOwnerLike != null) {
      queryParams.addAll(_queryParams('', 'taskOwnerLike', taskOwnerLike));
    }
    if (taskPriority != null) {
      queryParams.addAll(_queryParams('', 'taskPriority', taskPriority));
    }
    if (assigned != null) {
      queryParams.addAll(_queryParams('', 'assigned', assigned));
    }
    if (unassigned != null) {
      queryParams.addAll(_queryParams('', 'unassigned', unassigned));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (processFinished != null) {
      queryParams.addAll(_queryParams('', 'processFinished', processFinished));
    }
    if (processUnfinished != null) {
      queryParams.addAll(_queryParams('', 'processUnfinished', processUnfinished));
    }
    if (taskDueDate != null) {
      queryParams.addAll(_queryParams('', 'taskDueDate', taskDueDate));
    }
    if (taskDueDateBefore != null) {
      queryParams.addAll(_queryParams('', 'taskDueDateBefore', taskDueDateBefore));
    }
    if (taskDueDateAfter != null) {
      queryParams.addAll(_queryParams('', 'taskDueDateAfter', taskDueDateAfter));
    }
    if (withoutTaskDueDate != null) {
      queryParams.addAll(_queryParams('', 'withoutTaskDueDate', withoutTaskDueDate));
    }
    if (taskFollowUpDate != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDate', taskFollowUpDate));
    }
    if (taskFollowUpDateBefore != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDateBefore', taskFollowUpDateBefore));
    }
    if (taskFollowUpDateAfter != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDateAfter', taskFollowUpDateAfter));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (finishedBefore != null) {
      queryParams.addAll(_queryParams('', 'finishedBefore', finishedBefore));
    }
    if (finishedAfter != null) {
      queryParams.addAll(_queryParams('', 'finishedAfter', finishedAfter));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (taskVariables != null) {
      queryParams.addAll(_queryParams('', 'taskVariables', taskVariables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (taskInvolvedUser != null) {
      queryParams.addAll(_queryParams('', 'taskInvolvedUser', taskInvolvedUser));
    }
    if (taskInvolvedGroup != null) {
      queryParams.addAll(_queryParams('', 'taskInvolvedGroup', taskInvolvedGroup));
    }
    if (taskHadCandidateUser != null) {
      queryParams.addAll(_queryParams('', 'taskHadCandidateUser', taskHadCandidateUser));
    }
    if (taskHadCandidateGroup != null) {
      queryParams.addAll(_queryParams('', 'taskHadCandidateGroup', taskHadCandidateGroup));
    }
    if (withCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withCandidateGroups', withCandidateGroups));
    }
    if (withoutCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateGroups', withoutCandidateGroups));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
    }
    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Tasks (Historic)
  ///
  /// Queries for historic tasks that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Task Count](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] taskParentTaskId:
  ///   Filter by parent task id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by  process instance business key that has the parameter value as a substring.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the task.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by the id of the case execution that executed the task.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed comma-separated activity instance ids.
  ///
  /// * [String] taskName:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] taskNameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] taskDescription:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] taskDescriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the passed comma-separated task definition keys.
  ///
  /// * [String] taskDeleteReason:
  ///   Restrict to tasks that have the given delete reason.
  ///
  /// * [String] taskDeleteReasonLike:
  ///   Restrict to tasks that have a delete reason that has the parameter value as a substring.
  ///
  /// * [String] taskAssignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] taskAssigneeLike:
  ///   Restrict to tasks that are assigned to users with the parameter value as a substring.
  ///
  /// * [String] taskOwner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] taskOwnerLike:
  ///   Restrict to tasks that are owned by users with the parameter value as a substring.
  ///
  /// * [int] taskPriority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [bool] finished:
  ///   Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processFinished:
  ///   Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processUnfinished:
  ///   Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskDueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withoutTaskDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskFollowUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] taskInvolvedUser:
  ///   Restrict to tasks with a historic identity link to the given user.
  ///
  /// * [String] taskInvolvedGroup:
  ///   Restrict to tasks with a historic identity link to the given group.
  ///
  /// * [String] taskHadCandidateUser:
  ///   Restrict to tasks with a historic identity link to the given candidate user.
  ///
  /// * [String] taskHadCandidateGroup:
  ///   Restrict to tasks with a historic identity link to the given candidate group.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] sortBy:
  ///   Sort the results lexicographically by a given criterion. Must be used in conjunction with the sortOrder parameter.
  ///
  /// * [String] sortOrder:
  ///   Sort the results in a given order. Values may be asc for ascending order or desc for descending order. Must be used in conjunction with the sortBy parameter.
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  Future<List<HistoricTaskInstanceDto>?> getHistoricTaskInstances({ String? taskId, String? taskParentTaskId, String? processInstanceId, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionName, String? caseInstanceId, String? caseExecutionId, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? activityInstanceIdIn, String? taskName, String? taskNameLike, String? taskDescription, String? taskDescriptionLike, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDeleteReason, String? taskDeleteReasonLike, String? taskAssignee, String? taskAssigneeLike, String? taskOwner, String? taskOwnerLike, int? taskPriority, bool? assigned, bool? unassigned, bool? finished, bool? unfinished, bool? processFinished, bool? processUnfinished, DateTime? taskDueDate, DateTime? taskDueDateBefore, DateTime? taskDueDateAfter, bool? withoutTaskDueDate, DateTime? taskFollowUpDate, DateTime? taskFollowUpDateBefore, DateTime? taskFollowUpDateAfter, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, String? taskVariables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? taskInvolvedUser, String? taskInvolvedGroup, String? taskHadCandidateUser, String? taskHadCandidateGroup, bool? withCandidateGroups, bool? withoutCandidateGroups, String? sortBy, String? sortOrder, int? firstResult, int? maxResults, }) async {
    final response = await getHistoricTaskInstancesWithHttpInfo( taskId: taskId, taskParentTaskId: taskParentTaskId, processInstanceId: processInstanceId, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, executionId: executionId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionName: processDefinitionName, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseDefinitionName: caseDefinitionName, activityInstanceIdIn: activityInstanceIdIn, taskName: taskName, taskNameLike: taskNameLike, taskDescription: taskDescription, taskDescriptionLike: taskDescriptionLike, taskDefinitionKey: taskDefinitionKey, taskDefinitionKeyIn: taskDefinitionKeyIn, taskDeleteReason: taskDeleteReason, taskDeleteReasonLike: taskDeleteReasonLike, taskAssignee: taskAssignee, taskAssigneeLike: taskAssigneeLike, taskOwner: taskOwner, taskOwnerLike: taskOwnerLike, taskPriority: taskPriority, assigned: assigned, unassigned: unassigned, finished: finished, unfinished: unfinished, processFinished: processFinished, processUnfinished: processUnfinished, taskDueDate: taskDueDate, taskDueDateBefore: taskDueDateBefore, taskDueDateAfter: taskDueDateAfter, withoutTaskDueDate: withoutTaskDueDate, taskFollowUpDate: taskFollowUpDate, taskFollowUpDateBefore: taskFollowUpDateBefore, taskFollowUpDateAfter: taskFollowUpDateAfter, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, taskVariables: taskVariables, processVariables: processVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, taskInvolvedUser: taskInvolvedUser, taskInvolvedGroup: taskInvolvedGroup, taskHadCandidateUser: taskHadCandidateUser, taskHadCandidateGroup: taskHadCandidateGroup, withCandidateGroups: withCandidateGroups, withoutCandidateGroups: withoutCandidateGroups, sortBy: sortBy, sortOrder: sortOrder, firstResult: firstResult, maxResults: maxResults, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricTaskInstanceDto>') as List)
        .cast<HistoricTaskInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Task Count
  ///
  /// Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] taskParentTaskId:
  ///   Filter by parent task id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by  process instance business key that has the parameter value as a substring.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the task.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by the id of the case execution that executed the task.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed comma-separated activity instance ids.
  ///
  /// * [String] taskName:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] taskNameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] taskDescription:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] taskDescriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the passed comma-separated task definition keys.
  ///
  /// * [String] taskDeleteReason:
  ///   Restrict to tasks that have the given delete reason.
  ///
  /// * [String] taskDeleteReasonLike:
  ///   Restrict to tasks that have a delete reason that has the parameter value as a substring.
  ///
  /// * [String] taskAssignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] taskAssigneeLike:
  ///   Restrict to tasks that are assigned to users with the parameter value as a substring.
  ///
  /// * [String] taskOwner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] taskOwnerLike:
  ///   Restrict to tasks that are owned by users with the parameter value as a substring.
  ///
  /// * [int] taskPriority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [bool] finished:
  ///   Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processFinished:
  ///   Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processUnfinished:
  ///   Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskDueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withoutTaskDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskFollowUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] taskInvolvedUser:
  ///   Restrict to tasks with a historic identity link to the given user.
  ///
  /// * [String] taskInvolvedGroup:
  ///   Restrict to tasks with a historic identity link to the given group.
  ///
  /// * [String] taskHadCandidateUser:
  ///   Restrict to tasks with a historic identity link to the given candidate user.
  ///
  /// * [String] taskHadCandidateGroup:
  ///   Restrict to tasks with a historic identity link to the given candidate group.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  Future<Response> getHistoricTaskInstancesCountWithHttpInfo({ String? taskId, String? taskParentTaskId, String? processInstanceId, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionName, String? caseInstanceId, String? caseExecutionId, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? activityInstanceIdIn, String? taskName, String? taskNameLike, String? taskDescription, String? taskDescriptionLike, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDeleteReason, String? taskDeleteReasonLike, String? taskAssignee, String? taskAssigneeLike, String? taskOwner, String? taskOwnerLike, int? taskPriority, bool? assigned, bool? unassigned, bool? finished, bool? unfinished, bool? processFinished, bool? processUnfinished, DateTime? taskDueDate, DateTime? taskDueDateBefore, DateTime? taskDueDateAfter, bool? withoutTaskDueDate, DateTime? taskFollowUpDate, DateTime? taskFollowUpDateBefore, DateTime? taskFollowUpDateAfter, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, String? taskVariables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? taskInvolvedUser, String? taskInvolvedGroup, String? taskHadCandidateUser, String? taskHadCandidateGroup, bool? withCandidateGroups, bool? withoutCandidateGroups, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/task/count';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (taskId != null) {
      queryParams.addAll(_queryParams('', 'taskId', taskId));
    }
    if (taskParentTaskId != null) {
      queryParams.addAll(_queryParams('', 'taskParentTaskId', taskParentTaskId));
    }
    if (processInstanceId != null) {
      queryParams.addAll(_queryParams('', 'processInstanceId', processInstanceId));
    }
    if (processInstanceBusinessKey != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKey', processInstanceBusinessKey));
    }
    if (processInstanceBusinessKeyIn != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyIn', processInstanceBusinessKeyIn));
    }
    if (processInstanceBusinessKeyLike != null) {
      queryParams.addAll(_queryParams('', 'processInstanceBusinessKeyLike', processInstanceBusinessKeyLike));
    }
    if (executionId != null) {
      queryParams.addAll(_queryParams('', 'executionId', executionId));
    }
    if (processDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionId', processDefinitionId));
    }
    if (processDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionKey', processDefinitionKey));
    }
    if (processDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'processDefinitionName', processDefinitionName));
    }
    if (caseInstanceId != null) {
      queryParams.addAll(_queryParams('', 'caseInstanceId', caseInstanceId));
    }
    if (caseExecutionId != null) {
      queryParams.addAll(_queryParams('', 'caseExecutionId', caseExecutionId));
    }
    if (caseDefinitionId != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionId', caseDefinitionId));
    }
    if (caseDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionKey', caseDefinitionKey));
    }
    if (caseDefinitionName != null) {
      queryParams.addAll(_queryParams('', 'caseDefinitionName', caseDefinitionName));
    }
    if (activityInstanceIdIn != null) {
      queryParams.addAll(_queryParams('', 'activityInstanceIdIn', activityInstanceIdIn));
    }
    if (taskName != null) {
      queryParams.addAll(_queryParams('', 'taskName', taskName));
    }
    if (taskNameLike != null) {
      queryParams.addAll(_queryParams('', 'taskNameLike', taskNameLike));
    }
    if (taskDescription != null) {
      queryParams.addAll(_queryParams('', 'taskDescription', taskDescription));
    }
    if (taskDescriptionLike != null) {
      queryParams.addAll(_queryParams('', 'taskDescriptionLike', taskDescriptionLike));
    }
    if (taskDefinitionKey != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKey', taskDefinitionKey));
    }
    if (taskDefinitionKeyIn != null) {
      queryParams.addAll(_queryParams('', 'taskDefinitionKeyIn', taskDefinitionKeyIn));
    }
    if (taskDeleteReason != null) {
      queryParams.addAll(_queryParams('', 'taskDeleteReason', taskDeleteReason));
    }
    if (taskDeleteReasonLike != null) {
      queryParams.addAll(_queryParams('', 'taskDeleteReasonLike', taskDeleteReasonLike));
    }
    if (taskAssignee != null) {
      queryParams.addAll(_queryParams('', 'taskAssignee', taskAssignee));
    }
    if (taskAssigneeLike != null) {
      queryParams.addAll(_queryParams('', 'taskAssigneeLike', taskAssigneeLike));
    }
    if (taskOwner != null) {
      queryParams.addAll(_queryParams('', 'taskOwner', taskOwner));
    }
    if (taskOwnerLike != null) {
      queryParams.addAll(_queryParams('', 'taskOwnerLike', taskOwnerLike));
    }
    if (taskPriority != null) {
      queryParams.addAll(_queryParams('', 'taskPriority', taskPriority));
    }
    if (assigned != null) {
      queryParams.addAll(_queryParams('', 'assigned', assigned));
    }
    if (unassigned != null) {
      queryParams.addAll(_queryParams('', 'unassigned', unassigned));
    }
    if (finished != null) {
      queryParams.addAll(_queryParams('', 'finished', finished));
    }
    if (unfinished != null) {
      queryParams.addAll(_queryParams('', 'unfinished', unfinished));
    }
    if (processFinished != null) {
      queryParams.addAll(_queryParams('', 'processFinished', processFinished));
    }
    if (processUnfinished != null) {
      queryParams.addAll(_queryParams('', 'processUnfinished', processUnfinished));
    }
    if (taskDueDate != null) {
      queryParams.addAll(_queryParams('', 'taskDueDate', taskDueDate));
    }
    if (taskDueDateBefore != null) {
      queryParams.addAll(_queryParams('', 'taskDueDateBefore', taskDueDateBefore));
    }
    if (taskDueDateAfter != null) {
      queryParams.addAll(_queryParams('', 'taskDueDateAfter', taskDueDateAfter));
    }
    if (withoutTaskDueDate != null) {
      queryParams.addAll(_queryParams('', 'withoutTaskDueDate', withoutTaskDueDate));
    }
    if (taskFollowUpDate != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDate', taskFollowUpDate));
    }
    if (taskFollowUpDateBefore != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDateBefore', taskFollowUpDateBefore));
    }
    if (taskFollowUpDateAfter != null) {
      queryParams.addAll(_queryParams('', 'taskFollowUpDateAfter', taskFollowUpDateAfter));
    }
    if (startedBefore != null) {
      queryParams.addAll(_queryParams('', 'startedBefore', startedBefore));
    }
    if (startedAfter != null) {
      queryParams.addAll(_queryParams('', 'startedAfter', startedAfter));
    }
    if (finishedBefore != null) {
      queryParams.addAll(_queryParams('', 'finishedBefore', finishedBefore));
    }
    if (finishedAfter != null) {
      queryParams.addAll(_queryParams('', 'finishedAfter', finishedAfter));
    }
    if (tenantIdIn != null) {
      queryParams.addAll(_queryParams('', 'tenantIdIn', tenantIdIn));
    }
    if (withoutTenantId != null) {
      queryParams.addAll(_queryParams('', 'withoutTenantId', withoutTenantId));
    }
    if (taskVariables != null) {
      queryParams.addAll(_queryParams('', 'taskVariables', taskVariables));
    }
    if (processVariables != null) {
      queryParams.addAll(_queryParams('', 'processVariables', processVariables));
    }
    if (variableNamesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableNamesIgnoreCase', variableNamesIgnoreCase));
    }
    if (variableValuesIgnoreCase != null) {
      queryParams.addAll(_queryParams('', 'variableValuesIgnoreCase', variableValuesIgnoreCase));
    }
    if (taskInvolvedUser != null) {
      queryParams.addAll(_queryParams('', 'taskInvolvedUser', taskInvolvedUser));
    }
    if (taskInvolvedGroup != null) {
      queryParams.addAll(_queryParams('', 'taskInvolvedGroup', taskInvolvedGroup));
    }
    if (taskHadCandidateUser != null) {
      queryParams.addAll(_queryParams('', 'taskHadCandidateUser', taskHadCandidateUser));
    }
    if (taskHadCandidateGroup != null) {
      queryParams.addAll(_queryParams('', 'taskHadCandidateGroup', taskHadCandidateGroup));
    }
    if (withCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withCandidateGroups', withCandidateGroups));
    }
    if (withoutCandidateGroups != null) {
      queryParams.addAll(_queryParams('', 'withoutCandidateGroups', withoutCandidateGroups));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Task Count
  ///
  /// Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method.
  ///
  /// Parameters:
  ///
  /// * [String] taskId:
  ///   Filter by task id.
  ///
  /// * [String] taskParentTaskId:
  ///   Filter by parent task id.
  ///
  /// * [String] processInstanceId:
  ///   Filter by process instance id.
  ///
  /// * [String] processInstanceBusinessKey:
  ///   Filter by process instance business key.
  ///
  /// * [String] processInstanceBusinessKeyIn:
  ///   Filter by process instances with one of the give business keys. The keys need to be in a comma-separated list.
  ///
  /// * [String] processInstanceBusinessKeyLike:
  ///   Filter by  process instance business key that has the parameter value as a substring.
  ///
  /// * [String] executionId:
  ///   Filter by the id of the execution that executed the task.
  ///
  /// * [String] processDefinitionId:
  ///   Filter by process definition id.
  ///
  /// * [String] processDefinitionKey:
  ///   Restrict to tasks that belong to a process definition with the given key.
  ///
  /// * [String] processDefinitionName:
  ///   Restrict to tasks that belong to a process definition with the given name.
  ///
  /// * [String] caseInstanceId:
  ///   Filter by case instance id.
  ///
  /// * [String] caseExecutionId:
  ///   Filter by the id of the case execution that executed the task.
  ///
  /// * [String] caseDefinitionId:
  ///   Filter by case definition id.
  ///
  /// * [String] caseDefinitionKey:
  ///   Restrict to tasks that belong to a case definition with the given key.
  ///
  /// * [String] caseDefinitionName:
  ///   Restrict to tasks that belong to a case definition with the given name.
  ///
  /// * [String] activityInstanceIdIn:
  ///   Only include tasks which belong to one of the passed comma-separated activity instance ids.
  ///
  /// * [String] taskName:
  ///   Restrict to tasks that have the given name.
  ///
  /// * [String] taskNameLike:
  ///   Restrict to tasks that have a name with the given parameter value as substring.
  ///
  /// * [String] taskDescription:
  ///   Restrict to tasks that have the given description.
  ///
  /// * [String] taskDescriptionLike:
  ///   Restrict to tasks that have a description that has the parameter value as a substring.
  ///
  /// * [String] taskDefinitionKey:
  ///   Restrict to tasks that have the given key.
  ///
  /// * [String] taskDefinitionKeyIn:
  ///   Restrict to tasks that have one of the passed comma-separated task definition keys.
  ///
  /// * [String] taskDeleteReason:
  ///   Restrict to tasks that have the given delete reason.
  ///
  /// * [String] taskDeleteReasonLike:
  ///   Restrict to tasks that have a delete reason that has the parameter value as a substring.
  ///
  /// * [String] taskAssignee:
  ///   Restrict to tasks that the given user is assigned to.
  ///
  /// * [String] taskAssigneeLike:
  ///   Restrict to tasks that are assigned to users with the parameter value as a substring.
  ///
  /// * [String] taskOwner:
  ///   Restrict to tasks that the given user owns.
  ///
  /// * [String] taskOwnerLike:
  ///   Restrict to tasks that are owned by users with the parameter value as a substring.
  ///
  /// * [int] taskPriority:
  ///   Restrict to tasks that have the given priority.
  ///
  /// * [bool] assigned:
  ///   If set to `true`, restricts the query to all tasks that are assigned.
  ///
  /// * [bool] unassigned:
  ///   If set to `true`, restricts the query to all tasks that are unassigned.
  ///
  /// * [bool] finished:
  ///   Only include finished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] unfinished:
  ///   Only include unfinished tasks. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processFinished:
  ///   Only include tasks of finished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] processUnfinished:
  ///   Only include tasks of unfinished processes. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskDueDate:
  ///   Restrict to tasks that are due on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateBefore:
  ///   Restrict to tasks that are due before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskDueDateAfter:
  ///   Restrict to tasks that are due after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [bool] withoutTaskDueDate:
  ///   Only include tasks which have no due date. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [DateTime] taskFollowUpDate:
  ///   Restrict to tasks that have a followUp date on the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateBefore:
  ///   Restrict to tasks that have a followUp date before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] taskFollowUpDateAfter:
  ///   Restrict to tasks that have a followUp date after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedBefore:
  ///   Restrict to tasks that were started before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] startedAfter:
  ///   Restrict to tasks that were started after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedBefore:
  ///   Restrict to tasks that were finished before the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [DateTime] finishedAfter:
  ///   Restrict to tasks that were finished after the given date. By [default](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/), the date must have the format `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., `2013-01-23T14:42:45.000+0200`.
  ///
  /// * [String] tenantIdIn:
  ///   Filter by a comma-separated list of tenant ids. A task instance must have one of the given tenant ids.
  ///
  /// * [bool] withoutTenantId:
  ///   Only include historic task instances that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [String] taskVariables:
  ///   Only include tasks that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [String] processVariables:
  ///   Only include tasks that belong to process instances that have variables with certain values. Variable filtering expressions are comma-separated and are structured as follows:  A valid parameter value has the form `key_operator_value`. `key` is the variable name, `operator` is the comparison operator to be used and `value` the variable value. **Note:** Values are always treated as `String` objects on server side.   Valid operator values are: * `eq` - equal to; * `neq` - not equal to; * `gt` - greater than; * `gteq` - greater than or equal to; * `lt` - lower than; * `lteq` - lower than or equal to; * `like`; * `notLike`.  `key` and `value` may not contain underscore or comma characters.
  ///
  /// * [bool] variableNamesIgnoreCase:
  ///   Match the variable name provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableName** and **variablename** are treated as equal.
  ///
  /// * [bool] variableValuesIgnoreCase:
  ///   Match the variable value provided in `taskVariables` and `processVariables` case- insensitively. If set to `true` **variableValue** and **variablevalue** are treated as equal.
  ///
  /// * [String] taskInvolvedUser:
  ///   Restrict to tasks with a historic identity link to the given user.
  ///
  /// * [String] taskInvolvedGroup:
  ///   Restrict to tasks with a historic identity link to the given group.
  ///
  /// * [String] taskHadCandidateUser:
  ///   Restrict to tasks with a historic identity link to the given candidate user.
  ///
  /// * [String] taskHadCandidateGroup:
  ///   Restrict to tasks with a historic identity link to the given candidate group.
  ///
  /// * [bool] withCandidateGroups:
  ///   Only include tasks which have a candidate group. Value may only be `true`, as `false` is the default behavior.
  ///
  /// * [bool] withoutCandidateGroups:
  ///   Only include tasks which have no candidate group. Value may only be `true`, as `false` is the default behavior.
  Future<CountResultDto?> getHistoricTaskInstancesCount({ String? taskId, String? taskParentTaskId, String? processInstanceId, String? processInstanceBusinessKey, String? processInstanceBusinessKeyIn, String? processInstanceBusinessKeyLike, String? executionId, String? processDefinitionId, String? processDefinitionKey, String? processDefinitionName, String? caseInstanceId, String? caseExecutionId, String? caseDefinitionId, String? caseDefinitionKey, String? caseDefinitionName, String? activityInstanceIdIn, String? taskName, String? taskNameLike, String? taskDescription, String? taskDescriptionLike, String? taskDefinitionKey, String? taskDefinitionKeyIn, String? taskDeleteReason, String? taskDeleteReasonLike, String? taskAssignee, String? taskAssigneeLike, String? taskOwner, String? taskOwnerLike, int? taskPriority, bool? assigned, bool? unassigned, bool? finished, bool? unfinished, bool? processFinished, bool? processUnfinished, DateTime? taskDueDate, DateTime? taskDueDateBefore, DateTime? taskDueDateAfter, bool? withoutTaskDueDate, DateTime? taskFollowUpDate, DateTime? taskFollowUpDateBefore, DateTime? taskFollowUpDateAfter, DateTime? startedBefore, DateTime? startedAfter, DateTime? finishedBefore, DateTime? finishedAfter, String? tenantIdIn, bool? withoutTenantId, String? taskVariables, String? processVariables, bool? variableNamesIgnoreCase, bool? variableValuesIgnoreCase, String? taskInvolvedUser, String? taskInvolvedGroup, String? taskHadCandidateUser, String? taskHadCandidateGroup, bool? withCandidateGroups, bool? withoutCandidateGroups, }) async {
    final response = await getHistoricTaskInstancesCountWithHttpInfo( taskId: taskId, taskParentTaskId: taskParentTaskId, processInstanceId: processInstanceId, processInstanceBusinessKey: processInstanceBusinessKey, processInstanceBusinessKeyIn: processInstanceBusinessKeyIn, processInstanceBusinessKeyLike: processInstanceBusinessKeyLike, executionId: executionId, processDefinitionId: processDefinitionId, processDefinitionKey: processDefinitionKey, processDefinitionName: processDefinitionName, caseInstanceId: caseInstanceId, caseExecutionId: caseExecutionId, caseDefinitionId: caseDefinitionId, caseDefinitionKey: caseDefinitionKey, caseDefinitionName: caseDefinitionName, activityInstanceIdIn: activityInstanceIdIn, taskName: taskName, taskNameLike: taskNameLike, taskDescription: taskDescription, taskDescriptionLike: taskDescriptionLike, taskDefinitionKey: taskDefinitionKey, taskDefinitionKeyIn: taskDefinitionKeyIn, taskDeleteReason: taskDeleteReason, taskDeleteReasonLike: taskDeleteReasonLike, taskAssignee: taskAssignee, taskAssigneeLike: taskAssigneeLike, taskOwner: taskOwner, taskOwnerLike: taskOwnerLike, taskPriority: taskPriority, assigned: assigned, unassigned: unassigned, finished: finished, unfinished: unfinished, processFinished: processFinished, processUnfinished: processUnfinished, taskDueDate: taskDueDate, taskDueDateBefore: taskDueDateBefore, taskDueDateAfter: taskDueDateAfter, withoutTaskDueDate: withoutTaskDueDate, taskFollowUpDate: taskFollowUpDate, taskFollowUpDateBefore: taskFollowUpDateBefore, taskFollowUpDateAfter: taskFollowUpDateAfter, startedBefore: startedBefore, startedAfter: startedAfter, finishedBefore: finishedBefore, finishedAfter: finishedAfter, tenantIdIn: tenantIdIn, withoutTenantId: withoutTenantId, taskVariables: taskVariables, processVariables: processVariables, variableNamesIgnoreCase: variableNamesIgnoreCase, variableValuesIgnoreCase: variableValuesIgnoreCase, taskInvolvedUser: taskInvolvedUser, taskInvolvedGroup: taskInvolvedGroup, taskHadCandidateUser: taskHadCandidateUser, taskHadCandidateGroup: taskHadCandidateGroup, withCandidateGroups: withCandidateGroups, withoutCandidateGroups: withoutCandidateGroups, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResultDto',) as CountResultDto;
    
    }
    return null;
  }

  /// Get Tasks (Historic) (POST)
  ///
  /// Queries for historic tasks that fulfill the given parameters. This method is slightly more powerful than the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query-count/) method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricTaskInstanceQueryDto] historicTaskInstanceQueryDto:
  Future<Response> queryHistoricTaskInstancesWithHttpInfo({ int? firstResult, int? maxResults, HistoricTaskInstanceQueryDto? historicTaskInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/task';

    // ignore: prefer_final_locals
    Object? postBody = historicTaskInstanceQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (firstResult != null) {
      queryParams.addAll(_queryParams('', 'firstResult', firstResult));
    }
    if (maxResults != null) {
      queryParams.addAll(_queryParams('', 'maxResults', maxResults));
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Tasks (Historic) (POST)
  ///
  /// Queries for historic tasks that fulfill the given parameters. This method is slightly more powerful than the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query-count/) method.
  ///
  /// Parameters:
  ///
  /// * [int] firstResult:
  ///   Pagination of results. Specifies the index of the first result to return.
  ///
  /// * [int] maxResults:
  ///   Pagination of results. Specifies the maximum number of results to return. Will return less results if there are no more results left.
  ///
  /// * [HistoricTaskInstanceQueryDto] historicTaskInstanceQueryDto:
  Future<List<HistoricTaskInstanceDto>?> queryHistoricTaskInstances({ int? firstResult, int? maxResults, HistoricTaskInstanceQueryDto? historicTaskInstanceQueryDto, }) async {
    final response = await queryHistoricTaskInstancesWithHttpInfo( firstResult: firstResult, maxResults: maxResults, historicTaskInstanceQueryDto: historicTaskInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<HistoricTaskInstanceDto>') as List)
        .cast<HistoricTaskInstanceDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get Task Count (POST)
  ///
  /// Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method. Corresponds to the size of the result set of the [Get Tasks (Historic) (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query/) method and takes the same parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [HistoricTaskInstanceQueryDto] historicTaskInstanceQueryDto:
  Future<Response> queryHistoricTaskInstancesCountWithHttpInfo({ HistoricTaskInstanceQueryDto? historicTaskInstanceQueryDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/history/task/count';

    // ignore: prefer_final_locals
    Object? postBody = historicTaskInstanceQueryDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get Task Count (POST)
  ///
  /// Queries for the number of historic tasks that fulfill the given parameters. Takes the same parameters as the [Get Tasks (Historic)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/get-task-query/) method. Corresponds to the size of the result set of the [Get Tasks (Historic) (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/task/post-task-query/) method and takes the same parameters.
  ///
  /// Parameters:
  ///
  /// * [HistoricTaskInstanceQueryDto] historicTaskInstanceQueryDto:
  Future<CountResultDto?> queryHistoricTaskInstancesCount({ HistoricTaskInstanceQueryDto? historicTaskInstanceQueryDto, }) async {
    final response = await queryHistoricTaskInstancesCountWithHttpInfo( historicTaskInstanceQueryDto: historicTaskInstanceQueryDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountResultDto',) as CountResultDto;
    
    }
    return null;
  }
}
