

import 'package:flutter_application_1/datalayers/networkservice.dart';

class Githubusercontrollers {
  NetworkService network = NetworkService();
  
  var githubList = [];

  fetchGithublist() async {
    var response = await network.fetchGithublist();
    print (response);

    try {
      githubList = response;
    }catch (e) {
      githubList = [];
    }
  }
}