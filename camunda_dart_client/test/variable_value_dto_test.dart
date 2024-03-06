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

// tests for VariableValueDto
void main() {
  // final instance = VariableValueDto();

  group('test VariableValueDto', () {
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


  });

}
