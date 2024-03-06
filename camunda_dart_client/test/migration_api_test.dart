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


/// tests for MigrationApi
void main() {
  // final instance = MigrationApi();

  group('tests for MigrationApi', () {
    // Execute Migration Plan
    //
    // Executes a migration plan synchronously for multiple process instances. To execute a migration plan asynchronously, use the [Execute Migration Plan Async(Batch)](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration-async/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
    //
    //Future executeMigrationPlan({ MigrationExecutionDto migrationExecutionDto }) async
    test('test executeMigrationPlan', () async {
      // TODO
    });

    // Execute Migration Plan Async (Batch)
    //
    // Executes a migration plan asynchronously (batch) for multiple process instances. To execute a migration plan synchronously, use the [Execute MigrationPlan](https://docs.camunda.org/manual/7.20/reference/rest/migration/execute-migration/) method.  For more information about the difference between synchronous and asynchronous execution of a migration plan, please refer to the related section of [the user guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#executing-a-migration-plan).
    //
    //Future<BatchDto> executeMigrationPlanAsync({ MigrationExecutionDto migrationExecutionDto }) async
    test('test executeMigrationPlanAsync', () async {
      // TODO
    });

    // Generate Migration Plan
    //
    // Generates a migration plan for two process definitions. The generated migration plan contains migration instructions which map equal activities between the two process definitions.
    //
    //Future<MigrationPlanDto> generateMigrationPlan({ MigrationPlanGenerationDto migrationPlanGenerationDto }) async
    test('test generateMigrationPlan', () async {
      // TODO
    });

    // Validate Migration Plan
    //
    // Validates a migration plan statically without executing it. This corresponds to the [creation time validation](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-migration/#creation-time-validation) described in the user guide.
    //
    //Future<MigrationPlanReportDto> validateMigrationPlan({ MigrationPlanDto migrationPlanDto }) async
    test('test validateMigrationPlan', () async {
      // TODO
    });

  });
}
