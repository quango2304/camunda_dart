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


/// tests for ProcessDefinitionApi
void main() {
  // final instance = ProcessDefinitionApi();

  group('tests for ProcessDefinitionApi', () {
    // Delete
    //
    // Deletes a running process instance by id.
    //
    //Future deleteProcessDefinition(String id, { bool cascade, bool skipCustomListeners, bool skipIoMappings }) async
    test('test deleteProcessDefinition', () async {
      // TODO
    });

    // Delete By Key
    //
    // Deletes process definitions by a given key which belong to no tenant id.
    //
    //Future deleteProcessDefinitionsByKey(String key, { bool cascade, bool skipCustomListeners, bool skipIoMappings }) async
    test('test deleteProcessDefinitionsByKey', () async {
      // TODO
    });

    // Delete By Key
    //
    // Deletes process definitions by a given key and which belong to a tenant id.
    //
    //Future deleteProcessDefinitionsByKeyAndTenantId(String key, String tenantId, { bool cascade, bool skipCustomListeners, bool skipIoMappings }) async
    test('test deleteProcessDefinitionsByKeyAndTenantId', () async {
      // TODO
    });

    // Get Activity Instance Statistics
    //
    // Retrieves runtime statistics of a given process definition, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
    //
    //Future<List<ActivityStatisticsResultDto>> getActivityStatistics(String id, { bool failedJobs, bool incidents, String incidentsForType }) async
    test('test getActivityStatistics', () async {
      // TODO
    });

    // Get Activity Instance Statistics
    //
    // Retrieves runtime statistics of the latest version of the given process definition which belongs to no tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
    //
    //Future<List<ActivityStatisticsResultDto>> getActivityStatisticsByProcessDefinitionKey(String key, { bool failedJobs, bool incidents, String incidentsForType }) async
    test('test getActivityStatisticsByProcessDefinitionKey', () async {
      // TODO
    });

    // Get Activity Instance Statistics
    //
    // Retrieves runtime statistics of the latest version of the given process definition for a tenant, grouped by activities. These statistics include the number of running activity instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
    //
    //Future<List<ActivityStatisticsResultDto>> getActivityStatisticsByProcessDefinitionKeyAndTenantId(String key, String tenantId, { bool failedJobs, bool incidents, String incidentsForType }) async
    test('test getActivityStatisticsByProcessDefinitionKeyAndTenantId', () async {
      // TODO
    });

    // Get Deployed Start Form
    //
    // Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
    //
    //Future<MultipartFile> getDeployedStartForm(String id) async
    test('test getDeployedStartForm', () async {
      // TODO
    });

    // Get Deployed Start Form
    //
    // Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
    //
    //Future<MultipartFile> getDeployedStartFormByKey(String key) async
    test('test getDeployedStartFormByKey', () async {
      // TODO
    });

    // Get Deployed Start Form
    //
    // Retrieves the deployed form that can be referenced from a start event. For further information please refer to [User Guide](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#embedded-task-forms).
    //
    //Future<MultipartFile> getDeployedStartFormByKeyAndTenantId(String key, String tenantId) async
    test('test getDeployedStartFormByKeyAndTenantId', () async {
      // TODO
    });

    // Get
    //
    // Retrieves the latest version of the process definition for tenant according to the `ProcessDefinition` interface in the engine.
    //
    //Future<ProcessDefinitionDto> getLatestProcessDefinitionByTenantId(String key, String tenantId) async
    test('test getLatestProcessDefinitionByTenantId', () async {
      // TODO
    });

    // Get
    //
    // Retrieves a process definition according to the `ProcessDefinition` interface in the engine.
    //
    //Future<ProcessDefinitionDto> getProcessDefinition(String id) async
    test('test getProcessDefinition', () async {
      // TODO
    });

    // Get XML
    //
    // Retrieves the BPMN 2.0 XML of a process definition.
    //
    //Future<ProcessDefinitionDiagramDto> getProcessDefinitionBpmn20Xml(String id) async
    test('test getProcessDefinitionBpmn20Xml', () async {
      // TODO
    });

    // Get XML
    //
    // Retrieves latest version the BPMN 2.0 XML of a process definition.
    //
    //Future<ProcessDefinitionDiagramDto> getProcessDefinitionBpmn20XmlByKey(String key) async
    test('test getProcessDefinitionBpmn20XmlByKey', () async {
      // TODO
    });

    // Get XML
    //
    // Retrieves latest version the BPMN 2.0 XML of a process definition. Returns the XML for the latest version of the process definition for tenant.
    //
    //Future<ProcessDefinitionDiagramDto> getProcessDefinitionBpmn20XmlByKeyAndTenantId(String key, String tenantId) async
    test('test getProcessDefinitionBpmn20XmlByKeyAndTenantId', () async {
      // TODO
    });

    // Get
    //
    // Retrieves the latest version of the process definition which belongs to no tenant according to the `ProcessDefinition` interface in the engine.
    //
    //Future<ProcessDefinitionDto> getProcessDefinitionByKey(String key) async
    test('test getProcessDefinitionByKey', () async {
      // TODO
    });

    // Get Diagram
    //
    // Retrieves the diagram of a process definition.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
    //
    //Future<MultipartFile> getProcessDefinitionDiagram(String id) async
    test('test getProcessDefinitionDiagram', () async {
      // TODO
    });

    // Get Diagram
    //
    // Retrieves the diagram for the latest version of the process definition which belongs to no tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
    //
    //Future<MultipartFile> getProcessDefinitionDiagramByKey(String key) async
    test('test getProcessDefinitionDiagramByKey', () async {
      // TODO
    });

    // Get Diagram
    //
    // Retrieves the diagram for the latest version of the process definition for tenant.  If the process definition's deployment contains an image resource with the same file name as the process definition, the deployed image will be returned by the Get Diagram endpoint. Example: `someProcess.bpmn` and `someProcess.png`. Supported file extentions for the image are: `svg`, `png`, `jpg`, and `gif`.
    //
    //Future<MultipartFile> getProcessDefinitionDiagramByKeyAndTenantId(String key, String tenantId) async
    test('test getProcessDefinitionDiagramByKeyAndTenantId', () async {
      // TODO
    });

    // Get Process Instance Statistics
    //
    // Retrieves runtime statistics of the process engine, grouped by process definitions. These statistics include the number of running process instances, optionally the number of failed jobs and also optionally the number of incidents either grouped by incident types or for a specific incident type. **Note**: This does not include historic data.
    //
    //Future<List<ProcessDefinitionStatisticsResultDto>> getProcessDefinitionStatistics({ bool failedJobs, bool incidents, String incidentsForType, bool rootIncidents }) async
    test('test getProcessDefinitionStatistics', () async {
      // TODO
    });

    // Get List
    //
    // Queries for process definitions that fulfill given parameters. Parameters may be the properties of  process definitions, such as the name, key or version. The size of the result set can be retrieved by using the [Get Definition Count](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query-count/) method.
    //
    //Future<List<ProcessDefinitionDto>> getProcessDefinitions({ String processDefinitionId, String processDefinitionIdIn, String name, String nameLike, String deploymentId, DateTime deployedAfter, DateTime deployedAt, String key, String keysIn, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String startableBy, bool active, bool suspended, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, bool withoutTenantId, bool includeProcessDefinitionsWithoutTenantId, String versionTag, String versionTagLike, bool withoutVersionTag, bool startableInTasklist, bool notStartableInTasklist, bool startablePermissionCheck, String sortBy, String sortOrder, int firstResult, int maxResults }) async
    test('test getProcessDefinitions', () async {
      // TODO
    });

    // Get List Count
    //
    // Requests the number of process definitions that fulfill the query criteria. Takes the same filtering parameters as the [Get Definitions](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/get-query/) method.
    //
    //Future<CountResultDto> getProcessDefinitionsCount({ String processDefinitionId, String processDefinitionIdIn, String name, String nameLike, String deploymentId, DateTime deployedAfter, DateTime deployedAt, String key, String keysIn, String keyLike, String category, String categoryLike, int version, bool latestVersion, String resourceName, String resourceNameLike, String startableBy, bool active, bool suspended, String incidentId, String incidentType, String incidentMessage, String incidentMessageLike, String tenantIdIn, bool withoutTenantId, bool includeProcessDefinitionsWithoutTenantId, String versionTag, String versionTagLike, bool withoutVersionTag, bool startableInTasklist, bool notStartableInTasklist, bool startablePermissionCheck }) async
    test('test getProcessDefinitionsCount', () async {
      // TODO
    });

    // Get Rendered Start Form
    //
    // Retrieves the rendered form for a process definition. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<MultipartFile> getRenderedStartForm(String id) async
    test('test getRenderedStartForm', () async {
      // TODO
    });

    // Get Rendered Start Form
    //
    // Retrieves  the rendered form for the latest version of the process definition which belongs to no tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<MultipartFile> getRenderedStartFormByKey(String key) async
    test('test getRenderedStartFormByKey', () async {
      // TODO
    });

    // Get Rendered Start Form
    //
    // Retrieves  the rendered form for the latest version of the process definition for a tenant. This method can be used to get the HTML rendering of a [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<MultipartFile> getRenderedStartFormByKeyAndTenantId(String key, String tenantId) async
    test('test getRenderedStartFormByKeyAndTenantId', () async {
      // TODO
    });

    // Get Start Form Key
    //
    // Retrieves the key of the start form for a process definition. The form key corresponds to the `FormData#formKey` property in the engine.
    //
    //Future<FormDto> getStartForm(String id) async
    test('test getStartForm', () async {
      // TODO
    });

    // Get Start Form Key
    //
    // Retrieves the key of the start form for the latest version of the process definition which belongs to no tenant. The form key corresponds to the `FormData#formKey` property in the engine.
    //
    //Future<FormDto> getStartFormByKey(String key) async
    test('test getStartFormByKey', () async {
      // TODO
    });

    // Get Start Form Key
    //
    // Retrieves the key of the start form for the latest version of the process definition for a tenant. The form key corresponds to the `FormData#formKey` property in the engine.
    //
    //Future<FormDto> getStartFormByKeyAndTenantId(String key, String tenantId) async
    test('test getStartFormByKeyAndTenantId', () async {
      // TODO
    });

    // Get Start Form Variables
    //
    // Retrieves the start form variables for a process definition (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
    //
    //Future<Map<String, VariableValueDto>> getStartFormVariables(String id, { String variableNames, bool deserializeValues }) async
    test('test getStartFormVariables', () async {
      // TODO
    });

    // Get Start Form Variables
    //
    // Retrieves the start form variables for the latest process definition which belongs to no tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
    //
    //Future<Map<String, VariableValueDto>> getStartFormVariablesByKey(String key, { String variableNames, bool deserializeValues }) async
    test('test getStartFormVariablesByKey', () async {
      // TODO
    });

    // Get Start Form Variables
    //
    // Retrieves the start form variables for the latest process definition for a tenant (only if they are defined via the  [Generated Task Form](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms) approach). The start form variables take form data specified on the start event into account. If form fields are defined, the variable types and default values of the form fields are taken into account.
    //
    //Future<Map<String, VariableValueDto>> getStartFormVariablesByKeyAndTenantId(String key, String tenantId, { String variableNames, bool deserializeValues }) async
    test('test getStartFormVariablesByKeyAndTenantId', () async {
      // TODO
    });

    // Get Static Called Process Definitions
    //
    // For the given process, returns a list of called process definitions corresponding to the `CalledProcessDefinition` interface in the engine. The list contains all process definitions that are referenced statically by call activities in the given process. This endpoint does not resolve process definitions that are referenced with expressions. Each called process definition contains a list of call activity ids, which specifies the call activities that are calling that process. This endpoint does not resolve references to case definitions.
    //
    //Future<List<CalledProcessDefinitionDto>> getStaticCalledProcessDefinitions(String id) async
    test('test getStaticCalledProcessDefinitions', () async {
      // TODO
    });

    // Restart Process Instance
    //
    // Restarts process instances that were canceled or terminated synchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance Async](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-async/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
    //
    //Future restartProcessInstance(String id, { RestartProcessInstanceDto restartProcessInstanceDto }) async
    test('test restartProcessInstance', () async {
      // TODO
    });

    // Restart Process Instance Async
    //
    // Restarts process instances that were canceled or terminated asynchronously. Can also restart completed process instances. It will create a new instance using the original instance information. To execute the restart asynchronously, use the [Restart Process Instance](https://docs.camunda.org/manual/7.20/reference/rest/process-definition/post-restart-process-instance-sync/) method.  For more information about the difference between synchronous and asynchronous execution, please refer to the related section of the [User Guide](https://docs.camunda.org/manual/7.20/user-guide/process-engine/process-instance-restart/#execution).
    //
    //Future<BatchDto> restartProcessInstanceAsyncOperation(String id, { RestartProcessInstanceDto restartProcessInstanceDto }) async
    test('test restartProcessInstanceAsyncOperation', () async {
      // TODO
    });

    // Start Instance
    //
    // Instantiates a given process definition. Process variables and business key may be supplied in the request body.
    //
    //Future<ProcessInstanceWithVariablesDto> startProcessInstance(String id, { StartProcessInstanceDto startProcessInstanceDto }) async
    test('test startProcessInstance', () async {
      // TODO
    });

    // Start Instance
    //
    // Instantiates a given process definition, starts the latest version of the process definition which belongs to no tenant. Process variables and business key may be supplied in the request body.
    //
    //Future<ProcessInstanceWithVariablesDto> startProcessInstanceByKey(String key, { StartProcessInstanceDto startProcessInstanceDto }) async
    test('test startProcessInstanceByKey', () async {
      // TODO
    });

    // Start Instance
    //
    // Instantiates a given process definition, starts the latest version of the process definition for tenant. Process variables and business key may be supplied in the request body.
    //
    //Future<ProcessInstanceWithVariablesDto> startProcessInstanceByKeyAndTenantId(String key, String tenantId, { StartProcessInstanceDto startProcessInstanceDto }) async
    test('test startProcessInstanceByKeyAndTenantId', () async {
      // TODO
    });

    // Submit Start Form
    //
    // Starts a process instance using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<ProcessInstanceDto> submitForm(String id, { StartProcessInstanceFormDto startProcessInstanceFormDto }) async
    test('test submitForm', () async {
      // TODO
    });

    // Submit Start Form
    //
    // Starts the latest version of the process definition which belongs to no tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<ProcessInstanceDto> submitFormByKey(String key, { StartProcessInstanceFormDto startProcessInstanceFormDto }) async
    test('test submitFormByKey', () async {
      // TODO
    });

    // Submit Start Form
    //
    // Starts the latest version of the process definition for a tenant using a set of process variables and the business key. If the start event has Form Field Metadata defined, the process engine will perform backend validation for any form fields which have validators defined. See [Documentation on Generated Task Forms](https://docs.camunda.org/manual/7.20/user-guide/task-forms/#generated-task-forms).
    //
    //Future<ProcessInstanceDto> submitFormByKeyAndTenantId(String key, String tenantId, { StartProcessInstanceFormDto startProcessInstanceFormDto }) async
    test('test submitFormByKeyAndTenantId', () async {
      // TODO
    });

    // Update History Time to Live
    //
    // Updates history time to live for process definition. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
    //
    //Future updateHistoryTimeToLiveByProcessDefinitionId(String id, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByProcessDefinitionId', () async {
      // TODO
    });

    // Update History Time to Live
    //
    // Updates history time to live for the latest version of the process definition which belongs to no tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup). The value of the update is mandatory by default and does not allow `null` values. To enable them, please set the feature flag `enforceHistoryTimeToLive` to `false`. Read more in [Configuration Properties] (https://docs.camunda.org/manual/7.20/reference/deployment-descriptors/tags/process-engine#configuration-properties)
    //
    //Future updateHistoryTimeToLiveByProcessDefinitionKey(String key, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByProcessDefinitionKey', () async {
      // TODO
    });

    // Update History Time to Live
    //
    // Updates history time to live for the latest version of the process definition for a tenant. The field is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
    //
    //Future updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId(String key, String tenantId, { HistoryTimeToLiveDto historyTimeToLiveDto }) async
    test('test updateHistoryTimeToLiveByProcessDefinitionKeyAndTenantId', () async {
      // TODO
    });

    // Activate/Suspend By Key
    //
    // Activates or suspends process definitions with the given process definition key.
    //
    //Future updateProcessDefinitionSuspensionState({ ProcessDefinitionSuspensionStateDto processDefinitionSuspensionStateDto }) async
    test('test updateProcessDefinitionSuspensionState', () async {
      // TODO
    });

    // Activate/Suspend By Id
    //
    // Activates or suspends a given process definition by id.
    //
    //Future updateProcessDefinitionSuspensionStateById(String id, { ProcessDefinitionSuspensionStateDto processDefinitionSuspensionStateDto }) async
    test('test updateProcessDefinitionSuspensionStateById', () async {
      // TODO
    });

    // Activate/Suspend by Id
    //
    // Activates or suspends a given process definition by latest version of process definition key which belongs to no tenant.
    //
    //Future updateProcessDefinitionSuspensionStateByKey(String key, { ProcessDefinitionSuspensionStateDto processDefinitionSuspensionStateDto }) async
    test('test updateProcessDefinitionSuspensionStateByKey', () async {
      // TODO
    });

    // Activate/Suspend by Id
    //
    // Activates or suspends a given process definition by the latest version of the process definition for tenant.
    //
    //Future updateProcessDefinitionSuspensionStateByKeyAndTenantId(String key, String tenantId, { ProcessDefinitionSuspensionStateDto processDefinitionSuspensionStateDto }) async
    test('test updateProcessDefinitionSuspensionStateByKeyAndTenantId', () async {
      // TODO
    });

  });
}
