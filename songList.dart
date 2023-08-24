import 'package:flutter/material.dart';

class SongsList extends StatefulWidget {
  const SongsList({super.key});

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  final _songs = [
    1, 2, 3 
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
        itemCount: _songs.length,
        itemBuilder: (context, index) => ListTile(
          title: Text('${_songs[index]}', style: const TextStyle(color: Colors.white),),
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
                        Navigator.pop(context);
                        setState(() {
                          
                        });
                      },
                      child: const ListTile(
                        title: Text('Add to playlist'),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        _songs.removeAt(index);
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
            child: const Icon(Icons.more_vert, size: 15, color: Colors.white,)),
        )
      ),
      );
  }
}