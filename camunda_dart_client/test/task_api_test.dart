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


/// tests for TaskApi
void main() {
  // final instance = TaskApi();

  group('tests for TaskApi', () {
    // Claim
    //
    // Claims a task for a specific user.  **Note:** The difference with the [Set Assignee](https://docs.camunda.org/manual/7.20/reference/rest/task/post-assignee/) method is that here a check is performed to see if the task already has a user assigned to it.
    //
    //Future claim(String id, { UserIdDto userIdDto }) async
    test('test claim', () async {
      // TODO
    });

    // Complete
    //
    // Completes a task and updates process variables.
    //
    //Future<Map<String, VariableValueDto>> complete(String id, { CompleteTaskDto completeTaskDto }) async
    test('test complete', () async {
      // TODO
    });

    // Create
    //
    // Creates a new task.
    //
    //Future createTask({ TaskDto taskDto }) async
    test('test createTask', () async {
      // TODO
    });

    // Delegate
    //
    // Delegates a task to another user.
    //
    //Future delegateTask(String id, { UserIdDto userIdDto }) async
    test('test delegateTask', () async {
      // TODO
    });

    // Delete
    //
    // Removes a task by id.
    //
    //Future deleteTask(String id) async
    test('test deleteTask', () async {
      // TODO
    });

    // Get Deployed Form
    //
    // Retrieves the deployed form that is referenced from a given task. For further information please refer to the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
    //
    //Future<MultipartFile> getDeployedForm(String id) async
    test('test getDeployedForm', () async {
      // TODO
    });

    // Get Form Key
    //
    // Retrieves the form key for a task. The form key corresponds to the `FormData#formKey` property in the engine. This key can be used to do task-specific form rendering in client applications. Additionally, the context path of the containing process application is returned.
    //
    //Future<FormDto> getForm(String id) async
    test('test getForm', () async {
      // TODO
    });

    // Get Task Form Variables
    //
    // Retrieves the form variables for a task. The form variables take form data specified on the task into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
    //
    //Future<Map<String, VariableValueDto>> getFormVariables(String id, { String variableNames, bool deserializeValues }) async
    test('test getFormVariables', () async {
      // TODO
    });

    // Get Rendered Form
    //
    // Retrieves the rendered form for a task. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<MultipartFile> getRenderedForm(String id) async
    test('test getRenderedForm', () async {
      // TODO
    });

    // Get
    //
    // Retrieves a task by id.
    //
    //Future<TaskDto> getTask(String id) async
    test('test getTask', () async {
      // TODO
    });

    // Get Task Count By Candidate Group
    //
    // Retrieves the number of tasks for each candidate group.
    //
    //Future<List<TaskCountByCandidateGroupResultDto>> getTaskCountByCandidateGroup() async
    test('test getTaskCountByCandidateGroup', () async {
      // TODO
    });

    // Get List
    //
    // Queries for tasks that fulfill a given filter. The size of the result set can be retrieved by using the Get Task Count method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
    //
    //Future<List<TaskDto>> getTasks({ String taskId, String taskIdIn, String processInstanceId, String processInstanceIdIn, String processInstanceBusinessKey, String processInstanceBusinessKeyExpression, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, String processInstanceBusinessKeyLikeExpression, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionName, String processDefinitionNameLike, String executionId, String caseInstanceId, String caseInstanceBusinessKey, String caseInstanceBusinessKeyLike, String caseDefinitionId, String caseDefinitionKey, String caseDefinitionName, String caseDefinitionNameLike, String caseExecutionId, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, String assignee, String assigneeExpression, String assigneeLike, String assigneeLikeExpression, String assigneeIn, String assigneeNotIn, String owner, String ownerExpression, String candidateGroup, String candidateGroupExpression, String candidateUser, String candidateUserExpression, bool includeAssignedTasks, String involvedUser, String involvedUserExpression, bool assigned, bool unassigned, String taskDefinitionKey, String taskDefinitionKeyIn, String taskDefinitionKeyLike, String name, String nameNotEqual, String nameLike, String nameNotLike, String description, String descriptionLike, int priority, int maxPriority, int minPriority, String dueDate, String dueDateExpression, String dueAfter, String dueAfterExpression, String dueBefore, String dueBeforeExpression, bool withoutDueDate, String followUpDate, String followUpDateExpression, String followUpAfter, String followUpAfterExpression, String followUpBefore, String followUpBeforeExpression, String followUpBeforeOrNotExistent, String followUpBeforeOrNotExistentExpression, String createdOn, String createdOnExpression, String createdAfter, String createdAfterExpression, String createdBefore, String createdBeforeExpression, String updatedAfter, String updatedAfterExpression, String delegationState, String candidateGroups, String candidateGroupsExpression, bool withCandidateGroups, bool withoutCandidateGroups, bool withCandidateUsers, bool withoutCandidateUsers, bool active, bool suspended, String taskVariables, String processVariables, String caseInstanceVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String parentTaskId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getTasks', () async {
      // TODO
    });

    // Get List Count
    //
    // Retrieves the number of tasks that fulfill a provided filter. Corresponds to the size of the result set when using the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/) method.  **Security Consideration:** There are several query parameters (such as assigneeExpression) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) for custom code in the user guide for details.
    //
    //Future<CountResultDto> getTasksCount({ String taskId, String taskIdIn, String processInstanceId, String processInstanceIdIn, String processInstanceBusinessKey, String processInstanceBusinessKeyExpression, String processInstanceBusinessKeyIn, String processInstanceBusinessKeyLike, String processInstanceBusinessKeyLikeExpression, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionName, String processDefinitionNameLike, String executionId, String caseInstanceId, String caseInstanceBusinessKey, String caseInstanceBusinessKeyLike, String caseDefinitionId, String caseDefinitionKey, String caseDefinitionName, String caseDefinitionNameLike, String caseExecutionId, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, String assignee, String assigneeExpression, String assigneeLike, String assigneeLikeExpression, String assigneeIn, String assigneeNotIn, String owner, String ownerExpression, String candidateGroup, String candidateGroupExpression, String candidateUser, String candidateUserExpression, bool includeAssignedTasks, String involvedUser, String involvedUserExpression, bool assigned, bool unassigned, String taskDefinitionKey, String taskDefinitionKeyIn, String taskDefinitionKeyLike, String name, String nameNotEqual, String nameLike, String nameNotLike, String description, String descriptionLike, int priority, int maxPriority, int minPriority, String dueDate, String dueDateExpression, String dueAfter, String dueAfterExpression, String dueBefore, String dueBeforeExpression, bool withoutDueDate, String followUpDate, String followUpDateExpression, String followUpAfter, String followUpAfterExpression, String followUpBefore, String followUpBeforeExpression, String followUpBeforeOrNotExistent, String followUpBeforeOrNotExistentExpression, String createdOn, String createdOnExpression, String createdAfter, String createdAfterExpression, String createdBefore, String createdBeforeExpression, String updatedAfter, String updatedAfterExpression, String delegationState, String candidateGroups, String candidateGroupsExpression, bool withCandidateGroups, bool withoutCandidateGroups, bool withCandidateUsers, bool withoutCandidateUsers, bool active, bool suspended, String taskVariables, String processVariables, String caseInstanceVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String parentTaskId }) async
    test('test getTasksCount', () async {
      // TODO
    });

    // Handle BPMN Error
    //
    // Reports a business error in the context of a running task by id. The error code must be specified to identify the BPMN error handler. See the documentation for [Reporting Bpmn Error](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-error) in User Tasks.
    //
    //Future handleBpmnError(String id, { TaskBpmnErrorDto taskBpmnErrorDto }) async
    test('test handleBpmnError', () async {
      // TODO
    });

    // Handle BPMN Escalation
    //
    // Reports an escalation in the context of a running task by id. The escalation code must be specified to identify the escalation handler. See the documentation for [Reporting Bpmn Escalation](https://docs.camunda.org/manual/7.20/reference/bpmn20/tasks/user-task/#reporting-bpmn-escalation) in User Tasks.
    //
    //Future handleEscalation(String id, { TaskEscalationDto taskEscalationDto }) async
    test('test handleEscalation', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for tasks that fulfill a given filter. This method is slightly more powerful than the [Get Tasks](https://docs.camunda.org/manual/7.20/reference/rest/task/get-query/) method because it allows filtering by multiple process or task variables of types `String`, `Number` or `Boolean`. The size of the result set can be retrieved by using the [Get Task Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query-count/) method.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
    //
    //Future<List<TaskDto>> queryTasks({ int firstResult, int maxResults, TaskQueryDto taskQueryDto }) async
    test('test queryTasks', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Retrieves the number of tasks that fulfill the given filter. Corresponds to the size of the result set of the [Get Tasks (POST)](https://docs.camunda.org/manual/7.20/reference/rest/task/post-query/) method and takes the same parameters.  **Security Consideration**: There are several parameters (such as `assigneeExpression`) for specifying an EL expression. These are disabled by default to prevent remote code execution. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
    //
    //Future<CountResultDto> queryTasksCount({ TaskQueryDto taskQueryDto }) async
    test('test queryTasksCount', () async {
      // TODO
    });

    // Resolve
    //
    // Resolves a task and updates execution variables.  Resolving a task marks that the assignee is done with the task delegated to them, and that it can be sent back to the owner. Can only be executed when the task has been delegated. The assignee will be set to the owner, who performed the delegation.
    //
    //Future resolve(String id, { CompleteTaskDto completeTaskDto }) async
    test('test resolve', () async {
      // TODO
    });

    // Set Assignee
    //
    // Changes the assignee of a task to a specific user.  **Note:** The difference with the [Claim Task](https://docs.camunda.org/manual/7.20/reference/rest/task/post-claim/) method is that this method does not check if the task already has a user assigned to it.
    //
    //Future setAssignee(String id, { UserIdDto userIdDto }) async
    test('test setAssignee', () async {
      // TODO
    });

    // Submit Form
    //
    // Completes a task and updates process variables using a form submit. There are two difference between this method and the `complete` method:  * If the task is in state `PENDING` - i.e., has been delegated before, it is not completed but resolved. Otherwise it will be completed. * If the task has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See the [Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/_index/#generated-task-forms) section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/) for more information.
    //
    //Future<Map<String, VariableValueDto>> submit(String id, { CompleteTaskDto completeTaskDto }) async
    test('test submit', () async {
      // TODO
    });

    // Unclaim
    //
    // Resets a task's assignee. If successful, the task is not assigned to a user.
    //
    //Future unclaim(String id) async
    test('test unclaim', () async {
      // TODO
    });

    // Update
    //
    // Updates a task.
    //
    //Future updateTask(String id, { TaskDto taskDto }) async
    test('test updateTask', () async {
      // TODO
    });

  });
}
