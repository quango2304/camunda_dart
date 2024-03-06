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


/// tests for UserApi
void main() {
  // final instance = UserApi();

  group('tests for UserApi', () {
    // Options
    //
    // The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user` returns available interactions on the resource.
    //
    //Future<ResourceOptionsDto> availableOperations() async
    test('test availableOperations', () async {
      // TODO
    });

    // Options
    //
    // The `/user` resource supports two custom `OPTIONS` requests, one for the resource as such and one for individual user instances. The `OPTIONS` request allows checking for the set of available operations that the currently authenticated user can perform on the /user resource. If the user can perform an operation or not may depend on various things, including the user's authorizations to interact with this resource and the internal configuration of the process engine. `OPTIONS /user/{id}` returns available interactions on a resource instance.
    //
    //Future<ResourceOptionsDto> availableUserOperations(String id) async
    test('test availableUserOperations', () async {
      // TODO
    });

    // Create
    //
    // Create a new user.
    //
    //Future createUser({ UserDto userDto }) async
    test('test createUser', () async {
      // TODO
    });

    // Delete
    //
    // Deletes a user by id.
    //
    //Future deleteUser(String id) async
    test('test deleteUser', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Users](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query/) method.
    //
    //Future<CountResultDto> getUserCount({ String id, String idIn, String firstName, String firstNameLike, String lastName, String lastNameLike, String email, String emailLike, String memberOfGroup, String memberOfTenant, String potentialStarter }) async
    test('test getUserCount', () async {
      // TODO
    });

    // Get Profile
    //
    // Retrieves a user's profile.
    //
    //Future<UserProfileDto> getUserProfile(String id) async
    test('test getUserProfile', () async {
      // TODO
    });

    // Get List
    //
    // Query for a list of users using a list of parameters. The size of the result set can be retrieved by using the Get User Count method. [Get User Count](https://docs.camunda.org/manual/7.20/reference/rest/user/get-query-count/) method.
    //
    //Future<List<UserProfileDto>> getUsers({ String id, String idIn, String firstName, String firstNameLike, String lastName, String lastNameLike, String email, String emailLike, String memberOfGroup, String memberOfTenant, String potentialStarter, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getUsers', () async {
      // TODO
    });

    // Unlock User
    //
    // Unlocks a user by id.
    //
    //Future unlockUser(String id) async
    test('test unlockUser', () async {
      // TODO
    });

    // Update Credentials
    //
    // Updates a user's credentials (password)
    //
    //Future updateCredentials(String id, { UserCredentialsDto userCredentialsDto }) async
    test('test updateCredentials', () async {
      // TODO
    });

    // Update User Profile
    //
    // Updates the profile information of an already existing user.
    //
    //Future updateProfile(String id, { UserProfileDto userProfileDto }) async
    test('test updateProfile', () async {
      // TODO
    });

  });
}
