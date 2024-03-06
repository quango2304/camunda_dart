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


/// tests for ProcessInstanceApi
void main() {
  // final instance = ProcessInstanceApi();

  group('tests for ProcessInstanceApi', () {
    // Correlate Message Async (POST)
    //
    // Correlates a message asynchronously to executions that are waiting for this message.  Messages will not be correlated to process definition-level start message events to start process instances.
    //
    //Future<BatchDto> correlateMessageAsyncOperation({ CorrelationMessageAsyncDto correlationMessageAsyncDto }) async
    test('test correlateMessageAsyncOperation', () async {
      // TODO
    });

    // Delete Async Historic Query Based (POST)
    //
    // Deletes a set of process instances asynchronously (batch) based on a historic process instance query.
    //
    //Future<BatchDto> deleteAsyncHistoricQueryBased({ DeleteProcessInstancesDto deleteProcessInstancesDto }) async
    test('test deleteAsyncHistoricQueryBased', () async {
      // TODO
    });

    // Delete
    //
    // Deletes a running process instance by id.
    //
    //Future deleteProcessInstance(String id, { bool skipCustomListeners, bool skipIoMappings, bool skipSubprocesses, bool failIfNotExists }) async
    test('test deleteProcessInstance', () async {
      // TODO
    });

    // Delete Process Variable
    //
    // Deletes a variable of a process instance by id.
    //
    //Future deleteProcessInstanceVariable(String id, String varName) async
    test('test deleteProcessInstanceVariable', () async {
      // TODO
    });

    // Delete Async (POST)
    //
    // Deletes multiple process instances asynchronously (batch).
    //
    //Future<BatchDto> deleteProcessInstancesAsyncOperation({ DeleteProcessInstancesDto deleteProcessInstancesDto }) async
    test('test deleteProcessInstancesAsyncOperation', () async {
      // TODO
    });

    // Get Activity Instance
    //
    // Retrieves an Activity Instance (Tree) for a given process instance by id.
    //
    //Future<ActivityInstanceDto> getActivityInstanceTree(String id) async
    test('test getActivityInstanceTree', () async {
      // TODO
    });

    // Get Process Instance
    //
    // Retrieves a process instance by id, according to the `ProcessInstance` interface in the engine.
    //
    //Future<ProcessInstanceDto> getProcessInstance(String id) async
    test('test getProcessInstance', () async {
      // TODO
    });

    // Get Process Instance Comments
    //
    // Gets the comments for a process instance by id.
    //
    //Future<List<CommentDto>> getProcessInstanceComments(String id) async
    test('test getProcessInstanceComments', () async {
      // TODO
    });

    // Get Process Variable
    //
    // Retrieves a variable of a given process instance by id.
    //
    //Future<VariableValueDto> getProcessInstanceVariable(String id, String varName, { bool deserializeValue }) async
    test('test getProcessInstanceVariable', () async {
      // TODO
    });

    // Get Process Variable (Binary)
    //
    // Retrieves the content of a Process Variable by the Process Instance id and the Process Variable name. Applicable for byte array or file Process Variables.
    //
    //Future<MultipartFile> getProcessInstanceVariableBinary(String id, String varName) async
    test('test getProcessInstanceVariableBinary', () async {
      // TODO
    });

    // Get Process Variables
    //
    // Retrieves all variables of a given process instance by id.
    //
    //Future<Map<String, VariableValueDto>> getProcessInstanceVariables(String id, { bool deserializeValues }) async
    test('test getProcessInstanceVariables', () async {
      // TODO
    });

    // Get List
    //
    // Queries for process instances that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of process instances. The size of the result set can be retrieved by using the Get Instance Count method.
    //
    //Future<List<ProcessInstanceDto>> getProcessInstances({ String sortBy, String sortOrder, int firstResult, int maxResults, String processInstanceIds, String businessKey, String businessKeyLike, String caseInstanceId, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionKeyNotIn, String deploymentId, String superProcessInstance, String subProcessInstance, String superCaseInstance, String subCaseInstance, bool active, bool suspended, bool withIncident, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, bool withoutTenantId, bool processDefinitionWithoutTenantId, String activityIdIn, bool rootProcessInstances, bool leafProcessInstances, String variables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase }) async
    test('test getProcessInstances', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of process instances that fulfill given parameters.
    //
    //Future<CountResultDto> getProcessInstancesCount({ String processInstanceIds, String businessKey, String businessKeyLike, String caseInstanceId, String processDefinitionId, String processDefinitionKey, String processDefinitionKeyIn, String processDefinitionKeyNotIn, String deploymentId, String superProcessInstance, String subProcessInstance, String superCaseInstance, String subCaseInstance, bool active, bool suspended, bool withIncident, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, bool withoutTenantId, bool processDefinitionWithoutTenantId, String activityIdIn, bool rootProcessInstances, bool leafProcessInstances, String variables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase }) async
    test('test getProcessInstancesCount', () async {
      // TODO
    });

    // Modify Process Instance Execution State
    //
    // Submits a list of modification instructions to change a process instance's execution state. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Canceling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed immediately and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/develop/user-guide/process-engine/process-instance-modification/).
    //
    //Future modifyProcessInstance(String id, { ProcessInstanceModificationDto processInstanceModificationDto }) async
    test('test modifyProcessInstance', () async {
      // TODO
    });

    // Modify Process Instance Execution State Async
    //
    // Submits a list of modification instructions to change a process instance's execution state async. A modification instruction is one of the following:  * Starting execution before an activity * Starting execution after an activity on its single outgoing sequence flow * Starting execution on a specific sequence flow * Cancelling an activity instance, transition instance, or all instances (activity or transition) for an activity  Instructions are executed asynchronous and in the order they are provided in this request's body. Variables can be provided with every starting instruction.  The exact semantics of modification can be read about in the [User guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-modification/).
    //
    //Future<BatchDto> modifyProcessInstanceAsyncOperation(String id, { ProcessInstanceModificationDto processInstanceModificationDto }) async
    test('test modifyProcessInstanceAsyncOperation', () async {
      // TODO
    });

    // Update/Delete Process Variables
    //
    // Updates or deletes the variables of a process instance by id. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
    //
    //Future modifyProcessInstanceVariables(String id, { PatchVariablesDto patchVariablesDto }) async
    test('test modifyProcessInstanceVariables', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for process instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the Get Instances method because it allows filtering by multiple process variables of types `string`, `number` or `boolean`.
    //
    //Future<List<ProcessInstanceDto>> queryProcessInstances({ int firstResult, int maxResults, ProcessInstanceQueryDto processInstanceQueryDto }) async
    test('test queryProcessInstances', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Queries for the number of process instances that fulfill the given parameters. This method takes the same message body as the Get Instances (POST) method and therefore it is slightly more powerful than the Get Instance Count method.
    //
    //Future<CountResultDto> queryProcessInstancesCount({ ProcessInstanceQueryDto processInstanceQueryDto }) async
    test('test queryProcessInstancesCount', () async {
      // TODO
    });

    // Update Process Variable
    //
    // Sets a variable of a given process instance by id.
    //
    //Future setProcessInstanceVariable(String id, String varName, { VariableValueDto variableValueDto }) async
    test('test setProcessInstanceVariable', () async {
      // TODO
    });

    // Update Process Variable (Binary)
    //
    // Sets the serialized value for a binary variable or the binary value for a file variable.
    //
    //Future setProcessInstanceVariableBinary(String id, String varName, { MultipartFile data, String valueType }) async
    test('test setProcessInstanceVariableBinary', () async {
      // TODO
    });

    // Set Job Retries Async (POST)
    //
    // Create a batch to set retries of jobs associated with given processes asynchronously.
    //
    //Future<BatchDto> setRetriesByProcess({ SetJobRetriesByProcessDto setJobRetriesByProcessDto }) async
    test('test setRetriesByProcess', () async {
      // TODO
    });

    // Set Job Retries Async Historic Query Based (POST)
    //
    // Create a batch to set retries of jobs asynchronously based on a historic process instance query.
    //
    //Future<BatchDto> setRetriesByProcessHistoricQueryBased({ SetJobRetriesByProcessDto setJobRetriesByProcessDto }) async
    test('test setRetriesByProcessHistoricQueryBased', () async {
      // TODO
    });

    // Set Variables Async (POST)
    //
    // Update or create runtime process variables in the root scope of process instances.
    //
    //Future<BatchDto> setVariablesAsyncOperation({ SetVariablesAsyncDto setVariablesAsyncDto }) async
    test('test setVariablesAsyncOperation', () async {
      // TODO
    });

    // Activate/Suspend In Group
    //
    // Activates or suspends process instances by providing certain criteria:  # Activate/Suspend Process Instance By Process Definition Id * `suspend` * `processDefinitionId`  # Activate/Suspend Process Instance By Process Definition Key  * `suspend` * `processDefinitionKey` * `processDefinitionTenantId` * `processDefinitionWithoutTenantId`  # Activate/Suspend Process Instance In Group * `suspend` * `processInstanceIds` * `processInstanceQuery` * `historicProcessInstanceQuery`
    //
    //Future updateSuspensionState({ ProcessInstanceSuspensionStateDto processInstanceSuspensionStateDto }) async
    test('test updateSuspensionState', () async {
      // TODO
    });

    // Activate/Suspend In Batch
    //
    // Activates or suspends process instances asynchronously with a list of process instance ids, a process instance query, and/or a historical process instance query.
    //
    //Future<BatchDto> updateSuspensionStateAsyncOperation({ ProcessInstanceSuspensionStateAsyncDto processInstanceSuspensionStateAsyncDto }) async
    test('test updateSuspensionStateAsyncOperation', () async {
      // TODO
    });

    // Activate/Suspend Process Instance By Id
    //
    // Activates or suspends a given process instance by id.
    //
    //Future updateSuspensionStateById(String id, { SuspensionStateDto suspensionStateDto }) async
    test('test updateSuspensionStateById', () async {
      // TODO
    });

  });
}
