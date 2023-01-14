import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children:  [

       const ListTile(

          leading:  Icon(Icons.photo_album, color: AppTheme.primary,),
          title:  Text('I am title'),
          subtitle: Text('Ipsum nulla labore anim esse eu proident veniam incididunt mollit id voluptate cupidatat. Proident sint adipisicing eiusmod non qui. Deserunt nulla ea et aliqua sit mollit ex elit in aliqua qui commodo. Ullamco anim incididunt est commodo deserunt cillum exercitation deserunt est sunt. Elit nulla reprehenderit aliqua non amet anim aliquip ea ullamco consectetur ut aliqua voluptate qui. Ex pariatur nulla adipisicing irure ullamco.'),
        ),

        Padding(
          padding: const EdgeInsets.only(right:5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
              child: const Text('Cancel'),
              
              
              ),
              TextButton(
                onPressed: () {},
              child: const Text('Ok'),
             
              
              ),


            ],
          ),
        )

      ],),
    );
  }
}