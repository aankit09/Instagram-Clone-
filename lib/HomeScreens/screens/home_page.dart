import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 115,
            color: Color.fromARGB(255, 224, 223, 223),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, index) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 33,
                            backgroundImage: AssetImage('assets/1.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
                itemCount: 40,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage('assets/1.jpg'),
                        ),
                        title: Text('User name'),
                        trailing: Icon(Icons.more_vert),
                        subtitle: Text('Sponsored'),
                      ),
                      Container(
                        height: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/7.jpg'),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Wrap(
                          children: const [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5.0, top: 8, bottom: 8),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.comment_outlined,
                                size: 25,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.send),
                            )
                          ],
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.bookmark_border_rounded),
                        ),
                      )
                    ],
                  );

                  // Text(
                  //   'Ankit Sanvedi',
                  //   style: TextStyle(fontSize: 35, color: Colors.black),
                  // );
                }),
          )
        ],
      ),
    );
  }
}
