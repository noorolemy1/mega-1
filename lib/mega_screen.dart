import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MegaScreen extends StatelessWidget {
  const MegaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 50,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'MEGA',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 50),
                child: Stack(
                  children: [
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            textBaseline: TextBaseline.alphabetic,
                            children: const [
                              Icon(Icons.door_front_door,
                                  color: Colors.white, size: 50),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Door',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Normall',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// gradient: const LinearGradient(
//   colors: [Colors.white, Colors.black],
//   begin: Alignment.bottomCenter,
//   end: Alignment.topCenter,
// ),
