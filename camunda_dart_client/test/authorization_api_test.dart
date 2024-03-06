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


/// tests for AuthorizationApi
void main() {
  // final instance = AuthorizationApi();

  group('tests for AuthorizationApi', () {
    // Authorization Resource Options
    //
    // The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableOperationsAuthorization() async
    test('test availableOperationsAuthorization', () async {
      // TODO
    });

    // Authorization Resource Options
    //
    // The OPTIONS request allows you to check for the set of available operations that the currently authenticated user can perform on a given instance of the `/authorization` resource. Whether the user can perform an operation or not may depend on various factors, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableOperationsAuthorizationInstance(String id) async
    test('test availableOperationsAuthorizationInstance', () async {
      // TODO
    });

    // Create a New Authorization
    //
    // Creates a new authorization.
    //
    //Future<AuthorizationDto> createAuthorization({ AuthorizationCreateDto authorizationCreateDto }) async
    test('test createAuthorization', () async {
      // TODO
    });

    // Delete Authorization
    //
    // Deletes an authorization by id.
    //
    //Future deleteAuthorization(String id) async
    test('test deleteAuthorization', () async {
      // TODO
    });

    // Get Authorization
    //
    // Retrieves an authorization by id.
    //
    //Future<AuthorizationDto> getAuthorization(String id) async
    test('test getAuthorization', () async {
      // TODO
    });

    // Get Authorization Count
    //
    // Queries for authorizations using a list of parameters and retrieves the count.
    //
    //Future<CountResultDto> getAuthorizationCount({ String id, int type, String userIdIn, String groupIdIn, int resourceType, String resourceId }) async
    test('test getAuthorizationCount', () async {
      // TODO
    });

    // Perform an Authorization Check
    //
    // Performs an authorization check for the currently authenticated user.
    //
    //Future<AuthorizationCheckResultDto> isUserAuthorized(String permissionName, String resourceName, int resourceType, { String resourceId, String userId }) async
    test('test isUserAuthorized', () async {
      // TODO
    });

    // Get Authorizations
    //
    // Queries for a list of authorizations using a list of parameters. The size of the result set can be retrieved by using the [Get Authorization Count](https://docs.camunda.org/manual/7.20/reference/rest/authorization/get-query-count/) method.
    //
    //Future<List<AuthorizationDto>> queryAuthorizations({ String id, int type, String userIdIn, String groupIdIn, int resourceType, String resourceId, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test queryAuthorizations', () async {
      // TODO
    });

    // Update an Authorization
    //
    // Updates an authorization by id.
    //
    //Future updateAuthorization(String id, { AuthorizationUpdateDto authorizationUpdateDto }) async
    test('test updateAuthorization', () async {
      // TODO
    });

  });
}
