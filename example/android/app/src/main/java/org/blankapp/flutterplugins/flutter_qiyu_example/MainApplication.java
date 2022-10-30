package org.blankapp.flutterplugins.flutter_qiyu_example;

import org.blankapp.flutterplugins.flutter_qiyu.FlutterQiyuPlugin;

import io.flutter.app.FlutterApplication;

import org.blankapp.flutterplugins.flutter_qiyu.FlutterQiyuPlugin;


public class MainApplication extends FlutterApplication {
    @Override
    public void onCreate() {
        super.onCreate();
        Unicorn.init(this, "6e43fcb98e41cace01f08db74dbce4c8", options(), new UnicornImageLoader());
        FlutterQiyuPlugin.initSDK(this, "6e43fcb98e41cace01f08db74dbce4c8");
    }

    // 如果返回值为null，则全部使用默认参数。
   private YSFOptions options() {
        YSFOptions options = new YSFOptions();
        options.statusBarNotificationConfig = new StatusBarNotificationConfig();
        return options;
   }
}
