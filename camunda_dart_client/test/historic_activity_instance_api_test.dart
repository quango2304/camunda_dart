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


/// tests for HistoricActivityInstanceApi
void main() {
  // final instance = HistoricActivityInstanceApi();

  group('tests for HistoricActivityInstanceApi', () {
    // Get
    //
    // Retrieves a historic activity instance by id, according to the `HistoricActivityInstance` interface in the engine.
    //
    //Future<HistoricActivityInstanceDto> getHistoricActivityInstance(String id) async
    test('test getHistoricActivityInstance', () async {
      // TODO
    });

    // Get List
    //
    // Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
    //
    //Future<List<HistoricActivityInstanceDto>> getHistoricActivityInstances({ String sortBy, String sortOrder, int firstResult, int maxResults, String activityInstanceId, String processInstanceId, String processDefinitionId, String executionId, String activityId, String activityName, String activityType, String taskAssignee, bool finished, bool unfinished, bool canceled, bool completeScope, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, String tenantIdIn, bool withoutTenantId }) async
    test('test getHistoricActivityInstances', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of historic activity instances that fulfill the given parameters. Takes the same parameters as the [Get Historic Activity Instance](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query/)  method.
    //
    //Future<CountResultDto> getHistoricActivityInstancesCount({ String activityInstanceId, String processInstanceId, String processDefinitionId, String executionId, String activityId, String activityName, String activityType, String taskAssignee, bool finished, bool unfinished, bool canceled, bool completeScope, DateTime startedBefore, DateTime startedAfter, DateTime finishedBefore, DateTime finishedAfter, String tenantIdIn, bool withoutTenantId }) async
    test('test getHistoricActivityInstancesCount', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for historic activity instances that fulfill the given parameters. The size of the result set can be retrieved by using the [Get Historic Activity Instance Count](https://docs.camunda.org/manual/7.20/reference/rest/history/activity-instance/get-activity-instance-query-count/) method.
    //
    //Future<List<HistoricActivityInstanceDto>> queryHistoricActivityInstances({ int firstResult, int maxResults, HistoricActivityInstanceQueryDto historicActivityInstanceQueryDto }) async
    test('test queryHistoricActivityInstances', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Queries for the number of historic activity instances that fulfill the given parameters.
    //
    //Future<CountResultDto> queryHistoricActivityInstancesCount({ HistoricActivityInstanceQueryDto historicActivityInstanceQueryDto }) async
    test('test queryHistoricActivityInstancesCount', () async {
      // TODO
    });

  });
}
