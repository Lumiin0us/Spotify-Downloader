
import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  final _playlists = [
    'AB', 'BC', 'CA' 
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemCount: _playlists.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(_playlists[index], style: const TextStyle(color: Colors.white),),
          trailing: GestureDetector(
            onTap: () => showModalBottomSheet(
              backgroundColor: const Color.fromARGB(220, 255, 255, 255),
              context: context, 
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
              ),
              builder: (context) => FractionallySizedBox(
                heightFactor: 0.5,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        _playlists.removeAt(index);
                        Navigator.pop(context);
                        setState(() {
                          
                        });
                      },
                      child: const ListTile(
                        title: Text('Delete'),
                      ),
                    )
                  ],
                ),
              )),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: const Icon(Icons.edit, size: 15, color: Colors.white,)),
                GestureDetector(
                  onTap: (){},
                  child: const Icon(Icons.delete, size: 15, color: Colors.white,)),
                GestureDetector(
                  onTap: (){},
                  child: const Icon(Icons.add, size: 15, color: Colors.white,)),
              ],
            )),
        )
      ),
    );
  }
}