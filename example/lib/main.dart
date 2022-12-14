import 'package:flutter/material.dart';

import 'package:flutter_qiyu/flutter_qiyu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  QiYu.registerApp(
    appKey: '6e43fcb98e41cace01f08db74dbce4c8',
    // appName: 'qiyu example',
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('网易七鱼测试'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('联系客服'),
                onPressed: () {
                  QYUserInfoParams userInfoParams = QYUserInfoParams.fromJson({
                    'userId': 'test_11',
                    // 'data':
                    //     '[{\"key\":\"real_name\", \"value\":\"土豪\"},{\"key\":\"mobile_phone\", \"hidden\":true},{\"key\":\"email\", \"value\":\"13800000000@163.com\"},{\"index\":0, \"key\":\"account\", \"label\":\"账号\", \"value\":\"zhangsan\", \"href\":\"http://example.domain/user/zhangsan\"},{\"index\":1, \"key\":\"sex\", \"label\":\"性别\", \"value\":\"先生\"},{\"index\":5, \"key\":\"reg_date\", \"label\":\"注册日期\", \"value\":\"2015-11-16\"},{\"index\":6, \"key\":\"last_login\", \"label\":\"上次登录时间\", \"value\":\"2015-12-22 15:38:54\"}]'
                  });
                  QiYu.setUserInfo(userInfoParams);

                  QYServiceWindowParams serviceWindowParams = QYServiceWindowParams.fromJson({
                    'source': {'sourceTitle': '网易七鱼ReactNative', 'sourceUrl': 'http://wzsckjyxgs.qiyukf.com', 'sourceCustomInfo': '我是来自自定义的信息'},
                    // 'commodityInfo': {
                    //   'commodityInfoTitle': 'ReactNative商品',
                    //   'commodityInfoDesc': '这是来自网易七鱼ReactNative的商品描述',
                    //   'pictureUrl': 'http://qiyukf.com/res/img/companyLogo/blmn.png',
                    //   'commodityInfoUrl': 'http://wzsckjyxgs.qiyukf.com',
                    //   'note': '￥1000',
                    //   'show': true
                    // },
                    'sessionTitle': '官方客服',
                    'groupId': 0,
                    'staffId': 0,
                    'robotId': 0,
                    'robotFirst': false,
                    'faqTemplateId': 0,
                    'vipLevel': 0,
                    'showQuitQueue': true,
                    'showCloseSessionEntry': true
                  });
                  QiYu.openServiceWindow(serviceWindowParams);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
