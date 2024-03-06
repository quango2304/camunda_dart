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


/// tests for FilterApi
void main() {
  // final instance = FilterApi();

  group('tests for FilterApi', () {
    // Create Filter
    //
    // Creates a new filter.
    //
    //Future<FilterDto> createFilter({ CreateFilterDto createFilterDto }) async
    test('test createFilter', () async {
      // TODO
    });

    // Delete Filter
    //
    // Deletes a filter by id.
    //
    //Future deleteFilter(String id) async
    test('test deleteFilter', () async {
      // TODO
    });

    // Execute Filter Count
    //
    // Executes the saved query of the filter by id and returns the count.
    //
    //Future<CountResultDto> executeFilterCount(String id) async
    test('test executeFilterCount', () async {
      // TODO
    });

    // Execute Filter List
    //
    // Executes the saved query of the filter by id and returns the result list.
    //
    //Future<List<Object>> executeFilterList(String id, { int firstResult, int maxResults }) async
    test('test executeFilterList', () async {
      // TODO
    });

    // Execute Filter Single Result
    //
    // Executes the saved query of the filter by id and returns the single result.
    //
    //Future<Object> executeFilterSingleResult(String id) async
    test('test executeFilterSingleResult', () async {
      // TODO
    });

    // Filter Resource Options
    //
    // The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> filterResourceOptions() async
    test('test filterResourceOptions', () async {
      // TODO
    });

    // Filter Resource Options
    //
    // The OPTIONS request allows you to check for the set of available operations  that the currently authenticated user can perform on the `/filter` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> filterResourceOptionsSingle(String id) async
    test('test filterResourceOptionsSingle', () async {
      // TODO
    });

    // Get Filter Count
    //
    // Retrieves the number of filters that fulfill a provided query. Corresponds to the size of the result set when using the  [Get Filters](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query/) method.
    //
    //Future<CountResultDto> getFilterCount({ String filterId, String resourceType, String name, String nameLike, String owner }) async
    test('test getFilterCount', () async {
      // TODO
    });

    // Get Filters
    //
    // Queries for a list of filters using a list of parameters. The size of the result set can be retrieved by using the [Get Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-query-count/) method.
    //
    //Future<List<FilterDto>> getFilterList({ String filterId, String resourceType, String name, String nameLike, String owner, bool itemCount, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getFilterList', () async {
      // TODO
    });

    // Get Single Filter
    //
    // Retrieves a single filter by id, according to the `Filter` interface in the engine.
    //
    //Future<FilterDto> getSingleFilter(String id, { bool itemCount }) async
    test('test getSingleFilter', () async {
      // TODO
    });

    // Execute Filter Count (POST)
    //
    // Executes the saved query of the filter by id and returns the count. This method is slightly more powerful then the [Get Execute Filter Count](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-count/)  method because it allows to extend the saved query of the filter.
    //
    //Future<CountResultDto> postExecuteFilterCount(String id, { Object body }) async
    test('test postExecuteFilterCount', () async {
      // TODO
    });

    // Execute Filter List (POST)
    //
    // Executes the saved query of the filter by id and returns the result list. This method is slightly more powerful then the  [Get Execute FilterList](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-list/) method because it allows to extend the saved query of the filter.
    //
    //Future<List<Object>> postExecuteFilterList(String id, { int firstResult, int maxResults, Object body }) async
    test('test postExecuteFilterList', () async {
      // TODO
    });

    // Execute Filter Single Result (POST)
    //
    // Executes the saved query of the filter by id and returns the single result. This method is slightly more powerful then the [Get Execute Filter Single Result](https://docs.camunda.org/manual/7.20/reference/rest/filter/get-execute-single-result/) method because it allows to extend the saved query of the filter.
    //
    //Future<Object> postExecuteFilterSingleResult(String id, { Object body }) async
    test('test postExecuteFilterSingleResult', () async {
      // TODO
    });

    // Update Filter
    //
    // Updates an existing filter.
    //
    //Future updateFilter(String id, { CreateFilterDto createFilterDto }) async
    test('test updateFilter', () async {
      // TODO
    });

  });
}
