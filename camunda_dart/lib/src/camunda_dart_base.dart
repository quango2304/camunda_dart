import 'package:openapi/api.dart';
abstract class CamundaDartBase {
  ExternalTaskApi get externalTaskApi;
  ProcessDefinitionApi get processDefinitionApi;
  SignalApi get signalApi;
  MessageApi get messageApi;
}
