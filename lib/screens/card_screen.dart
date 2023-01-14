import 'package:fl_components/Widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/Widgets/Widgets.dart';
import 'package:fl_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [


        CustomCardType1(),
        SizedBox(height: 10,),
        CustomCardType2(name: 'Beautiful scenery',imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.amateurphotographer.co.uk%2Fwp-content%2Fuploads%2F2020%2F09%2FMAIN-Moonrise-over-Blea-Tarn-and-the-Langdales-scaled.jpg&f=1&nofb=1&ipt=0b97c529cd44e9b71d749268eb09536fc8338de7ead195cc4329b309d3aed688&ipo=images ',),
        SizedBox(height: 10,),
        CustomCardType2(imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.technocrazed.com%2Fwp-content%2Fuploads%2F2015%2F12%2FLandscape-wallpaper-16.jpg&f=1&nofb=1&ipt=af83b40a950372cebe09e51a25584483a4aa0c465441253eef7cbd3bfcb2ad36&ipo=images',),
        SizedBox(height: 10,),
        CustomCardType2(imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallup.net%2Fwp-content%2Fuploads%2F2016%2F01%2F285818-trees-mountain-lake-landscape-clouds.jpg&f=1&nofb=1&ipt=fe5722379329511cf1acb111e8391eebcf4c423c38b91b662407bbbf5b53e1db&ipo=images',),
        SizedBox(height: 100,),
       
    
    
    
    
    
      ],)
    );
  }
}

