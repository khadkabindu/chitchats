
class Post{
  final String profile_image;
  final String username;
  final String post_hours;
  final String location;
  final String post_image;

  const Post( { required this.profile_image, required  this.username,  required this.post_hours,  required this.location,  required this.post_image});

  static const List<Post> posts =[
    Post(profile_image:"man2.jpg", username:"bec_keey", post_hours:"14", location:"Sanepa,Lalitpur", post_image:"gokyo.jpg"),
    Post(profile_image:"aestheticgirl.jpg", username:"samy_0e", post_hours:"8", location:"NewYork", post_image:"dream.jpg"),
    Post(profile_image:"varsha.jpeg", username:"kreety_er", post_hours:"1", location:"London", post_image:"girlygirls.jpg"),
    Post(profile_image:"ethan.jpg", username:"simrannn__", post_hours:"2", location:"kathmandu, Nepal", post_image:"chilledboys.jpg"),




  ];

}