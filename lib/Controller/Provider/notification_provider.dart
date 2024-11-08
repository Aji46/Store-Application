
import 'dart:convert';

import 'package:bw1_mechine_task/Model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NotificationProvider with ChangeNotifier {
  NotificationResponse? _notificationResponse;
  bool _isLoading = false;

  NotificationResponse? get notificationResponse => _notificationResponse;
  bool get isLoading => _isLoading;

  Future<void> fetchNotifications() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http.get(
        Uri.parse('https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json')
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        _notificationResponse = NotificationResponse.fromJson(responseData);
      } else {
        throw Exception('Failed to load notifications');
      }
    } catch (error) {
      print('Error fetching notifications: $error');
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }


}



