import 'package:flutter/material.dart';
import 'package:e_commerce/Extract.dart';
import 'user.dart';
import 'package:provider/provider.dart';
import 'Extract.dart';


//song
class msgTxt extends StatelessWidget {
  List songdata;
  List albumiddata;
  List followdata;
  msgTxt({
    required this.songdata,
    required this.albumiddata,
    required this.followdata
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: songdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: buildSong(image: "images/default_img.jpg", song_name: songdata[i]['songname'], artist_names: albumiddata[i]["name"], artist_id: albumiddata[i]["ArtistId"],followers: followdata[i]["followers"], likes: songdata[i]["likes_song"],song_id: songdata[i]["SongId"],),
            );
          }),
        ),
      ],
    );
  }
}

//albums
class albums extends StatelessWidget {

  List albumdata;

  albums({
    required this.albumdata,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 500,
          child: ListView.builder(itemCount: albumdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: buildContainer(image: "images/default_img.jpg", album_name: albumdata[i]['albumname'], ),
            );
          }),
        ),
      ],
    );
  }
}

class Favorite_page extends StatelessWidget {
  List favdata;
  List albumdata;
  List followdata;
  Favorite_page({
    required this.favdata,
    required this.albumdata,
    required this.followdata
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LimitedBox(
          maxHeight: 600,
          child: ListView.builder(itemCount: favdata.length,itemBuilder: (BuildContext context, int i){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Favorite(image: "images/default_img.jpg", song_name: favdata[i]['songname'], artist_names: favdata[i]["artistname"], song_id: favdata[i]["songid"],artist_id: albumdata[i]["ArtistId"],followers: followdata[i]["followers"],),
            );
          }),
        ),
      ],
    );

  }
}
