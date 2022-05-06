import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:githubapiassignment/core/strings.dart';
import 'package:githubapiassignment/models/get_user_model.dart';
import 'package:githubapiassignment/models/repo_list_model.dart';
import 'package:http/http.dart' as http;
class ApiServices{

  Future<UserModel> getUser(String userName) async {
    //  print(token);
    try{
      final response = await http.get(Uri.parse(Strings.apiUrl+userName),
    );

      if (response.statusCode == 200) {
        return UserModel.fromJson(json.decode(response.body));
      }
      else if(response.statusCode == 404){
        throw ('User Not Found');
      }
      else {
        throw ('Something went wrong');
      }
    }on SocketException {
      throw ('No Internet connection');
    }
    catch(e){
      throw (e.toString());
    }
  }
  Future<List<RepoModel>> getRepo(String url) async {
    //  print(token);
    try{
      final response = await http.get(Uri.parse(url),
      );

      if (response.statusCode == 200) {
        return repoModelFromJson(response.body);
      }
      else if(response.statusCode == 404){
        throw ('User Not Found');
      }
      else {
        throw ('Something went wrong');
      }
    }on SocketException {
      throw ('No Internet connection');
    }
    catch(e){
      throw (e.toString());
    }
  }
}