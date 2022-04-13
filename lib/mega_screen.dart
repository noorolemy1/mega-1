import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MegaScreen extends StatefulWidget {
  const MegaScreen({Key? key}) : super(key: key);

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
                                        const EdgeInsets.only(top: 15,left: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: FlutterSwitch(
                                            activeTextColor: Colors.white,
                                            inactiveTextColor: Colors.white,
                                            activeColor: Colors.black,
                                            inactiveColor: Colors.black,
                                            width: 97.0,
                                            height: 42.0,
                                            valueFontSize: 25.0,
                                            toggleSize: 35.0,
                                            value: isSwitchDoor,
                                            borderRadius: 25.0,
                                            padding: 9.0,
                                            showOnOff: true,
                                            onToggle: (val) {
                                              setState(() {
                                                isSwitchDoor = val;
                                              });
                                            },
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                            borderRadius: BorderRadius.circular(30)
                                          ),
                                          width: 100.0,
                                          height: 45.0,
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
                                padding:
                                const EdgeInsets.only(top: 15,left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: FlutterSwitch(
                                        toggleColor: Colors.black,
                                        activeTextColor: Colors.black,
                                        inactiveTextColor: Colors.black,
                                        activeColor: Colors.white,
                                        inactiveColor: Colors.white,
                                        width: 97.0,
                                        height: 42.0,
                                        valueFontSize: 25.0,
                                        toggleSize: 35.0,
                                        value: smoke,
                                        borderRadius: 25.0,
                                        padding: 9.0,
                                        showOnOff: true,
                                        onToggle: (val) {
                                          setState(() {
                                            smoke = val;
                                          });
                                        },
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      width: 100.0,
                                      height: 45.0,
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
                              padding:
                              const EdgeInsets.only(top: 15,left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: FlutterSwitch(
                                      toggleColor: Colors.black,
                                      activeTextColor: Colors.black,
                                      inactiveTextColor: Colors.black,
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.white,
                                      width: 97.0,
                                      height: 42.0,
                                      valueFontSize: 25.0,
                                      toggleSize: 35.0,
                                      value: fire,
                                      borderRadius: 25.0,
                                      padding: 9.0,
                                      showOnOff: true,
                                      onToggle: (val) {
                                        setState(() {
                                          fire = val;
                                        });
                                      },
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    width: 100.0,
                                    height: 45.0,
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
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(top: 15,left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: FlutterSwitch(
                                          toggleColor: Colors.black,
                                          activeTextColor: Colors.black,
                                          inactiveTextColor: Colors.black,
                                          activeColor: Colors.white,
                                          inactiveColor: Colors.white,
                                          width: 97.0,
                                          height: 42.0,
                                          valueFontSize: 25.0,
                                          toggleSize: 35.0,
                                          value: water,
                                          borderRadius: 25.0,
                                          padding: 9.0,
                                          showOnOff: true,
                                          onToggle: (val) {
                                            setState(() {
                                              water = val;
                                            });
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        width: 100.0,
                                        height: 45.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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