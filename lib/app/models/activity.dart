class Activity {
  String id;
  String userImage;
  String userName;
  String activityInfo;
  Activity({
    required this.id,
    required this.activityInfo,
    required this.userImage,
    required this.userName,
  });
}

List<Activity> todayActivities = [
  Activity(
    id: '1',
    activityInfo: '2m •  Left a review',
    userImage:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    userName: 'Hugo Saavedra',
  ),
  Activity(
    id: '2',
    activityInfo: '2m • Bought your course',
    userImage:
        'https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
    userName: 'Qin Shi',
  ),
  Activity(
    id: '3',
    activityInfo: '19m • Posted a project',
    userImage:'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        
    userName: 'Harinder Mondi',
  ),
];

List<Activity> recentWeek = [
  Activity(
    id: '4',
    userImage:
        'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    activityInfo: '2d • Bought your course',
    userName: 'Lilah Ioselev',
  ),
  Activity(
    id: '5',
    userImage:
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
    activityInfo: '3d • Posted a project',
    userName: 'Ya Chin-Ho',
  ),
  Activity(
    id: '6',
    userImage:
        'https://media.istockphoto.com/id/1477470639/photo/woman-wearing-wireless-headphones.webp?b=1&s=170667a&w=0&k=20&c=QymD7KjmVevi_qy-nIN866NQE5Vs-zwMNsCeddF4AFM=',
    activityInfo: '4d • Posted a project',
    userName: 'Nicolina Lindholm',
  ),
  Activity(
    id: '7',
    userImage:
        'https://media.istockphoto.com/id/1430286042/photo/focus-businessman-designer-and-computer-planning-typing-and-strategy-for-working-in-modern.webp?b=1&s=170667a&w=0&k=20&c=tyncL3Dd_2xFbUfrdvG5cvhWx-8ATolXx4zs-Bh44J4=',
    activityInfo: '5d • Left a review',
    userName: 'Martín Abasto',
  ),
];
