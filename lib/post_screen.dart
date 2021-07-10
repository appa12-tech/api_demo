import 'package:flutter/material.dart';

import 'models/post.dart';
import 'repo/api.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Post> postList = [];
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    List<Post> temp = await Api.getPost();
    setState(() {
      postList = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(postList[index].title));
        },
        itemCount: postList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => About()),
          // );

          Api.deleteAlbum("1");
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.green,
      ),
    );
  }
}
