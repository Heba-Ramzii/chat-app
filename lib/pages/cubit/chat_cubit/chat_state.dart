
part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

 class ChatInitial extends ChatState {}
class ChatSendSuccess extends ChatState {
  List<Message> messages;

  ChatSendSuccess({required this.messages});
}
class ChatSendFailure extends ChatState {}
