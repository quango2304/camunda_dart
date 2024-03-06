//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FetchExternalTaskTopicDto {
  /// Returns a new [FetchExternalTaskTopicDto] instance.
  FetchExternalTaskTopicDto({
    required this.topicName,
    required this.lockDuration,
    this.variables = const [],
    this.localVariables = false,
    this.businessKey,
    this.processDefinitionId,
    this.processDefinitionIdIn = const [],
    this.processDefinitionKey,
    this.processDefinitionKeyIn = const [],
    this.processDefinitionVersionTag,
    this.withoutTenantId = false,
    this.tenantIdIn = const [],
    this.processVariables = const {},
    this.deserializeValues = false,
    this.includeExtensionProperties = false,
  });

  /// **Mandatory.** The topic's name.
  String topicName;

  /// **Mandatory.** The duration to lock the external tasks for in milliseconds.
  int? lockDuration;

  /// A JSON array of `String` values that represent variable names. For each result task belonging to this topic, the given variables are returned as well if they are accessible from the external task's execution. If not provided - all variables will be fetched.
  List<String>? variables;

  /// If `true` only local variables will be fetched.
  bool? localVariables;

  /// A `String` value which enables the filtering of tasks based on process instance business key.
  String? businessKey;

  /// Filter tasks based on process definition id.
  String? processDefinitionId;

  /// Filter tasks based on process definition ids.
  List<String>? processDefinitionIdIn;

  /// Filter tasks based on process definition key.
  String? processDefinitionKey;

  /// Filter tasks based on process definition keys.
  List<String>? processDefinitionKeyIn;

  /// Filter tasks based on process definition version tag.
  String? processDefinitionVersionTag;

  /// Filter tasks without tenant id.
  bool? withoutTenantId;

  /// Filter tasks based on tenant ids.
  List<String>? tenantIdIn;

  /// A `JSON` object used for filtering tasks based on process instance variable values. A property name of the object represents a process variable name, while the property value represents the process variable value to filter tasks by.
  Map<String, Object> processVariables;

  /// Determines whether serializable variable values (typically variables that store custom Java objects) should be deserialized on server side (default `false`).  If set to `true`, a serializable variable will be deserialized on server side and transformed to JSON using [Jackson's](https://github.com/FasterXML/jackson) POJO/bean property introspection feature. Note that this requires the Java classes of the variable value to be on the REST API's classpath.  If set to `false`, a serializable variable will be returned in its serialized format. For example, a variable that is serialized as XML will be returned as a JSON string containing XML.
  bool? deserializeValues;

  /// Determines whether custom extension properties defined in the BPMN activity of the external task (e.g. via the Extensions tab in the Camunda modeler) should be included in the response. Default: false
  bool? includeExtensionProperties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FetchExternalTaskTopicDto &&
    other.topicName == topicName &&
    other.lockDuration == lockDuration &&
    _deepEquality.equals(other.variables, variables) &&
    other.localVariables == localVariables &&
    other.businessKey == businessKey &&
    other.processDefinitionId == processDefinitionId &&
    _deepEquality.equals(other.processDefinitionIdIn, processDefinitionIdIn) &&
    other.processDefinitionKey == processDefinitionKey &&
    _deepEquality.equals(other.processDefinitionKeyIn, processDefinitionKeyIn) &&
    other.processDefinitionVersionTag == processDefinitionVersionTag &&
    other.withoutTenantId == withoutTenantId &&
    _deepEquality.equals(other.tenantIdIn, tenantIdIn) &&
    _deepEquality.equals(other.processVariables, processVariables) &&
    other.deserializeValues == deserializeValues &&
    other.includeExtensionProperties == includeExtensionProperties;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topicName.hashCode) +
    (lockDuration == null ? 0 : lockDuration!.hashCode) +
    (variables == null ? 0 : variables!.hashCode) +
    (localVariables == null ? 0 : localVariables!.hashCode) +
    (businessKey == null ? 0 : businessKey!.hashCode) +
    (processDefinitionId == null ? 0 : processDefinitionId!.hashCode) +
    (processDefinitionIdIn == null ? 0 : processDefinitionIdIn!.hashCode) +
    (processDefinitionKey == null ? 0 : processDefinitionKey!.hashCode) +
    (processDefinitionKeyIn == null ? 0 : processDefinitionKeyIn!.hashCode) +
    (processDefinitionVersionTag == null ? 0 : processDefinitionVersionTag!.hashCode) +
    (withoutTenantId == null ? 0 : withoutTenantId!.hashCode) +
    (tenantIdIn == null ? 0 : tenantIdIn!.hashCode) +
    (processVariables.hashCode) +
    (deserializeValues == null ? 0 : deserializeValues!.hashCode) +
    (includeExtensionProperties == null ? 0 : includeExtensionProperties!.hashCode);

  @override
  String toString() => 'FetchExternalTaskTopicDto[topicName=$topicName, lockDuration=$lockDuration, variables=$variables, localVariables=$localVariables, businessKey=$businessKey, processDefinitionId=$processDefinitionId, processDefinitionIdIn=$processDefinitionIdIn, processDefinitionKey=$processDefinitionKey, processDefinitionKeyIn=$processDefinitionKeyIn, processDefinitionVersionTag=$processDefinitionVersionTag, withoutTenantId=$withoutTenantId, tenantIdIn=$tenantIdIn, processVariables=$processVariables, deserializeValues=$deserializeValues, includeExtensionProperties=$includeExtensionProperties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topicName'] = this.topicName;
    if (this.lockDuration != null) {
      json[r'lockDuration'] = this.lockDuration;
    } else {
      json[r'lockDuration'] = null;
    }
    if (this.variables != null) {
      json[r'variables'] = this.variables;
    } else {
      json[r'variables'] = null;
    }
    if (this.localVariables != null) {
      json[r'localVariables'] = this.localVariables;
    } else {
      json[r'localVariables'] = null;
    }
    if (this.businessKey != null) {
      json[r'businessKey'] = this.businessKey;
    } else {
      json[r'businessKey'] = null;
    }
    if (this.processDefinitionId != null) {
      json[r'processDefinitionId'] = this.processDefinitionId;
    } else {
      json[r'processDefinitionId'] = null;
    }
    if (this.processDefinitionIdIn != null) {
      json[r'processDefinitionIdIn'] = this.processDefinitionIdIn;
    } else {
      json[r'processDefinitionIdIn'] = null;
    }
    if (this.processDefinitionKey != null) {
      json[r'processDefinitionKey'] = this.processDefinitionKey;
    } else {
      json[r'processDefinitionKey'] = null;
    }
    if (this.processDefinitionKeyIn != null) {
      json[r'processDefinitionKeyIn'] = this.processDefinitionKeyIn;
    } else {
      json[r'processDefinitionKeyIn'] = null;
    }
    if (this.processDefinitionVersionTag != null) {
      json[r'processDefinitionVersionTag'] = this.processDefinitionVersionTag;
    } else {
      json[r'processDefinitionVersionTag'] = null;
    }
    if (this.withoutTenantId != null) {
      json[r'withoutTenantId'] = this.withoutTenantId;
    } else {
      json[r'withoutTenantId'] = null;
    }
    if (this.tenantIdIn != null) {
      json[r'tenantIdIn'] = this.tenantIdIn;
    } else {
      json[r'tenantIdIn'] = null;
    }
      json[r'processVariables'] = this.processVariables;
    if (this.deserializeValues != null) {
      json[r'deserializeValues'] = this.deserializeValues;
    } else {
      json[r'deserializeValues'] = null;
    }
    if (this.includeExtensionProperties != null) {
      json[r'includeExtensionProperties'] = this.includeExtensionProperties;
    } else {
      json[r'includeExtensionProperties'] = null;
    }
    return json;
  }

  /// Returns a new [FetchExternalTaskTopicDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FetchExternalTaskTopicDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FetchExternalTaskTopicDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FetchExternalTaskTopicDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FetchExternalTaskTopicDto(
        topicName: mapValueOfType<String>(json, r'topicName')!,
        lockDuration: mapValueOfType<int>(json, r'lockDuration'),
        variables: json[r'variables'] is Iterable
            ? (json[r'variables'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        localVariables: mapValueOfType<bool>(json, r'localVariables') ?? false,
        businessKey: mapValueOfType<String>(json, r'businessKey'),
        processDefinitionId: mapValueOfType<String>(json, r'processDefinitionId'),
        processDefinitionIdIn: json[r'processDefinitionIdIn'] is Iterable
            ? (json[r'processDefinitionIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionKey: mapValueOfType<String>(json, r'processDefinitionKey'),
        processDefinitionKeyIn: json[r'processDefinitionKeyIn'] is Iterable
            ? (json[r'processDefinitionKeyIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processDefinitionVersionTag: mapValueOfType<String>(json, r'processDefinitionVersionTag'),
        withoutTenantId: mapValueOfType<bool>(json, r'withoutTenantId') ?? false,
        tenantIdIn: json[r'tenantIdIn'] is Iterable
            ? (json[r'tenantIdIn'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        processVariables: mapCastOfType<String, Object>(json, r'processVariables') ?? const {},
        deserializeValues: mapValueOfType<bool>(json, r'deserializeValues') ?? false,
        includeExtensionProperties: mapValueOfType<bool>(json, r'includeExtensionProperties') ?? false,
      );
    }
    return null;
  }

  static List<FetchExternalTaskTopicDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchExternalTaskTopicDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchExternalTaskTopicDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FetchExternalTaskTopicDto> mapFromJson(dynamic json) {
    final map = <String, FetchExternalTaskTopicDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FetchExternalTaskTopicDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FetchExternalTaskTopicDto-objects as value to a dart map
  static Map<String, List<FetchExternalTaskTopicDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FetchExternalTaskTopicDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FetchExternalTaskTopicDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topicName',
    'lockDuration',
  };
}

