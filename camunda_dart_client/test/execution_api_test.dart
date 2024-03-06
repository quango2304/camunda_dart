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


/// tests for ExecutionApi
void main() {
  // final instance = ExecutionApi();

  group('tests for ExecutionApi', () {
    // Create Incident
    //
    // Creates a custom incident with given properties.
    //
    //Future<IncidentDto> createIncident(String id, { CreateIncidentDto createIncidentDto }) async
    test('test createIncident', () async {
      // TODO
    });

    // Delete Local Execution Variable
    //
    // Deletes a variable in the context of a given execution by id. Deletion does not propagate upwards in the execution hierarchy.
    //
    //Future deleteLocalExecutionVariable(String id, String varName) async
    test('test deleteLocalExecutionVariable', () async {
      // TODO
    });

    // Get Execution
    //
    // Retrieves an execution by id, according to the `Execution` interface in the engine.
    //
    //Future<ExecutionDto> getExecution(String id) async
    test('test getExecution', () async {
      // TODO
    });

    // Get Executions
    //
    // Queries for the executions that fulfill given parameters. Parameters may be static as well as dynamic runtime properties of executions. The size of the result set can be retrieved by using the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
    //
    //Future<List<ExecutionDto>> getExecutions({ String businessKey, String processDefinitionId, String processDefinitionKey, String processInstanceId, String activityId, String signalEventSubscriptionName, String messageEventSubscriptionName, bool active, bool suspended, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, String variables, String processVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getExecutions', () async {
      // TODO
    });

    // Get Execution Count
    //
    // Queries for the number of executions that fulfill given parameters. Takes the same parameters as the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method.
    //
    //Future<CountResultDto> getExecutionsCount({ String businessKey, String processDefinitionId, String processDefinitionKey, String processInstanceId, String activityId, String signalEventSubscriptionName, String messageEventSubscriptionName, bool active, bool suspended, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, String variables, String processVariables, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase }) async
    test('test getExecutionsCount', () async {
      // TODO
    });

    // Get Local Execution Variable
    //
    // Retrieves a variable from the context of a given execution by id. Does not traverse the parent execution hierarchy.
    //
    //Future<VariableValueDto> getLocalExecutionVariable(String id, String varName, { bool deserializeValue }) async
    test('test getLocalExecutionVariable', () async {
      // TODO
    });

    // Get Local Execution Variable (Binary)
    //
    // Retrieves a binary variable from the context of a given execution by id. Does not traverse the parent execution hierarchy. Applicable for byte array and file variables.
    //
    //Future<MultipartFile> getLocalExecutionVariableBinary(String id, String varName) async
    test('test getLocalExecutionVariableBinary', () async {
      // TODO
    });

    // Get Local Execution Variables
    //
    // Retrieves all variables of a given execution by id.
    //
    //Future<Map<String, VariableValueDto>> getLocalExecutionVariables(String id, { bool deserializeValues }) async
    test('test getLocalExecutionVariables', () async {
      // TODO
    });

    // Get Message Event Subscription
    //
    // Retrieves a message event subscription for a given execution by id and a message name.
    //
    //Future<EventSubscriptionDto> getMessageEventSubscription(String id, String messageName) async
    test('test getMessageEventSubscription', () async {
      // TODO
    });

    // Update/Delete Local Execution Variables
    //
    // Updates or deletes the variables in the context of an execution by id. The updates do not propagate upwards in the execution hierarchy. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
    //
    //Future modifyLocalExecutionVariables(String id, { PatchVariablesDto patchVariablesDto }) async
    test('test modifyLocalExecutionVariables', () async {
      // TODO
    });

    // Put Local Execution Variable
    //
    // Sets a variable in the context of a given execution by id. Update does not propagate upwards in the execution hierarchy.
    //
    //Future putLocalExecutionVariable(String id, String varName, { VariableValueDto variableValueDto }) async
    test('test putLocalExecutionVariable', () async {
      // TODO
    });

    // Get Executions (POST)
    //
    // Queries for executions that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Executions](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query/) method because it allows to filter by multiple instance and execution variables of types `String`, `Number` or `Boolean`.
    //
    //Future<List<ExecutionDto>> queryExecutions({ int firstResult, int maxResults, ExecutionQueryDto executionQueryDto }) async
    test('test queryExecutions', () async {
      // TODO
    });

    // Get Execution Count (POST)
    //
    // Queries for the number of executions that fulfill given parameters. This method takes the same message body as the [Get Executions POST](https://docs.camunda.org/manual/7.20/reference/rest/execution/post-query/) method and therefore it is slightly more powerful than the [Get Execution Count](https://docs.camunda.org/manual/7.20/reference/rest/execution/get-query-count/) method.
    //
    //Future<CountResultDto> queryExecutionsCount({ ExecutionQueryDto executionQueryDto }) async
    test('test queryExecutionsCount', () async {
      // TODO
    });

    // Post Local Execution Variable (Binary)
    //
    // Sets the serialized value for a binary variable or the binary value for a file variable in the context of a given execution by id.
    //
    //Future setLocalExecutionVariableBinary(String id, String varName, { MultipartFile data, String valueType }) async
    test('test setLocalExecutionVariableBinary', () async {
      // TODO
    });

    // Trigger Execution
    //
    // Signals an execution by id. Can for example be used to explicitly skip user tasks or signal asynchronous continuations.
    //
    //Future signalExecution(String id, { ExecutionTriggerDto executionTriggerDto }) async
    test('test signalExecution', () async {
      // TODO
    });

    // Trigger Message Event Subscription
    //
    // Delivers a message to a specific execution by id, to trigger an existing message event subscription. Inject process variables as the message's payload.
    //
    //Future triggerEvent(String id, String messageName, { ExecutionTriggerDto executionTriggerDto }) async
    test('test triggerEvent', () async {
      // TODO
    });

  });
}
