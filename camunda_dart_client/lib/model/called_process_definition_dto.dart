//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CalledProcessDefinitionDto {
  /// Returns a new [CalledProcessDefinitionDto] instance.
  CalledProcessDefinitionDto({
    this.id,
    this.key,
    this.category,
    this.description,
    this.name,
    this.version,
    this.resource,
    this.deploymentId,
    this.diagram,
    this.suspended,
    this.tenantId,
    this.versionTag,
    this.historyTimeToLive,
    this.startableInTasklist,
    this.calledFromActivityIds = const [],
    this.callingProcessDefinitionId,
  });

  /// The id of the process definition
  String? id;

  /// The key of the process definition, i.e., the id of the BPMN 2.0 XML process definition.
  String? key;

  /// The category of the process definition.
  String? category;

  /// The description of the process definition.
  String? description;

  /// The name of the process definition.
  String? name;

  /// The version of the process definition that the engine assigned to it.
  int? version;

  /// The file name of the process definition.
  String? resource;

  /// The deployment id of the process definition.
  String? deploymentId;

  /// The file name of the process definition diagram, if it exists.
  String? diagram;

  /// A flag indicating whether the definition is suspended or not.
  bool? suspended;

  /// The tenant id of the process definition.
  String? tenantId;

  /// The version tag of the process definition.
  String? versionTag;

  /// History time to live value of the process definition. Is used within [History cleanup](https://docs.camunda.org/manual/7.20/user-guide/process-engine/history/#history-cleanup).
  ///
  /// Minimum value: 0
  int? historyTimeToLive;

  /// A flag indicating whether the process definition is startable in Tasklist or not.
  bool? startableInTasklist;

  /// Ids of the CallActivities which call this process.
  List<String>? calledFromActivityIds;

  /// The id of the calling process definition
  String? callingProcessDefinitionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalledProcessDefinitionDto &&
    other.id == id &&
    other.key == key &&
    other.category == category &&
    other.description == description &&
    other.name == name &&
    other.version == version &&
    other.resource == resource &&
    other.deploymentId == deploymentId &&
    other.diagram == diagram &&
    other.suspended == suspended &&
    other.tenantId == tenantId &&
    other.versionTag == versionTag &&
    other.historyTimeToLive == historyTimeToLive &&
    other.startableInTasklist == startableInTasklist &&
    _deepEquality.equals(other.calledFromActivityIds, calledFromActivityIds) &&
    other.callingProcessDefinitionId == callingProcessDefinitionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (deploymentId == null ? 0 : deploymentId!.hashCode) +
    (diagram == null ? 0 : diagram!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (versionTag == null ? 0 : versionTag!.hashCode) +
    (historyTimeToLive == null ? 0 : historyTimeToLive!.hashCode) +
    (startableInTasklist == null ? 0 : startableInTasklist!.hashCode) +
    (calledFromActivityIds == null ? 0 : calledFromActivityIds!.hashCode) +
    (callingProcessDefinitionId == null ? 0 : callingProcessDefinitionId!.hashCode);

  @override
  String toString() => 'CalledProcessDefinitionDto[id=$id, key=$key, category=$category, description=$description, name=$name, version=$version, resource=$resource, deploymentId=$deploymentId, diagram=$diagram, suspended=$suspended, tenantId=$tenantId, versionTag=$versionTag, historyTimeToLive=$historyTimeToLive, startableInTasklist=$startableInTasklist, calledFromActivityIds=$calledFromActivityIds, callingProcessDefinitionId=$callingProcessDefinitionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.deploymentId != null) {
      json[r'deploymentId'] = this.deploymentId;
    } else {
      json[r'deploymentId'] = null;
    }
    if (this.diagram != null) {
      json[r'diagram'] = this.diagram;
    } else {
      json[r'diagram'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.versionTag != null) {
      json[r'versionTag'] = this.versionTag;
    } else {
      json[r'versionTag'] = null;
    }
    if (this.historyTimeToLive != null) {
      json[r'historyTimeToLive'] = this.historyTimeToLive;
    } else {
      json[r'historyTimeToLive'] = null;
    }
    if (this.startableInTasklist != null) {
      json[r'startableInTasklist'] = this.startableInTasklist;
    } else {
      json[r'startableInTasklist'] = null;
    }
    if (this.calledFromActivityIds != null) {
      json[r'calledFromActivityIds'] = this.calledFromActivityIds;
    } else {
      json[r'calledFromActivityIds'] = null;
    }
    if (this.callingProcessDefinitionId != null) {
      json[r'callingProcessDefinitionId'] = this.callingProcessDefinitionId;
    } else {
      json[r'callingProcessDefinitionId'] = null;
    }
    return json;
  }

  /// Returns a new [CalledProcessDefinitionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalledProcessDefinitionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CalledProcessDefinitionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CalledProcessDefinitionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CalledProcessDefinitionDto(
        id: mapValueOfType<String>(json, r'id'),
        key: mapValueOfType<String>(json, r'key'),
        category: mapValueOfType<String>(json, r'category'),
        description: mapValueOfType<String>(json, r'description'),
        name: mapValueOfType<String>(json, r'name'),
        version: mapValueOfType<int>(json, r'version'),
        resource: mapValueOfType<String>(json, r'resource'),
        deploymentId: mapValueOfType<String>(json, r'deploymentId'),
        diagram: mapValueOfType<String>(json, r'diagram'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        versionTag: mapValueOfType<String>(json, r'versionTag'),
        historyTimeToLive: mapValueOfType<int>(json, r'historyTimeToLive'),
        startableInTasklist: mapValueOfType<bool>(json, r'startableInTasklist'),
        calledFromActivityIds: json[r'calledFromActivityIds'] is Iterable
            ? (json[r'calledFromActivityIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        callingProcessDefinitionId: mapValueOfType<String>(json, r'callingProcessDefinitionId'),
      );
    }
    return null;
  }

  static List<CalledProcessDefinitionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalledProcessDefinitionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalledProcessDefinitionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalledProcessDefinitionDto> mapFromJson(dynamic json) {
    final map = <String, CalledProcessDefinitionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalledProcessDefinitionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalledProcessDefinitionDto-objects as value to a dart map
  static Map<String, List<CalledProcessDefinitionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalledProcessDefinitionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalledProcessDefinitionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

