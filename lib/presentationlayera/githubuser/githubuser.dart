import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentationlayera/githubusercontrollers.dart';

class GithubUser extends StatefulWidget {
  const GithubUser({super.key});

  @override
  State<GithubUser> createState() => _GithubUserState();
}

class _GithubUserState extends State<GithubUser> {
  Githubusercontrollers controllers = Githubusercontrollers();
  
  getData() {
    
    setState(() {});
    controllers.fetchGithublist();
      }

@override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

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
                leading: Image.network(controllers.githubList[index].avatarUrl),
                title: Text(controllers.githubList[index].login),
                subtitle: Text(controllers.githubList[index].url),
              ),
          ],
        );
      }, itemCount:controllers.githubList.length,)
      ),
    );
  }
}