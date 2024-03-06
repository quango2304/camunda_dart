//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeploymentDto {
  /// Returns a new [DeploymentDto] instance.
  DeploymentDto({
    this.links = const [],
    this.id,
    this.tenantId,
    this.deploymentTime,
    this.source_,
    this.name,
  });

  /// The links associated to this resource, with `method`, `href` and `rel`.
  List<AtomLink>? links;

  /// The id of the deployment.
  String? id;

  /// The tenant id of the deployment.
  String? tenantId;

  /// The time when the deployment was created.
  DateTime? deploymentTime;

  /// The source of the deployment.
  String? source_;

  /// The name of the deployment.
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeploymentDto &&
    _deepEquality.equals(other.links, links) &&
    other.id == id &&
    other.tenantId == tenantId &&
    other.deploymentTime == deploymentTime &&
    other.source_ == source_ &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links == null ? 0 : links!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (tenantId == null ? 0 : tenantId!.hashCode) +
    (deploymentTime == null ? 0 : deploymentTime!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'DeploymentDto[links=$links, id=$id, tenantId=$tenantId, deploymentTime=$deploymentTime, source_=$source_, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.links != null) {
      json[r'links'] = this.links;
    } else {
      json[r'links'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.tenantId != null) {
      json[r'tenantId'] = this.tenantId;
    } else {
      json[r'tenantId'] = null;
    }
    if (this.deploymentTime != null) {
      json[r'deploymentTime'] = this.deploymentTime!.toUtc().toIso8601String();
    } else {
      json[r'deploymentTime'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [DeploymentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeploymentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeploymentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeploymentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeploymentDto(
        links: AtomLink.listFromJson(json[r'links']),
        id: mapValueOfType<String>(json, r'id'),
        tenantId: mapValueOfType<String>(json, r'tenantId'),
        deploymentTime: mapDateTime(json, r'deploymentTime', r''),
        source_: mapValueOfType<String>(json, r'source'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<DeploymentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeploymentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeploymentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeploymentDto> mapFromJson(dynamic json) {
    final map = <String, DeploymentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeploymentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeploymentDto-objects as value to a dart map
  static Map<String, List<DeploymentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeploymentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeploymentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

