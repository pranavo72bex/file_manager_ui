import 'package:filemanager/const/kcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroudcolor,
      appBar: AppBar(
        backgroundColor: kbackgroudcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/dp.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            kpadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Favorite",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    favoriteContainer(
                      filename: 'Photos',
                      filenumber: '4524 files',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteContainer(
                      filename: 'Videos',
                      filenumber: '524 files',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    favoriteContainer(
                      filename: 'Documents',
                      filenumber: '3524 files',
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              rowtextfolder(),
              SizedBox(height: 5),
              verticalcontainer(
                filename: 'Products',
                filenumber: '150 files',
              ),
              SizedBox(
                height: 10,
              ),
              verticalcontainer(
                filename: 'Web Design',
                filenumber: '150 files',
              ),
              SizedBox(
                height: 10,
              ),
              verticalcontainer(
                filename: 'Photos',
                filenumber: '150 files',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class verticalcontainer extends StatelessWidget {
  const verticalcontainer({
    Key? key,
    required this.filename,
    required this.filenumber,
  }) : super(key: key);

  final String filename;
  final String filenumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: accentcolor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Icon(
            Icons.folder,
            size: 35,
            color: Colors.yellow[400],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                filename,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                filenumber,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
    );
  }
}

class rowtextfolder extends StatelessWidget {
  const rowtextfolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Folder",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_box_rounded,
            color: Colors.yellow[200],
          ),
        )
      ],
    );
  }
}

class favoriteContainer extends StatelessWidget {
  const favoriteContainer({
    Key? key,
    required this.filename,
    required this.filenumber,
  }) : super(key: key);

  final String filename;
  final String filenumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        20,
      ),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: accentcolor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            filename,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            filenumber,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          stackicon()
        ],
      ),
    );
  }
}

class stackicon extends StatelessWidget {
  const stackicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        customcontainer(
          leftalign: 0,
          containerColor: Colors.red[400],
        ),
        customcontainer(
          leftalign: 20,
          containerColor: Colors.yellow[400],
        ),
        customcontainer(
          leftalign: 40,
          containerColor: Colors.purple[400],
        ),
        customcontainer(
          leftalign: 60,
          containerColor: Colors.white,
          icon: Icons.add,
        ),
      ],
    );
  }
}

class customcontainer extends StatelessWidget {
  const customcontainer({
    Key? key,
    required this.leftalign,
    this.containerColor,
    this.icon,
  }) : super(key: key);

  final double leftalign;
  final containerColor;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftalign),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.black,
          size: 16,
        ),
      ),
    );
  }
}
