//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TelemetryInternalsDto {
  /// Returns a new [TelemetryInternalsDto] instance.
  TelemetryInternalsDto({
    this.database,
    this.applicationServer,
    this.licenseKey,
    this.camundaIntegration = const [],
    this.commands = const {},
    this.metrics = const {},
    this.webapps = const [],
    this.jdk,
    this.dataCollectionStartDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AbstractVendorVersionInformationDto? database;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AbstractVendorVersionInformationDto? applicationServer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TelemetryLicenseKeyDto? licenseKey;

  /// List of Camunda integrations used (e.g., Camunda Spring Boot Starter, Camunda Run, WildFly/JBoss subsystem, Camunda EJB).
  List<String>? camundaIntegration;

  /// The count of executed commands after the last retrieved data.
  Map<String, TelemetryCountDto>? commands;

  /// The collected metrics are the number of root process instance executions started, the number of activity instances started or also known as flow node instances, and the number of executed decision instances and elements.
  Map<String, TelemetryCountDto>? metrics;

  /// The webapps enabled in this installation of Camunda.
  List<String>? webapps;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AbstractVendorVersionInformationDto? jdk;

  /// The date when the engine started to collect dynamic data, such as command executions and metrics. If telemetry sending is enabled, dynamic data resets on sending the data to Camunda. Dynamic data and the date returned by this method are reset in three cases: engine startup, after engine start when sending telemetry data to Camunda is enabled via API, after sending telemetry data to Camunda (only when this was enabled) The date is in the format <code>YYYY-MM-DD'T'HH:mm:ss.SSSZ</code>.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dataCollectionStartDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TelemetryInternalsDto &&
    other.database == database &&
    other.applicationServer == applicationServer &&
    other.licenseKey == licenseKey &&
    _deepEquality.equals(other.camundaIntegration, camundaIntegration) &&
    _deepEquality.equals(other.commands, commands) &&
    _deepEquality.equals(other.metrics, metrics) &&
    _deepEquality.equals(other.webapps, webapps) &&
    other.jdk == jdk &&
    other.dataCollectionStartDate == dataCollectionStartDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (database == null ? 0 : database!.hashCode) +
    (applicationServer == null ? 0 : applicationServer!.hashCode) +
    (licenseKey == null ? 0 : licenseKey!.hashCode) +
    (camundaIntegration == null ? 0 : camundaIntegration!.hashCode) +
    (commands == null ? 0 : commands!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (webapps == null ? 0 : webapps!.hashCode) +
    (jdk == null ? 0 : jdk!.hashCode) +
    (dataCollectionStartDate == null ? 0 : dataCollectionStartDate!.hashCode);

  @override
  String toString() => 'TelemetryInternalsDto[database=$database, applicationServer=$applicationServer, licenseKey=$licenseKey, camundaIntegration=$camundaIntegration, commands=$commands, metrics=$metrics, webapps=$webapps, jdk=$jdk, dataCollectionStartDate=$dataCollectionStartDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.database != null) {
      json[r'database'] = this.database;
    } else {
      json[r'database'] = null;
    }
    if (this.applicationServer != null) {
      json[r'application-server'] = this.applicationServer;
    } else {
      json[r'application-server'] = null;
    }
    if (this.licenseKey != null) {
      json[r'license-key'] = this.licenseKey;
    } else {
      json[r'license-key'] = null;
    }
    if (this.camundaIntegration != null) {
      json[r'camunda-integration'] = this.camundaIntegration;
    } else {
      json[r'camunda-integration'] = null;
    }
    if (this.commands != null) {
      json[r'commands'] = this.commands;
    } else {
      json[r'commands'] = null;
    }
    if (this.metrics != null) {
      json[r'metrics'] = this.metrics;
    } else {
      json[r'metrics'] = null;
    }
    if (this.webapps != null) {
      json[r'webapps'] = this.webapps;
    } else {
      json[r'webapps'] = null;
    }
    if (this.jdk != null) {
      json[r'jdk'] = this.jdk;
    } else {
      json[r'jdk'] = null;
    }
    if (this.dataCollectionStartDate != null) {
      json[r'data-collection-start-date'] = this.dataCollectionStartDate!.toUtc().toIso8601String();
    } else {
      json[r'data-collection-start-date'] = null;
    }
    return json;
  }

  /// Returns a new [TelemetryInternalsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TelemetryInternalsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TelemetryInternalsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TelemetryInternalsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TelemetryInternalsDto(
        database: AbstractVendorVersionInformationDto.fromJson(json[r'database']),
        applicationServer: AbstractVendorVersionInformationDto.fromJson(json[r'application-server']),
        licenseKey: TelemetryLicenseKeyDto.fromJson(json[r'license-key']),
        camundaIntegration: json[r'camunda-integration'] is Iterable
            ? (json[r'camunda-integration'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        commands: TelemetryCountDto.mapFromJson(json[r'commands']),
        metrics: TelemetryCountDto.mapFromJson(json[r'metrics']),
        webapps: json[r'webapps'] is Iterable
            ? (json[r'webapps'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        jdk: AbstractVendorVersionInformationDto.fromJson(json[r'jdk']),
        dataCollectionStartDate: mapDateTime(json, r'data-collection-start-date', r''),
      );
    }
    return null;
  }

  static List<TelemetryInternalsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TelemetryInternalsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TelemetryInternalsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TelemetryInternalsDto> mapFromJson(dynamic json) {
    final map = <String, TelemetryInternalsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TelemetryInternalsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TelemetryInternalsDto-objects as value to a dart map
  static Map<String, List<TelemetryInternalsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TelemetryInternalsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TelemetryInternalsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

