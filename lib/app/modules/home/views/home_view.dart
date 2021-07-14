import 'package:filemanager/const/kcolor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroudcolor,
      appBar: AppBar(
        backgroundColor: kbackgroudcolor,
        elevation: 0,
        leading: Icon(
          Icons.bubble_chart_rounded,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed("/fab");
                },
                child: Container(
                  padding: EdgeInsets.all(kpadding),
                  // height: MediaQuery.of(context).size.height * 0.4,
                  // width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: accentcolor,
                    // boxShadow: kShadow,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        new CircularPercentIndicator(
                          radius: 140.0,
                          lineWidth: 17.0,
                          animation: true,
                          percent: 0.7,
                          center: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              new Text("70%"),
                              new Text(
                                "used",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        bodytext(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            percenttext(
                              text: '256GB',
                              color: Colors.white,
                            ),
                            percenttext(
                              text: '180GB',
                              color: Colors.green,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: [
                  CustomContainer(
                    filename: 'Photos',
                    filenumber: '4524',
                    filepercentage: '25%',
                    filecolor: Colors.pink[200],
                  ),
                  CustomContainer(
                    filename: 'Songs',
                    filenumber: '250',
                    filepercentage: '75%',
                    filecolor: Colors.yellow,
                  ),
                  CustomContainer(
                    filename: 'Videos',
                    filenumber: '320',
                    filepercentage: '85%',
                    filecolor: Colors.teal,
                  ),
                  CustomContainer(
                    filename: 'Documents',
                    filenumber: '1200',
                    filepercentage: '55%',
                    filecolor: Colors.red[400],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.filename,
    required this.filenumber,
    required this.filepercentage,
    this.filecolor,
  }) : super(key: key);
  final String filename;
  final String filenumber;
  final String filepercentage;
  final filecolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kpadding),
      // height: MediaQuery.of(context).size.height * 0.3,
      // width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: accentcolor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.folder,
                size: 50,
                color: filecolor,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ))
            ],
          ),
          Text(
            filename,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            filenumber,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            filepercentage,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new LinearPercentIndicator(
            width: MediaQuery.of(context).size.width * 0.35,
            lineHeight: 10.0,
            percent: 0.5,
            backgroundColor: kbackgroudcolor,
            progressColor: progrcolor,
          ),
        ],
      ),
    );
  }
}

class percenttext extends StatelessWidget {
  const percenttext({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  final color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

class bodytext extends StatelessWidget {
  const bodytext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "Total Space",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          "Used",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
