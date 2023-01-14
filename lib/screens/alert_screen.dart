
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS ( BuildContext context){

    showCupertinoDialog(
    barrierDismissible: false,
    context: context, 
    builder: (context){

      return  CupertinoAlertDialog(
          title: const Text('title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:const[
              Text('This is a content alert'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,),
            ],
          ),
           actions: [

            TextButton(
            onPressed: ()=> Navigator.pop(context),
            child: const Text('cancel', style: TextStyle(color: Colors.red),),
            
            ),

             TextButton(
            onPressed: ()=> Navigator.pop(context),
            child: const Text('ok', 
             )),


          ],

      );
    }
    );
  }

  void displayDialogAndroid(BuildContext context) {

    showDialog(
      barrierDismissible: false,
      context: context,
       builder: (context) {
        return  AlertDialog(
          elevation: 5,
          title: const Text('title'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:const[
              Text('This is a content alert'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,),
            ],
          ),
          actions: [

            TextButton(onPressed: ()=> Navigator.pop(context),
            child: const Text('cancel'),

            ),

          ],
        );
       }
       
       );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
         child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15 ),
            child: Text('Show alert', style: TextStyle(fontSize: 20),),
          ),
        // onPressed: ()=> displayDialogAndroid(context)
        onPressed: ()=> Platform.isAndroid
         ? displayDialogAndroid(context)
         : displayDialogIOS(context),
        
         
          
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child:const Icon(Icons.close),
        onPressed: (){
          
          Navigator.pop(context);

        }
        
        
        ),
    );
  }
}