import 'package:ecommerceapp/core/constant/route.dart';
import 'package:ecommerceapp/view/screen/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes =
     <String, WidgetBuilder>{
     route.onboarding: (conntex)=> const onboarding(),
    };
