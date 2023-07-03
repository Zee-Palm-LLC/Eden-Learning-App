import 'package:eden_learning_app/app/data/constants/constants.dart';

class ChatModel {
  String name;
  String messagename;
  String imageURL;
  String time;
  ChatModel({
    required this.name,
    required this.messagename,
    required this.imageURL,
    required this.time,
  });
}

List<ChatModel> chatList = [
  ChatModel(
    name: 'Jane Russel',
    messagename: 'Awesome Setup',
    imageURL: AppAssets.kUser1,
    time: 'Now',
  ),
  ChatModel(
    name: "Glady's Murphy",
    messagename: "That's Great",
    imageURL: AppAssets.kUser2,
    time: 'Yesterday',
  ),
  ChatModel(
    name: 'Jorge Henry',
    messagename: 'Hey where are you?',
    imageURL: AppAssets.kUser3,
    time: '31 Mar',
  ),
  ChatModel(
    name: 'Philip Fox',
    messagename: 'Busy! Call me in 20 mins',
    imageURL: AppAssets.kUser4,
    time: '28 Mar',
  ),
  ChatModel(
    name: 'Debra Hawkins',
    messagename: "Thankyou, It's awesome",
    imageURL: AppAssets.kUser5,
    time: '23 Mar',
  ),
  ChatModel(
    name: 'Jacob Pena',
    messagename: 'will update you in evening',
    imageURL: AppAssets.kUser6,
    time: '17 Mar',
  ),
  ChatModel(
    name: 'Andrey Jones',
    messagename: 'Can you please share the file?',
    imageURL: AppAssets.kUser7,
    time: '24 Feb',
  ),
  ChatModel(
    name: 'John Wick',
    messagename: 'How are you?',
    imageURL: AppAssets.kUser1,
    time: '18 Feb',
  ),
];

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: 'Hello, Will', messageType: 'receiver'),
  ChatMessage(messageContent: 'How have you been?', messageType: 'receiver'),
  ChatMessage(
    messageContent: 'Hey Kriss, I am doing fine dude. wbu?',
    messageType: 'sender',
  ),
  ChatMessage(messageContent: 'ehhhh, doing OK.', messageType: 'receiver'),
  ChatMessage(
    messageContent: 'Is there any thing wrong?',
    messageType: 'sender',
  ),
];

class OnlinePeople {
  String image;
  String name;

  OnlinePeople({required this.image, required this.name});
}

List<OnlinePeople> onlinePeople = [
  OnlinePeople(
    image: AppAssets.kUser1,
    name: 'Alex',
  ),
  OnlinePeople(
    image: AppAssets.kUser2,
    name: 'Qin',
  ),
  OnlinePeople(
    image: AppAssets.kUser3,
    name: 'Harinder',
  ),
  OnlinePeople(
    image: AppAssets.kUser5,
    name: 'Lilah',
  ),
  OnlinePeople(
    image: AppAssets.kUser6,
    name: 'Martin',
  ),
];
