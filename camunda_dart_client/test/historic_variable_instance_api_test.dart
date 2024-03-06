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


/// tests for HistoricVariableInstanceApi
void main() {
  // final instance = HistoricVariableInstanceApi();

  group('tests for HistoricVariableInstanceApi', () {
    // Delete Variable Instance
    //
    // Deletes a historic variable instance by id.
    //
    //Future deleteHistoricVariableInstance(String id) async
    test('test deleteHistoricVariableInstance', () async {
      // TODO
    });

    // Get Variable Instance
    //
    // Retrieves a historic variable by id.
    //
    //Future<HistoricVariableInstanceDto> getHistoricVariableInstance(String id, { bool deserializeValues }) async
    test('test getHistoricVariableInstance', () async {
      // TODO
    });

    // Get Variable Instance (Binary)
    //
    // Retrieves the content of a historic variable by id. Applicable for variables that are serialized as binary data.
    //
    //Future<MultipartFile> getHistoricVariableInstanceBinary(String id) async
    test('test getHistoricVariableInstanceBinary', () async {
      // TODO
    });

    // Get Variable Instances
    //
    // Queries for historic variable instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
    //
    //Future<List<HistoricVariableInstanceDto>> getHistoricVariableInstances({ String variableName, String variableNameLike, Object variableValue, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String variableTypeIn, bool includeDeleted, String processInstanceId, String processInstanceIdIn, String processDefinitionId, String processDefinitionKey, String executionIdIn, String caseInstanceId, String caseExecutionIdIn, String caseActivityIdIn, String taskIdIn, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, String variableNameIn, String sortBy, String sortOrder, int firstResult, int maxResults, bool deserializeValues }) async
    test('test getHistoricVariableInstances', () async {
      // TODO
    });

    // Get Variable Instance Count
    //
    // Queries for the number of historic variable instances that fulfill the given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method.
    //
    //Future<CountResultDto> getHistoricVariableInstancesCount({ String variableName, String variableNameLike, Object variableValue, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String variableTypeIn, bool includeDeleted, String processInstanceId, String processInstanceIdIn, String processDefinitionId, String processDefinitionKey, String executionIdIn, String caseInstanceId, String caseExecutionIdIn, String caseActivityIdIn, String taskIdIn, String activityInstanceIdIn, String tenantIdIn, bool withoutTenantId, String variableNameIn }) async
    test('test getHistoricVariableInstancesCount', () async {
      // TODO
    });

    // Get Variable Instances (POST)
    //
    // Queries for historic variable instances that fulfill the given parameters. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query/) method because it allows filtering by variable values of the different types `String`, `Number` or `Boolean`.
    //
    //Future<List<HistoricVariableInstanceDto>> queryHistoricVariableInstances({ int firstResult, int maxResults, bool deserializeValues, HistoricVariableInstanceQueryDto historicVariableInstanceQueryDto }) async
    test('test queryHistoricVariableInstances', () async {
      // TODO
    });

    // Get Variable Instance Count (POST)
    //
    // Queries for historic variable instances that fulfill the given parameters. This method takes the same message body as the [Get Variable Instances (POST)](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/post-variable-instance-query/) method and therefore it is more powerful regarding variable values than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/variable-instance/get-variable-instance-query-count/) method.
    //
    //Future<CountResultDto> queryHistoricVariableInstancesCount({ HistoricVariableInstanceQueryDto historicVariableInstanceQueryDto }) async
    test('test queryHistoricVariableInstancesCount', () async {
      // TODO
    });

  });
}
