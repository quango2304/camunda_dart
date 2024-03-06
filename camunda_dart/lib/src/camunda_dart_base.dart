// TODO: Put public facing types in this file.

import 'package:openapi/api.dart';

/// Checks if you are awesome. Spoiler: you are.
abstract class CamundaDartBase {
  ExternalTaskApi get externalTaskApi;
  ProcessDefinitionApi get processDefinitionApi;
}
