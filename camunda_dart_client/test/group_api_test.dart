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


/// tests for GroupApi
void main() {
  // final instance = GroupApi();

  group('tests for GroupApi', () {
    // Group Resource Instance Options
    //
    // The `/group` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group/{id}` resource instance. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableGroupInstanceOperations(String id) async
    test('test availableGroupInstanceOperations', () async {
      // TODO
    });

    // Group Membership Resource Options
    //
    // The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableGroupMembersOperations(String id) async
    test('test availableGroupMembersOperations', () async {
      // TODO
    });

    // Group Resource Options
    //
    // The `/group` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual group instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/group` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableGroupOperations() async
    test('test availableGroupOperations', () async {
      // TODO
    });

    // Create Group
    //
    // Creates a new group.
    //
    //Future createGroup({ GroupDto groupDto }) async
    test('test createGroup', () async {
      // TODO
    });

    // Create Group Member
    //
    // Adds a member to a group.
    //
    //Future createGroupMember(String id, String userId) async
    test('test createGroupMember', () async {
      // TODO
    });

    // Delete Group
    //
    // Deletes a group by id.
    //
    //Future deleteGroup(String id) async
    test('test deleteGroup', () async {
      // TODO
    });

    // Delete a Group Member
    //
    // Removes a member from a group.
    //
    //Future deleteGroupMember(String id, String userId) async
    test('test deleteGroupMember', () async {
      // TODO
    });

    // Get Group
    //
    // Retrieves a group by id.
    //
    //Future<GroupDto> getGroup(String id) async
    test('test getGroup', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for groups using a list of parameters and retrieves the count.
    //
    //Future<CountResultDto> getGroupCount({ String id, String idIn, String name, String nameLike, String type, String member, String memberOfTenant }) async
    test('test getGroupCount', () async {
      // TODO
    });

    // Get List
    //
    // Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count](https://docs.camunda.org/manual/7.20/reference/rest/group/get-query-count) method.
    //
    //Future<List<GroupDto>> getQueryGroups({ String sortBy, String sortOrder, int firstResult, int maxResults, String id, String idIn, String name, String nameLike, String type, String member, String memberOfTenant }) async
    test('test getQueryGroups', () async {
      // TODO
    });

    // Get List (POST)
    //
    // Queries for a list of groups using a list of parameters. The size of the result set can be retrieved by using the [Get Group Count (POST)](https://docs.camunda.org/manual/7.20/reference/rest/group/post-query-count/) method.
    //
    //Future<List<GroupDto>> postQueryGroups({ int firstResult, int maxResults, GroupQueryDto groupQueryDto }) async
    test('test postQueryGroups', () async {
      // TODO
    });

    // Get List Count (POST)
    //
    // Queries for groups using a list of parameters and retrieves the count.
    //
    //Future<CountResultDto> queryGroupCount({ GroupQueryDto groupQueryDto }) async
    test('test queryGroupCount', () async {
      // TODO
    });

    // Update Group
    //
    // Updates a given group by id.
    //
    //Future updateGroup(String id, { GroupDto groupDto }) async
    test('test updateGroup', () async {
      // TODO
    });

  });
}
