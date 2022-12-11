import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:node_mcu_testing/models/mqtt_model.dart';
import 'package:node_mcu_testing/widgets/button_widget.dart';
import 'package:node_mcu_testing/widgets/text_field_widget.dart';

import 'main.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  final MQTTModel mqttData = MQTTModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MQTT Data"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 50),
              textField(
                hintText: "Broker Url",
                onSaved: (value) {
                  print(value);
                  mqttData.broker = value;
                },
              ),
              const SizedBox(height: 10),
              textField(
                hintText: "Port",
                onSaved: (value) {
                  try {
                    mqttData.port = int.tryParse(value.toString());
                  } catch (e) {
                    print(e.toString());
                  }
                  print(value);
                },
              ),
              const SizedBox(height: 10),
              textField(
                hintText: "Username",
                onSaved: (value) {
                  mqttData.username = value;

                  print(value);
                },
              ),
              const SizedBox(height: 10),
              textField(
                hintText: "Password",
                onSaved: (value) {
                  mqttData.password = value;
                  print(value);
                },
              ),
              const SizedBox(height: 10),
              textField(
                hintText: "Client ID",
                onSaved: (value) {
                  mqttData.clientId = value;
                  print(value);
                },
              ),
              const SizedBox(height: 10),
              submitButton(
                  onPressed: () {
                    _formKey.currentState?.save();
                    Get.to(MyHomePage(
                      broker: mqttData.broker!,
                      clientId: mqttData.clientId!,
                      password: mqttData.password!,
                      username: mqttData.username!,
                      port: mqttData.port!,
                    ));
                  },
                  context: context,
                  title: "Submit"),
            ],
          ),
        ),
      ),
    );
  }
}
