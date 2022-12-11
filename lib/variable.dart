import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mqtt_client/mqtt_client.dart' as mqtt;

String broker = 'abc.cloudmqtt.com';
int port = 13372;
String username = 'seu_username';
String passwd = 'seu_password';
String clientIdentifier = 'android';
double _temp = 20;
mqtt.MqttClient? client;
mqtt.MqttConnectionState? connectionState;
StreamSubscription? subscription;
