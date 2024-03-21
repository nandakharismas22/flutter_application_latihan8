import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UPN',
      home: TwitterProfile(),
    );
  }
}

class TwitterProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile UPN',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 9, 9),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                top: 20, // Menggeser tombol back sedikit ke bawah
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 107, 107, 107),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Container(
                  height: 260,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/header.jpeg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -3,
                left: 20,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 42,
                    backgroundImage: AssetImage('assets/profil.jpg'),
                  ),
                ),
              ),
              Positioned(
                top: 220,
                right: 30,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 1, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: ListTile(
              title: Text(
                'UPN Veteran Jawa Timur',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              subtitle: Text('@upnvjt_official'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
            child: ListTile(
              title: Text(
                'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Translate bio',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //SizedBox(height: 20),
          //
          Container(
              //height: 500, // Ubah tinggi sesuai kebutuhan
              //decoration: BoxDecoration(
              // image: DecorationImage(
              //image: AssetImage('assets/new_photo.jpeg'),
              //fit: BoxFit.cover,
              //),
              // ),
              ),
        ],
      ),
    );
  }
}
