
import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/downloads.dart';
import 'package:flutter_application/widgets/playlist.dart';
import 'package:flutter_application/widgets/songList.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final _tabs = [
    const Tab(child: Text("Songs")),
    const Tab(child: Text("Playlists")),
    const Tab(child: Text("Download")),
  ];
  final _contents = [
    const SongsList(),
    const Playlist(),
    const Download(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 2,
      child: Scaffold(appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/spotify.png', height: 50, width: 50,),
            const Text("Lumify"),
          ],
        ),
        bottom: TabBar(
          indicatorColor: Colors.yellow,
          tabs: _tabs,
        ),
    ),
    body: TabBarView(children: _contents),
    ));
  }
}