import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.account_circle_rounded,
          size: 40,
        ),
        leadingWidth: 100,
        title: const Text("Your Library",
            style: TextStyle(color: Colors.white, fontSize: 30)),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Playlists"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          side: BorderSide(color: Colors.white, width: 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Artists"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          side: BorderSide(color: Colors.white, width: 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Albums"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          side: BorderSide(color: Colors.white, width: 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Podcasts and Shows"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          side: BorderSide(color: Colors.white, width: 1),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 2, 5),
                  child: IconButton(
                    icon: Icon(Icons.arrow_upward),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_downward),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Most Recent",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Image(
                          image: NetworkImage(
                              "https://misc.scdn.co/liked-songs/liked-songs-300.png"),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover),
                      SizedBox(width: 10),
                      Text(
                        "Liked Songs",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Image(
                          image: NetworkImage(
                              "https://charts-images.scdn.co/REGIONAL_BR_DEFAULT.jpg"),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover),
                      SizedBox(width: 10),
                      Text(
                        "Top 50 Songs",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Image(
                          image: NetworkImage(
                              "https://i.pinimg.com/564x/f5/31/be/f531be33d92a1431d5b274e65eae3a52.jpg"),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover),
                      SizedBox(width: 10),
                      Text(
                        "Let's Chill",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Image(
                          image: NetworkImage(
                              "https://marketplace.canva.com/EAEdfgToPuA/1/0/1600w/canva-turquoise-and-pink-hands-90s-anime-love-songs-playlist-cover-2QedCFTcJRU.jpg"),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover),
                      SizedBox(width: 10),
                      Text(
                        "Love is in the air",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: const [
                      Image(
                          image: NetworkImage(
                              "https://d2rd7etdn93tqb.cloudfront.net/wp-content/uploads/2022/03/spotify-playlist-cover-orange-headphones-032322.jpg"),
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover),
                      SizedBox(width: 10),
                      Text(
                        "Rock this up",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
