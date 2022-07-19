import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/add_post_page/add_post_page.dart';
import 'package:instagram_clone/pages/feed_page/feed_page.dart';
import 'package:instagram_clone/pages/profile_page/profile_page.dart';
import 'package:instagram_clone/pages/search_page/search_page.dart';

const webPageSize = 600;

const homePageItems = [
  FeedPage(),
  SearchPage(),
  AddPostPage(),
  Text('notif'),
  ProfilePage(),
];
