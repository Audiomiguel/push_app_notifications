part of 'notifications_bloc.dart';

sealed class NotificationsEvent {
  const NotificationsEvent();
}

class NotificationStatusChanged extends NotificationsEvent {
  final AuthorizationStatus status;

  const NotificationStatusChanged(this.status);
}

class PushMessageReceived extends NotificationsEvent {
  final PushMessage message;

  const PushMessageReceived(this.message);
}
