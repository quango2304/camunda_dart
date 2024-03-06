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


/// tests for DeploymentApi
void main() {
  // final instance = DeploymentApi();

  group('tests for DeploymentApi', () {
    // Create
    //
    // Creates a deployment.  **Security Consideration**  Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code.
    //
    //Future<DeploymentWithDefinitionsDto> createDeployment({ String tenantId, String deploymentSource, bool deployChangedOnly, bool enableDuplicateFiltering, String deploymentName, DateTime deploymentActivationTime, MultipartFile data }) async
    test('test createDeployment', () async {
      // TODO
    });

    // Delete
    //
    // Deletes a deployment by id.
    //
    //Future deleteDeployment(String id, { bool cascade, bool skipCustomListeners, bool skipIoMappings }) async
    test('test deleteDeployment', () async {
      // TODO
    });

    // Get
    //
    // Retrieves a deployment by id, according to the `Deployment` interface of the engine.
    //
    //Future<DeploymentDto> getDeployment(String id) async
    test('test getDeployment', () async {
      // TODO
    });

    // Get Resource
    //
    // Retrieves a deployment resource by resource id for the given deployment.
    //
    //Future<DeploymentResourceDto> getDeploymentResource(String id, String resourceId) async
    test('test getDeploymentResource', () async {
      // TODO
    });

    // Get Resource (Binary)
    //
    // Retrieves the binary content of a deployment resource for the given deployment by id.
    //
    //Future<MultipartFile> getDeploymentResourceData(String id, String resourceId) async
    test('test getDeploymentResourceData', () async {
      // TODO
    });

    // Get Resources
    //
    // Retrieves all deployment resources of a given deployment.
    //
    //Future<List<DeploymentResourceDto>> getDeploymentResources(String id) async
    test('test getDeploymentResources', () async {
      // TODO
    });

    // Get List
    //
    // Queries for deployments that fulfill given parameters. Parameters may be the properties of deployments, such as the id or name or a range of the deployment time. The size of the result set can be retrieved by using the [Get Deployment count](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query-count/) method.
    //
    //Future<List<DeploymentDto>> getDeployments({ String id, String name, String nameLike, String source_, bool withoutSource, String tenantIdIn, bool withoutTenantId, bool includeDeploymentsWithoutTenantId, DateTime after, DateTime before, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getDeployments', () async {
      // TODO
    });

    // Get List Count
    //
    // Queries for the number of deployments that fulfill given parameters. Takes the same parameters as the [Get Deployments](https://docs.camunda.org/manual/7.20/reference/rest/deployment/get-query/) method.
    //
    //Future<CountResultDto> getDeploymentsCount({ String id, String name, String nameLike, String source_, bool withoutSource, String tenantIdIn, bool withoutTenantId, bool includeDeploymentsWithoutTenantId, DateTime after, DateTime before }) async
    test('test getDeploymentsCount', () async {
      // TODO
    });

    // Get Registered Deployments
    //
    // Queries the registered deployment IDs for the current application.
    //
    //Future<List<String>> getRegisteredDeployments() async
    test('test getRegisteredDeployments', () async {
      // TODO
    });

    // Redeploy
    //
    // Re-deploys an existing deployment.  The deployment resources to re-deploy can be restricted by using the properties `resourceIds` or `resourceNames`. If no deployment resources to re-deploy are passed then all existing resources of the given deployment are re-deployed.  **Warning**: Deployments can contain custom code in form of scripts or EL expressions to customize process behavior. This may be abused for remote execution of arbitrary code. See the section on [security considerations for custom code](https://docs.camunda.org/manual/7.20/user-guide/process-engine/securing-custom-code/) in the user guide for details.
    //
    //Future<DeploymentWithDefinitionsDto> redeploy(String id, { RedeploymentDto redeploymentDto }) async
    test('test redeploy', () async {
      // TODO
    });

  });
}
