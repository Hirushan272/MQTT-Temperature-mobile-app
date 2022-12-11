import 'dart:convert';

class MQTTModel {
  String? broker;
  int? port;
  String? username;
  String? password;
  String? clientId;

  MQTTModel({
    this.broker,
    this.port,
    this.username,
    this.password,
    this.clientId,
  });

  MQTTModel copyWith({
    String? broker,
    int? port,
    String? username,
    String? password,
    String? clientId,
  }) {
    return MQTTModel(
      broker: broker ?? this.broker,
      port: port ?? this.port,
      username: username ?? this.username,
      password: password ?? this.password,
      clientId: clientId ?? this.clientId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'broker': broker,
      'port': port,
      'username': username,
      'password': password,
      'clientId': clientId,
    };
  }

  factory MQTTModel.fromMap(Map<String, dynamic> map) {
    return MQTTModel(
      broker: map['broker'],
      port: map['port']?.toInt(),
      username: map['username'],
      password: map['password'],
      clientId: map['clientId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MQTTModel.fromJson(String source) =>
      MQTTModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MQTTModel(broker: $broker, port: $port, username: $username, password: $password, clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MQTTModel &&
        other.broker == broker &&
        other.port == port &&
        other.username == username &&
        other.password == password &&
        other.clientId == clientId;
  }

  @override
  int get hashCode {
    return broker.hashCode ^
        port.hashCode ^
        username.hashCode ^
        password.hashCode ^
        clientId.hashCode;
  }
}
