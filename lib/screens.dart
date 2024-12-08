import 'package:flutter/material.dart';
import 'checkbox.dart';
class MyScreen_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _param = ModalRoute.of(context)?.settings.arguments as CheckBoxValues;
    return Scaffold(
      appBar: AppBar(title: Text('Man hinh thu 1')),
      body: Container(
        child: Text('Ket qua chon Checkbox 1 va 2: ${_param.value1} ${_param.value2}'),
      ),
    );
  }
}
class MyScreen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic _param = ModalRoute.of(context)?.settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Man hinh thu 2')),
      body: Container(
        child: Text('Ket qua chon Checkbox 2 va 3: ${_param.value2} ${_param.value3}'),
      ),
    );
  }
}
class MyScreen_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    dynamic _param = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('Man hinh thu 3')),
      body: Container(
        child: Text('Ket qua chon Checkbox 1 2 3: ${_param.value1} ${_param.value2} ${_param.value3}'),
      ),
    );
  }
}
