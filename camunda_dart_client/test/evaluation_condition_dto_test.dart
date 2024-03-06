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

// tests for EvaluationConditionDto
void main() {
  // final instance = EvaluationConditionDto();

  group('test EvaluationConditionDto', () {
    // A map of variables which are used for evaluation of the conditions and are injected into the process instances which have been triggered. Each key is a variable name and each value a JSON variable value object with the following properties.
    // Map<String, VariableValueDto> variables (default value: const {})
    test('to test the property `variables`', () async {
      // TODO
    });

    // Used for the process instances that have been triggered after the evaluation.
    // String businessKey
    test('to test the property `businessKey`', () async {
      // TODO
    });

    // Used to evaluate a condition for a tenant with the given id. Will only evaluate conditions of process definitions which belong to the tenant.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });

    // A Boolean value that indicates whether the conditions should only be evaluated of process definitions which belong to no tenant or not. Value may only be true, as false is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Used to evaluate conditions of the process definition with the given id.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });


  });

}
