import 'package:flutter/material.dart';
import 'package:rr_flutter7/app_env.dart';
import 'package:rr_flutter7/post_api.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    loadPostsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column List'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
      ),
      body: Center(
          child: AppEnv.myList.isEmpty
              ? const Text('Empty')
              : SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < AppEnv.myList.length; i++)
                        Text('Post ${AppEnv.myList[i]}',
                            style: const TextStyle(fontSize: 20)),
                    ],
                  ),
                )),
    );
  }
}
