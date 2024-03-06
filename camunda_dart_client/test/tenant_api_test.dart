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


/// tests for TenantApi
void main() {
  // final instance = TenantApi();

  group('tests for TenantApi', () {
    // Tenant Group Membership Resource Options
    //
    // The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableTenantGroupMembersOperations(String id) async
    test('test availableTenantGroupMembersOperations', () async {
      // TODO
    });

    // Tenant Resource Options
    //
    // The `/tenant` resource supports two custom OPTIONS requests, one for the resource as such and this one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant/{id}` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableTenantInstanceOperations(String id) async
    test('test availableTenantInstanceOperations', () async {
      // TODO
    });

    // Tenant Resource Options
    //
    // The `/tenant` resource supports two custom OPTIONS requests, this one for the resource as such and one for individual tenant instances. The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the `/tenant` resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableTenantResourceOperations() async
    test('test availableTenantResourceOperations', () async {
      // TODO
    });

    // Tenant User Membership Resource Options
    //
    // The OPTIONS request allows checking for the set of available operations that the currently authenticated user can perform on the resource. If the user can perform an operation or not may depend on various things, including the users authorizations to interact with this resource and the internal configuration of the process engine.
    //
    //Future<ResourceOptionsDto> availableTenantUserMembersOperations(String id) async
    test('test availableTenantUserMembersOperations', () async {
      // TODO
    });

    // Create Tenant Group Membership
    //
    // Creates a membership between a tenant and a group.
    //
    //Future createGroupMembership(String id, String groupId) async
    test('test createGroupMembership', () async {
      // TODO
    });

    // Create Tenant
    //
    // Create a new tenant.
    //
    //Future createTenant({ TenantDto tenantDto }) async
    test('test createTenant', () async {
      // TODO
    });

    // Create Tenant User Membership
    //
    // Creates a membership between a tenant and an user.
    //
    //Future createUserMembership(String id, String userId) async
    test('test createUserMembership', () async {
      // TODO
    });

    // Create Tenant Group Membership
    //
    // Creates a membership between a tenant and a group.
    //
    //Future deleteGroupMembership(String id, String groupId) async
    test('test deleteGroupMembership', () async {
      // TODO
    });

    // Delete Tenant
    //
    // Deletes a tenant by id.
    //
    //Future deleteTenant(String id) async
    test('test deleteTenant', () async {
      // TODO
    });

    // Delete a Tenant User Membership
    //
    // Deletes a membership between a tenant and an user.
    //
    //Future deleteUserMembership(String id, String userId) async
    test('test deleteUserMembership', () async {
      // TODO
    });

    // Get Tenant
    //
    // Retrieves a tenant.
    //
    //Future<TenantDto> getTenant(String id) async
    test('test getTenant', () async {
      // TODO
    });

    // Get Tenant Count
    //
    // Query for tenants using a list of parameters and retrieves the count.
    //
    //Future<CountResultDto> getTenantCount({ String id, String name, String nameLike, String userMember, String groupMember, bool includingGroupsOfUser }) async
    test('test getTenantCount', () async {
      // TODO
    });

    // Get Tenants
    //
    // Query for a list of tenants using a list of parameters. The size of the result set can be retrieved by using the [Get Tenant Count](https://docs.camunda.org/manual/7.20/reference/rest/tenant/get-query-count/) method.
    //
    //Future<List<TenantDto>> queryTenants({ String sortBy, String sortOrder, int firstResult, int maxResults, String id, String name, String nameLike, String userMember, String groupMember, bool includingGroupsOfUser }) async
    test('test queryTenants', () async {
      // TODO
    });

    // Update Tenant
    //
    // Updates a given tenant.
    //
    //Future updateTenant(String id, { TenantDto tenantDto }) async
    test('test updateTenant', () async {
      // TODO
    });

  });
}
