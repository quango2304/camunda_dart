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

// tests for VariableInstanceDto
void main() {
  // final instance = VariableInstanceDto();

  group('test VariableInstanceDto', () {
    // Can be any value - string, number, boolean, array or object.  **Note**: Not every endpoint supports every type.
    // Object value
    test('to test the property `value`', () async {
      // TODO
    });

    // The value type of the variable.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // A JSON object containing additional, value-type-dependent properties. For serialized variables of type Object, the following properties can be provided:  * `objectTypeName`: A string representation of the object's type name. * `serializationDataFormat`: The serialization format used to store the variable.  For serialized variables of type File, the following properties can be provided:  * `filename`: The name of the file. This is not the variable name but the name that will be used when downloading the file again. * `mimetype`: The MIME type of the file that is being uploaded. * `encoding`: The encoding of the file that is being uploaded.  The following property can be provided for all value types:  * `transient`: Indicates whether the variable should be transient or not. See [documentation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables#transient-variables) for more informations. (Not applicable for `decision-definition`, ` /process-instance/variables-async`, and `/migration/executeAsync` endpoints)
    // Map<String, Object> valueInfo (default value: const {})
    test('to test the property `valueInfo`', () async {
      // TODO
    });

    // The id of the variable instance.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the variable instance.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The id of the process definition that this variable instance belongs to.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The id of the process instance that this variable instance belongs to.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // The id of the execution that this variable instance belongs to.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // The id of the case instance that this variable instance belongs to.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // The id of the case execution that this variable instance belongs to.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // The id of the task that this variable instance belongs to.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // The id of the batch that this variable instance belongs to.<
    // String batchId
    test('to test the property `batchId`', () async {
      // TODO
    });

    // The id of the activity instance that this variable instance belongs to.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // The id of the tenant that this variable instance belongs to.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // An error message in case a Java Serialized Object could not be de-serialized.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });


  });

}
