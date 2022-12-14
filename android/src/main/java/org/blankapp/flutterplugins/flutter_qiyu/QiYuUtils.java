package org.blankapp.flutterplugins.flutter_qiyu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.Log;


public class QiYuUtils {
    public static int parseColor(String colorString) {
        int color = 0;
        try {
            color = Color.parseColor(colorString);
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return color;
    }

    public static String getImageUri(Context context, String resName) {
        Log.v("debug", ">>>>>>>>>>>>>imageuri==............"+resName);
        
        if (TextUtils.isEmpty(resName)) {
            return null;
        }
        if (resName.startsWith("./")) {
            resName = resName.replace("./", "");
        }
        if (resName.contains(".")) {
            resName = resName.substring(0, resName.indexOf("."));
        }
        resName = resName.replace("/", "_");
        Log.v("debug", ">>>>>>>>>>>>>处理后的imageuri==............"+resName);

        Resources res = context.getResources();
        String pkgName = context.getPackageName();
        int resId = res.getIdentifier(resName, "drawable", pkgName);
        if (resId > 0) {
            return "res:///" + resId;
        }
        return null;
    }
}
