import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/add_post_page/add_post_page.dart';
import 'package:instagram_clone/pages/feed_page/feed_page.dart';
import 'package:instagram_clone/pages/profile_page/profile_page.dart';
import 'package:instagram_clone/pages/search_page/search_page.dart';

const webPageSize = 600;

List<Widget> homePageItems = [
  FeedPage(),
  const SearchPage(),
  const AddPostPage(),
  const Text('notif'),
  ProfilePage(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
