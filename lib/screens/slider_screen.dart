
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Slider and checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            Slider.adaptive(
            min: 0,
            max: 500,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
             _sliderValue = value;
             setState(() {}
             
             );
             
            }
             : null
             
             ),

            //  Checkbox(
            //  value: _sliderEnabled,
            //  onChanged: (value) {
            //   _sliderEnabled = value ?? true;
            //   setState(() {
                
            //   });
            //  }
            //  ),

            CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState((){_sliderEnabled  = value ?? true;}) 
            ),


            SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled, 
             
           onChanged: (value) => setState((){_sliderEnabled  = value ;}) 
            
            ),

            const AboutListTile(
              
            ),


              // Switch(
              // value: _sliderEnabled, 
              // onChanged: (value) => setState((){ _sliderEnabled  = value; }) 
              
              // ),

      
             Expanded(
               child: SingleChildScrollView(
                 child: Image(image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F7a%2Fac%2F81%2F7aac81f45812044b03a3b53f590fc689.jpg&f=1&nofb=1&ipt=299c587725898720181f25150e12f0c3dfaec2374102dbe6fb208472e45194db&ipo=images'), 
                      fit: BoxFit.contain,
                      width: _sliderValue,
                      ),
               ),
             ),
                 const SizedBox(height: 50),
          ],
        ),
      )
    );
  }
}