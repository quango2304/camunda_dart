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


/// tests for VariableInstanceApi
void main() {
  // final instance = VariableInstanceApi();

  group('tests for VariableInstanceApi', () {
    // Get Variable Instance
    //
    // Retrieves a variable by id.
    //
    //Future<VariableInstanceDto> getVariableInstance(String id, { bool deserializeValue }) async
    test('test getVariableInstance', () async {
      // TODO
    });

    // Get Variable Instance (Binary)
    //
    // Retrieves the content of a variable by id. Applicable for byte array and file variables.
    //
    //Future<MultipartFile> getVariableInstanceBinary(String id) async
    test('test getVariableInstanceBinary', () async {
      // TODO
    });

    // Get Variable Instances
    //
    // Query for variable instances that fulfill given parameters. Parameters may be the properties of variable instances, such as the name or type. The size of the result set can be retrieved by using the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
    //
    //Future<List<VariableInstanceDto>> getVariableInstances({ String variableName, String variableNameLike, String processInstanceIdIn, String executionIdIn, String caseInstanceIdIn, String caseExecutionIdIn, String taskIdIn, String batchIdIn, String activityInstanceIdIn, String tenantIdIn, String variableValues, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String variableScopeIdIn, String sortBy, String sortOrder, int firstResult, int maxResults, bool deserializeValues }) async
    test('test getVariableInstances', () async {
      // TODO
    });

    // Get Variable Instance Count
    //
    // Query for the number of variable instances that fulfill given parameters. Takes the same parameters as the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query/) method.
    //
    //Future<CountResultDto> getVariableInstancesCount({ String variableName, String variableNameLike, String processInstanceIdIn, String executionIdIn, String caseInstanceIdIn, String caseExecutionIdIn, String taskIdIn, String batchIdIn, String activityInstanceIdIn, String tenantIdIn, String variableValues, bool variableNamesIgnoreCase, bool variableValuesIgnoreCase, String variableScopeIdIn }) async
    test('test getVariableInstancesCount', () async {
      // TODO
    });

    // Get Variable Instances (POST)
    //
    // Query for variable instances that fulfill given parameters through a JSON object. This method is slightly more powerful than the [Get Variable Instances](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/get-query/) method because it allows filtering by multiple variable instances of types `String`, `Number` or `Boolean`.
    //
    //Future<List<VariableInstanceDto>> queryVariableInstances({ int firstResult, int maxResults, bool deserializeValues, VariableInstanceQueryDto variableInstanceQueryDto }) async
    test('test queryVariableInstances', () async {
      // TODO
    });

    // Get Variable Instance Count (POST)
    //
    // Query for the number of variable instances that fulfill given parameters. This method takes the same message body as the [Get Variable Instances POST](https://docs.camunda.org/manual/7.20/reference/rest/variable- instance/post-query/) method and therefore it is slightly more powerful than the [Get Variable Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/variable-instance/get-query-count/) method.
    //
    //Future<CountResultDto> queryVariableInstancesCount({ VariableInstanceQueryDto variableInstanceQueryDto }) async
    test('test queryVariableInstancesCount', () async {
      // TODO
    });

  });
}
