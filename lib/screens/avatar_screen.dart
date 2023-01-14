import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],

            ),
          )
        ],
      ),
      body:const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage:  NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F8d%2Fe3%2Fd0%2F8de3d01740fdd9e710845f0eecb6f4fa.jpg&f=1&nofb=1&ipt=dbf13542d1b1833adfd49e5b893f8ca6a1f7802786b33def7767ffe0e340c8ad&ipo=images'),
         )
      ),
    );
  }
}