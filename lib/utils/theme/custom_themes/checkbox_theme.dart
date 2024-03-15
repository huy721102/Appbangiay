import 'package:flutter/material.dart';

/// custom class for light va dark text themes
class HCheckboxTheme {
  HCheckboxTheme._(); //to avoid creating instances

  ///custom light text themes
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
     if(states.contains(MaterialState.selected)){
      return Colors.blue;
     }else{
      return Colors.transparent;
     }
    }),
  );

  ///custom dark text themes
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
     if(states.contains(MaterialState.selected)){
      return Colors.blue;
     }else{
      return Colors.transparent;
     }
    }),
  );
}