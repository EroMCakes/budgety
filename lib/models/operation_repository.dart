import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:budgety/models/operation.dart';

class OperationRepository {
  void addOperation(Operation operation) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var opJson = operation.toJson();
    await pref.setString(operation.id, json.encode(opJson));
  }

  Future<List<Operation>> getOpperations() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var allOpKeys = pref.getKeys();

    List<Operation> ops = [];

    for (final key in allOpKeys) {
      ops.add(Operation.fromJson(json.decode(pref.getString(key)!)));
    }

    return ops;
  }

  Future<Operation> getOperation(String operationId) async {
    Operation fetchedOperation;

    final operations = await getOpperations();

    fetchedOperation = operations.singleWhere((op) => op.id == operationId);

    return fetchedOperation;
  }
}
