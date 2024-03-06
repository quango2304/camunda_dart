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

// tests for HistoricDetailQueryDto
void main() {
  // final instance = HistoricDetailQueryDto();

  group('test HistoricDetailQueryDto', () {
    // Filter by process instance id.
    // String processInstanceId
    test('to test the property `processInstanceId`', () async {
      // TODO
    });

    // Only include historic details which belong to one of the passed  process instance ids.
    // List<String> processInstanceIdIn (default value: const [])
    test('to test the property `processInstanceIdIn`', () async {
      // TODO
    });

    // Filter by execution id.
    // String executionId
    test('to test the property `executionId`', () async {
      // TODO
    });

    // Filter by task id.
    // String taskId
    test('to test the property `taskId`', () async {
      // TODO
    });

    // Filter by activity instance id.
    // String activityInstanceId
    test('to test the property `activityInstanceId`', () async {
      // TODO
    });

    // Filter by case instance id.
    // String caseInstanceId
    test('to test the property `caseInstanceId`', () async {
      // TODO
    });

    // Filter by case execution id.
    // String caseExecutionId
    test('to test the property `caseExecutionId`', () async {
      // TODO
    });

    // Filter by variable instance id.
    // String variableInstanceId
    test('to test the property `variableInstanceId`', () async {
      // TODO
    });

    // Only include historic details where the variable updates belong to one of the passed  list of variable types. A list of all supported variable types can be found [here](https://docs.camunda.org/manual/7.20/user-guide/process-engine/variables/#supported-variable-values). **Note:** All non-primitive variables are associated with the type `serializable`.
    // List<String> variableTypeIn (default value: const [])
    test('to test the property `variableTypeIn`', () async {
      // TODO
    });

    // Filter by a  list of tenant ids.
    // List<String> tenantIdIn (default value: const [])
    test('to test the property `tenantIdIn`', () async {
      // TODO
    });

    // Only include historic details that belong to no tenant. Value may only be `true`, as `false` is the default behavior.
    // bool withoutTenantId
    test('to test the property `withoutTenantId`', () async {
      // TODO
    });

    // Filter by a user operation id.
    // String userOperationId
    test('to test the property `userOperationId`', () async {
      // TODO
    });

    // Only include `HistoricFormFields`. Value may only be `true`, as `false` is the default behavior.
    // bool formFields
    test('to test the property `formFields`', () async {
      // TODO
    });

    // Only include `HistoricVariableUpdates`. Value may only be `true`, as `false` is the default behavior.
    // bool variableUpdates
    test('to test the property `variableUpdates`', () async {
      // TODO
    });

    // Excludes all task-related `HistoricDetails`, so only items which have no task id set will be selected. When this parameter is used together with `taskId`, this call is ignored and task details are not excluded. Value may only be `true`, as `false` is the default behavior.
    // bool excludeTaskDetails
    test('to test the property `excludeTaskDetails`', () async {
      // TODO
    });

    // Restrict to historic variable updates that contain only initial variable values. Value may only be `true`, as `false` is the default behavior.
    // bool initial
    test('to test the property `initial`', () async {
      // TODO
    });

    // Restrict to historic details that occured before the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
    // DateTime occurredBefore
    test('to test the property `occurredBefore`', () async {
      // TODO
    });

    // Restrict to historic details that occured after the given date (including the date). Default [format](https://docs.camunda.org/manual/7.20/reference/rest/overview/date-format/) `yyyy-MM-dd'T'HH:mm:ss.SSSZ`, e.g., 2013-01-23T14:42:45.000+0200.
    // DateTime occurredAfter
    test('to test the property `occurredAfter`', () async {
      // TODO
    });

    // A JSON array of criteria to sort the result by. Each element of the array is                     a JSON object that specifies one ordering. The position in the array                     identifies the rank of an ordering, i.e., whether it is primary, secondary,                     etc. Does not have an effect for the `count` endpoint.
    // List<HistoricDetailQueryDtoSortingInner> sorting (default value: const [])
    test('to test the property `sorting`', () async {
      // TODO
    });


  });

}
