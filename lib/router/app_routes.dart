import 'package:fl_components/models/models.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

static const initialRoute = '/home';

static final menuOptions = <MenuOption> [
  // TODO: borrar home

  MenuOption(route: '/listview1', name: 'Listview1', screen: const Listview1Screen(), icon: Icons.list_alt_sharp),
  MenuOption(route: '/listview2', name: 'Listview2', screen: const Listview2Screen(), icon: Icons.list_sharp),
  MenuOption(route: '/alert', name: 'Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
  MenuOption(route: '/card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
  MenuOption(route: '/avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
  MenuOption(route: '/avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
  MenuOption(route: '/animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_outlined),
  MenuOption(route: '/inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
  MenuOption(route: '/slider', name: 'Slider and checks ', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
  MenuOption(route: '/listviewbuilder', name: 'Infinite Scroll y pull to refresh ', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_rounded),
];

static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
   MenuOption(route: '/home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp);
  for (final option in menuOptions) {
    appRoutes.addAll({  'home': (BuildContext context) => const HomeScreen()});
    
  }

  return appRoutes;
}


// static Map<String, Widget Function(BuildContext)> routes = {
  


//         '/home': (BuildContext context) => const HomeScreen(),
//         '/listview1': (BuildContext context) => const Listview1Screen(),
//         '/listview2': (BuildContext context) => const Listview2Screen(),
//         '/alert': (BuildContext context) => const AlertScreen(),
//         '/card': (BuildContext context) => const CardScreen(),
        
    
// };

static Route<dynamic> onGenerateRoute (RouteSettings settings) {
       
        return MaterialPageRoute(
            builder: (context) => const AlertScreen()
            );
      } 

}