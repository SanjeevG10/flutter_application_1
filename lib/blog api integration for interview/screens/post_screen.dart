import 'package:flutter/material.dart';
import 'package:flutter_application_1/blog%20api%20integration%20for%20interview/model/post.dart';
import 'package:flutter_application_1/blog%20api%20integration%20for%20interview/service/api%20service.dart';

import 'post_details_screen.dart';
import 'add_post_screen.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  List<Post> posts = [];
  int selectedUserId = 1;
  ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  void _loadPosts() async {
    List<Post> loadedPosts = await apiService.getPosts();
    setState(() {
      posts = loadedPosts;
    });
  }

  void _deletePost(int postId) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Posts'),
      ),
      body: Column(
        children: [
          DropdownButton<int>(
            value: selectedUserId,
            onChanged: (value) {
              setState(() {
                selectedUserId = value!;
              });
              _loadPosts();
            },
            items: List.generate(
              10,
              (index) => DropdownMenuItem(
                value: index + 1,
                child: Text('User $index'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(posts[index].title),
                  subtitle: Text(posts[index].body),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _deletePost(posts[index].id),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PostDetailsScreen(post: posts[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPostScreen(),
            ),
          ).then((value) {
            if (value != null && value) {
              _loadPosts();
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
