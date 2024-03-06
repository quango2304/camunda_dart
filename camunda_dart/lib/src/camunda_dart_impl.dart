import 'package:camunda_dart/camunda_dart.dart';
import 'package:openapi/api.dart';

class CamundaDart implements CamundaDartBase {
  final String basePath;

  CamundaDart({required this.basePath});
  late final _apiClient = ApiClient(basePath: basePath);

  @override
  ExternalTaskApi get externalTaskApi => ExternalTaskApi(_apiClient);
  @override
  ProcessDefinitionApi get processDefinitionApi => ProcessDefinitionApi(_apiClient);
}
