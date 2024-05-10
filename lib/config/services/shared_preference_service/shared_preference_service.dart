import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceProvider {
  SharedPreferences? sharedPreferences;
   bool viewedOnBoarding = false;
   bool completedProfile = false;
  
  
  Future<void> init()async{
    sharedPreferences = await SharedPreferences.getInstance();
    viewedOnBoarding = sharedPreferences?.getBool('onBoarding')??false;
    completedProfile = sharedPreferences?.getBool('completeProfile')??false;
  }

  void setOnBoarding(){
    sharedPreferences?.setBool('onBoarding', true);
  }

  void setCompleteProfile({bool? value}){
    sharedPreferences?.setBool('completeProfile', value??true);
  }
}