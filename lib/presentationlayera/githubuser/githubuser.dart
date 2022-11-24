import 'package:flutter/material.dart';

class GithubUser extends StatefulWidget {
  const GithubUser({super.key});

  @override
  State<GithubUser> createState() => _GithubUserState();
}

class _GithubUserState extends State<GithubUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        actions: [
          IconButton(
            onPressed:(){},
            icon: Icon(Icons.search)),
        ],
        title: Text ("GithubUser"),
        centerTitle: true,
      ),
      body: SafeArea(child: ListView.builder(itemBuilder: (context, index){
        return Column(
          children: [
            Divider(
              thickness: 1,
            ),
            ListTile(
                title: Text("hy tayo ${index+1}"),
                subtitle: Text("aowkoakw ${index+1}"),
              ),
          ],
        );
      }, itemCount: 20,)
      ),
    );
  }
}