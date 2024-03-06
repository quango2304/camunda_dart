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

// tests for HistoricDetailDto
void main() {
  // final instance = HistoricDetailDto();

  group('test HistoricDetailDto', () {
    // The id of the historic detail.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of the historic detail. Either `formField` for a submitted form field value or `variableUpdate` for variable updates.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The key of the process definition that this historic detail belongs to.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the process definition that this historic detail belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The id of the process instance the historic detail belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the activity instance the historic detail belongs to.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // The id of the execution the historic detail belongs to.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The key of the case definition that this historic detail belongs to.
    // String caseDefinitionKey
    test('to test the property `caseDefinitionKey`', () async {
      // TODO
    });

    // The id of the case definition that this historic detail belongs to.
    // String caseDefinitionId
    test('to test the property `caseDefinitionId`', () async {
      // TODO
    });

    // The id of the case instance the historic detail belongs to.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // The id of the case execution the historic detail belongs to.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // The id of the task the historic detail belongs to.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // The id of the tenant that this historic detail belongs to.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // The id of user operation which links historic detail with [user operation log](https://docs.camunda.org/manual/7.20/reference/rest/history/user-operation-log/) entries.
    // String userOperationId
    test('to test the property `userOperationId`', () async {
      // TODO
    });

    // The time when this historic detail occurred. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime time
    test('to test the property `time`', () async {
      // TODO
    });

    // The time after which the historic detail should be removed by the History Cleanup job. Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`.
    // DateTime removalTime
    test('to test the property `removalTime`', () async {
      // TODO
    });

    // The process instance id of the root process instance that initiated the process containing this historic detail.
    // String rootProcessInstanceId
    test('to test the property `rootProcessInstanceId`', () async {
      // TODO
    });

    // The id of the form field.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`.
    // String fieldId
    test('to test the property `fieldId`', () async {
      // TODO
    });

    // The submitted form field value. The value differs depending on the form field's type and on the `deserializeValue` parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `formField`.
    // Object fieldValue
    test('to test the property `fieldValue`', () async {
      // TODO
    });

    // The name of the variable which has been updated.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // String variableName
    test('to test the property `variableName`', () async {
      // TODO
    });

    // The id of the associated variable instance.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // String variableInstanceId
    test('to test the property `variableInstanceId`', () async {
      // TODO
    });

    // The value type of the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // String variableType
    test('to test the property `variableType`', () async {
      // TODO
    });

    // The variable's value. Value differs depending on the variable's type and on the deserializeValues parameter.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // Object value
    test('to test the property `value`', () async {
      // TODO
    });

    // A JSON object containing additional, value-type-dependent properties. For variables of type `Object`, the following properties are returned:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // Map<String, Object> valueInfo (default value: const {})
    test('to test the property `valueInfo`', () async {
      // TODO
    });

    // Returns `true` for variable updates that contains the initial values of the variables.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // bool initial
    test('to test the property `initial`', () async {
      // TODO
    });

    // The revision of the historic variable update.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // int revision
    test('to test the property `revision`', () async {
      // TODO
    });

    // An error message in case a Java Serialized Object could not be de-serialized.  **Note:** This property is only set for a `HistoricVariableUpdate` historic details. In these cases, the value of the `type` property is `variableUpdate`.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });


  });

}
