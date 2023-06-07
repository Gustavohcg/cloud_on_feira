package com.example.cloud_on_feira

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

// class MainActivity: FlutterActivity() {
class MainActivity : FlutterFragmentActivity() {
   // override fun onCreate(savedInstanceState: Bundle?) {
   //	super.onCreate(savedInstanceState)
   //
   //	GeneratedPluginRegistrant.registerWith(this);
   // }
   override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
      GeneratedPluginRegistrant.registerWith(flutterEngine)
   }
}