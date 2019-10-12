package com.qualson.flutter_bloc

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {

  companion object {
    const val CHANNEL = "example.com/value"
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)

    MethodChannel(flutterView, CHANNEL)
            .setMethodCallHandler {
              methodCall, result ->
              if (methodCall.method == "getValue") {
                result.success("성공")
              } else {
                result.notImplemented()
              }

            }
  }
}
