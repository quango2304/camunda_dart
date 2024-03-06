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


/// tests for TaskVariableApi
void main() {
  // final instance = TaskVariableApi();

  group('tests for TaskVariableApi', () {
    // Delete Task Variable
    //
    // Removes a variable that is visible to a task. A variable is visible to a task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future deleteTaskVariable(String id, String varName) async
    test('test deleteTaskVariable', () async {
      // TODO
    });

    // Get Task Variable
    //
    // Retrieves a variable from the context of a given task. The variable must be visible from the task. It is visible from the task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future<VariableValueDto> getTaskVariable(String id, String varName, { bool deserializeValue }) async
    test('test getTaskVariable', () async {
      // TODO
    });

    // Get Task Variable (Binary)
    //
    // Retrieves a binary variable from the context of a given task. Applicable for byte array and file variables. The variable must be visible from the task. It is visible from the task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future<MultipartFile> getTaskVariableBinary(String id, String varName) async
    test('test getTaskVariableBinary', () async {
      // TODO
    });

    // Get Task Variables
    //
    // Retrieves all variables visible from the task. A variable is visible from the task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future<Map<String, VariableValueDto>> getTaskVariables(String id, { bool deserializeValues }) async
    test('test getTaskVariables', () async {
      // TODO
    });

    // Update/Delete Task Variables
    //
    // Updates or deletes the variables visible from the task. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update. A variable is visible from the task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future modifyTaskVariables(String id, { PatchVariablesDto patchVariablesDto }) async
    test('test modifyTaskVariables', () async {
      // TODO
    });

    // Update Task Variable
    //
    // Updates a process variable that is visible from the Task scope. A variable is visible from the task if it is a local task variable, or declared in a parent scope of the task. See the documentation on [variable scopes and visibility](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables#variable-scopes-and-variable-visibility).  **Note**: If a variable doesn't exist, the variable is created in the top-most scope visible from the task.
    //
    //Future putTaskVariable(String id, String varName, { VariableValueDto variableValueDto }) async
    test('test putTaskVariable', () async {
      // TODO
    });

    // Update Task Variable (Binary)
    //
    // Sets the serialized value for a binary variable or the binary value for a file variable visible from the task. A variable is visible from the task if it is a local task variable or declared in a parent scope of the task. See documentation on [visiblity of variables](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/).
    //
    //Future setBinaryTaskVariable(String id, String varName, { MultipartFile data, String valueType }) async
    test('test setBinaryTaskVariable', () async {
      // TODO
    });

  });
}
