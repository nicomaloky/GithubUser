import 'package:http/http.dart' as http;

import 'dart:convert';

import 'entity/githubuser_model.dart';

class NetworkService {
  var accesToken = "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";
  var baseUrl = "https://api.github.com";

  fetchGithublist() async{
     var path = "/users";

     try {
      // var response = await http.get(Uri.https(baseUrl, path));
      var response = await http.get(Uri.https("https://api.github.com/users"));

      print(response.body);
      var data = json.decode(response.body);
      print(data);
     
     if(response.statusCode >=200) {
        var list = data.map ((e)=> GithubList.fromJson(e));
     }

     } catch (e) {
      return null;
     }
  }
}