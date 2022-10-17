import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';

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
  static const double _playerMinHeight = 60.0;
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://assets-global.website-files.com/60a0ade9a9e15bdd6b98f68b/60d5dbf12e61d241489c30b1_spotify-for-artists.jpg",
            ),
          ),
        ),
        title: const Text("Your Library",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 30)),
        elevation: 0,
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
      body: Stack(
        children: [
          Padding(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 15,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 15,
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Most Recent",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 190,
                        child: IconButton(
                          alignment: Alignment.centerRight,
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                          iconSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Expanded(
                  child: GridView.count(
                    padding: const EdgeInsets.all(10),
                    crossAxisCount: 2,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridTile(
                          child: Card(
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://misc.scdn.co/liked-songs/liked-songs-300.png"))),
                              child: GestureDetector(
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/564x/f5/31/be/f531be33d92a1431d5b274e65eae3a52.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://marketplace.canva.com/EAEdfgToPuA/1/0/1600w/canva-turquoise-and-pink-hands-90s-anime-love-songs-playlist-cover-2QedCFTcJRU.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://wallpapercave.com/wp/wp8852288.png"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://d2rd7etdn93tqb.cloudfront.net/wp-content/uploads/2022/03/spotify-playlist-cover-orange-headphones-032322.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/originals/ee/2c/b9/ee2cb910d219ae7f276fadbae2fc3196.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/474x/5b/19/04/5b1904f8438a5406ee420a92f01c9f0f.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/originals/ac/1c/be/ac1cbe2351238a7579db6846c5968163.jpg"))),
                          child: GestureDetector(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Offstage(
            child: Miniplayer(
              backgroundColor: Colors.grey,
              minHeight: _playerMinHeight,
              maxHeight: MediaQuery.of(context).size.height,
              builder: (height, percentage) => Center(
                child: Text('$height, $percentage'),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomNavigationBar(
              elevation: 100,
              unselectedItemColor: Colors.white,
              backgroundColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(Icons.search),
                    label: "Search"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(Icons.my_library_books_outlined),
                    label: "Your Library"),
              ]),
        ],
      ),
    );
  }
}
