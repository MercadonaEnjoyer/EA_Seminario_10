import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_seminario/Models/PlaceModel.dart';
import 'package:flutter_seminario/Screens/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:dio/dio.dart' ;
import 'dart:io';


class PlaceDetailsPage extends StatelessWidget {
  final Place place;
  

const PlaceDetailsPage(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Place Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${place.author}'),
            Text('Mail: ${place.content}'),
            Text('Password: ${place.rating}'),
            // Add more user details here as needed
          ],
        ),
      ),
    );
  }
}