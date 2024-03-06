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


/// tests for TaskLocalVariableApi
void main() {
  // final instance = TaskLocalVariableApi();

  group('tests for TaskLocalVariableApi', () {
    // Delete Local Task Variable
    //
    // Removes a local variable from a task by id.
    //
    //Future deleteTaskLocalVariable(String id, String varName) async
    test('test deleteTaskLocalVariable', () async {
      // TODO
    });

    // Get Local Task Variable
    //
    // Retrieves a variable from the context of a given task by id.
    //
    //Future<VariableValueDto> getTaskLocalVariable(String id, String varName, { bool deserializeValue }) async
    test('test getTaskLocalVariable', () async {
      // TODO
    });

    // Get Local Task Variable (Binary)
    //
    // Retrieves a binary variable from the context of a given task by id. Applicable for byte array and file variables.
    //
    //Future<MultipartFile> getTaskLocalVariableBinary(String id, String varName) async
    test('test getTaskLocalVariableBinary', () async {
      // TODO
    });

    // Get Local Task Variables
    //
    // Retrieves all variables of a given task by id.
    //
    //Future<Map<String, VariableValueDto>> getTaskLocalVariables(String id, { bool deserializeValues }) async
    test('test getTaskLocalVariables', () async {
      // TODO
    });

    // Update/Delete Local Task Variables
    //
    // Updates or deletes the variables in the context of a task. Updates precede deletions. So, if a variable is updated AND deleted, the deletion overrides the update.
    //
    //Future modifyTaskLocalVariables(String id, { PatchVariablesDto patchVariablesDto }) async
    test('test modifyTaskLocalVariables', () async {
      // TODO
    });

    // Update Local Task Variable
    //
    // Sets a variable in the context of a given task.
    //
    //Future putTaskLocalVariable(String id, String varName, { VariableValueDto variableValueDto }) async
    test('test putTaskLocalVariable', () async {
      // TODO
    });

    // Update Local Task Variable (Binary)
    //
    // Sets the serialized value for a binary variable or the binary value for a file variable.
    //
    //Future setBinaryTaskLocalVariable(String id, String varName, { MultipartFile data, String valueType }) async
    test('test setBinaryTaskLocalVariable', () async {
      // TODO
    });

  });
}
