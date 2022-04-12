import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MegaScreen extends StatefulWidget {
  const MegaScreen({Key key}) : super(key: key);

  @override
  State<MegaScreen> createState() => _MegaScreenState();
}

class _MegaScreenState extends State<MegaScreen> {
  bool isSwitchDoor = false;
  bool smoke = false;
  bool fire = false;
  bool water = false;

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
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const Center(
              child: Text(
                'MEGA',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( top: 40),
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  if (isSwitchDoor == true)
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
                                        ),
                                      ],
                                    ),
                                  if (isSwitchDoor == false)
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.redAccent[700],
                                          radius: 5,
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          'close',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 15, left: 30),
                                    child: Row(
                                      children: [
                                        CustomSwitch(
                                          value: isSwitchDoor,
                                          activeColor: Colors.blue,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitchDoor = value;
                                            });
                                            print(value);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40,),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          height: 210,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.black87.withOpacity(.9),
                              borderRadius: BorderRadius.circular(27)),
                        ),
                        Container(
                          height: 205,
                          width: 165,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                textBaseline: TextBaseline.alphabetic,
                                children: const [
                                  Icon(Icons.door_front_door,
                                      color: Colors.black, size: 50),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      'Smoke',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 30),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              if (smoke == true)
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
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ],
                                ),
                              if (smoke == false)
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.redAccent[700],
                                      radius: 5,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'close',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ],
                                ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15, left: 30),
                                child: Row(
                                  children: [
                                    CustomSwitch(
                                      value: smoke,
                                      activeColor: Colors.blue,
                                      onChanged: (value) {
                                        setState(() {
                                          smoke = value;
                                        });
                                        print(value);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 210,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(.9),
                            borderRadius: BorderRadius.circular(27)),
                      ),
                      Container(
                        height: 205,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              textBaseline: TextBaseline.alphabetic,
                              children: const [
                                Icon(Icons.door_front_door,
                                    color: Colors.black, size: 50),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Fire',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            if (fire == true)
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
                                        color: Colors.black, fontSize: 25),
                                  ),
                                ],
                              ),
                            if (fire == false)
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.redAccent[700],
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'close',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 30),
                              child: Row(
                                children: [
                                  CustomSwitch(
                                    value: fire,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        fire = value;
                                      });
                                      print(value);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 210,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(.9),
                            borderRadius: BorderRadius.circular(27)),
                      ),
                      Container(
                        height: 205,
                        width: 165,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              textBaseline: TextBaseline.alphabetic,
                              children: const [
                                Icon(Icons.door_front_door,
                                    color: Colors.black, size: 50),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    'Water',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            if (water == true)
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
                                        color: Colors.black, fontSize: 25),
                                  ),
                                ],
                              ),
                            if (water == false)
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.redAccent[700],
                                    radius: 5,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'close',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 30),
                              child: Row(
                                children: [
                                  CustomSwitch(
                                    value: water,
                                    activeColor: Colors.blue,
                                    onChanged: (value) {
                                      setState(() {
                                        water = value;
                                      });
                                      print(value);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('Everything is Okay',style: TextStyle(fontSize: 27),)
          ],
        ),
      ),
    );
  }
}