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

// tests for HistoricTaskInstanceReportResultDto
void main() {
  // final instance = HistoricTaskInstanceReportResultDto();

  group('test HistoricTaskInstanceReportResultDto', () {
    // The name of the task. It is only available when the `groupBy` parameter is set to `taskName`. Else the value is `null`.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
    // String taskName
    test('to test the property `taskName`', () async {
      // TODO
    });

    // The number of tasks which have the given definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
    // int count
    test('to test the property `count`', () async {
      // TODO
    });

    // The key of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
    // String processDefinitionKey
    test('to test the property `processDefinitionKey`', () async {
      // TODO
    });

    // The id of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
    // String processDefinitionId
    test('to test the property `processDefinitionId`', () async {
      // TODO
    });

    // The name of the process definition.  **Note:** This property is only set for a historic task report object. In these cases, the value of the `reportType` query parameter is `count`.
    // String processDefinitionName
    test('to test the property `processDefinitionName`', () async {
      // TODO
    });

    // Specifies a span of time within a year. **Note:** The period must be interpreted in conjunction with the returned `periodUnit`.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
    // int period
    test('to test the property `period`', () async {
      // TODO
    });

    // The unit of the given period. Possible values are `MONTH` and `QUARTER`.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
    // String periodUnit
    test('to test the property `periodUnit`', () async {
      // TODO
    });

    // The smallest duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
    // int minimum
    test('to test the property `minimum`', () async {
      // TODO
    });

    // The greatest duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
    // int maximum
    test('to test the property `maximum`', () async {
      // TODO
    });

    // The average duration in milliseconds of all completed process instances which were started in the given period.  **Note:** This property is only set for a duration report object. In these cases, the value of the `reportType` query parameter is `duration`.
    // int average
    test('to test the property `average`', () async {
      // TODO
    });

    // The id of the tenant.
    // String tenantId
    test('to test the property `tenantId`', () async {
      // TODO
    });


  });

}
