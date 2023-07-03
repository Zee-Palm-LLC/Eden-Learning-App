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
    imageURL:
        'https://media.istockphoto.com/id/1430286042/photo/focus-businessman-designer-and-computer-planning-typing-and-strategy-for-working-in-modern.webp?b=1&s=170667a&w=0&k=20&c=tyncL3Dd_2xFbUfrdvG5cvhWx-8ATolXx4zs-Bh44J4=',
    time: 'Now',
  ),
  ChatModel(
    name: "Glady's Murphy",
    messagename: "That's Great",
    imageURL:
        'https://media.istockphoto.com/id/1477470639/photo/woman-wearing-wireless-headphones.webp?b=1&s=170667a&w=0&k=20&c=QymD7KjmVevi_qy-nIN866NQE5Vs-zwMNsCeddF4AFM=',
    time: 'Yesterday',
  ),
  ChatModel(
      name: 'Jorge Henry',
      messagename: 'Hey where are you?',
      imageURL:
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      time: '31 Mar',),
  ChatModel(
    name: 'Philip Fox',
    messagename: 'Busy! Call me in 20 mins',
    imageURL:
        'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    time: '28 Mar',
  ),
  ChatModel(
    name: 'Debra Hawkins',
    messagename: "Thankyou, It's awesome",
    imageURL:
        'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    time: '23 Mar',
  ),
  ChatModel(
    name: 'Jacob Pena',
    messagename: 'will update you in evening',
    imageURL:
        'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    time: '17 Mar',
  ),
  ChatModel(
    name: 'Andrey Jones',
    messagename: 'Can you please share the file?',
    imageURL:
        'https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    time: '24 Feb',
  ),
  ChatModel(
    name: 'John Wick',
    messagename: 'How are you?',
    imageURL:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
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
    image:
        'https://media.istockphoto.com/id/1430286042/photo/focus-businessman-designer-and-computer-planning-typing-and-strategy-for-working-in-modern.webp?b=1&s=170667a&w=0&k=20&c=tyncL3Dd_2xFbUfrdvG5cvhWx-8ATolXx4zs-Bh44J4=',
    name: 'Alex',
  ),
  OnlinePeople(
    image:
        'https://media.istockphoto.com/id/1477470639/photo/woman-wearing-wireless-headphones.webp?b=1&s=170667a&w=0&k=20&c=QymD7KjmVevi_qy-nIN866NQE5Vs-zwMNsCeddF4AFM=',
    name: 'Qin',
  ),
  OnlinePeople(
    image:
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Harinder',
  ),
  OnlinePeople(
    image:
        'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Lilah',
  ),
  OnlinePeople(
    image:
        'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Martin',
  ),
];
