class NotificationResponse {
  final String message;
  final List<Notification> data;

  NotificationResponse({required this.message, required this.data});

  factory NotificationResponse.fromJson(Map<String, dynamic> json) {
    return NotificationResponse(
      message: json['message'],
      data: (json['data'] as List)
          .map((notificationJson) => Notification.fromJson(notificationJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.map((notification) => notification.toJson()).toList(),
    };
  }
}

class Notification {
  final String image;
  final String title;
  final String body;
  final DateTime timestamp;

  Notification({
    required this.image,
    required this.title,
    required this.body,
    required this.timestamp,
  });

  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
      image: json['image'], 
      title: json['title'],
      body: json['body'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'body': body,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  bool get isAssetImage => image.startsWith('');

  bool get isUrlImage => Uri.tryParse(image)?.hasAbsolutePath ?? false;
}

