import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

// Todo add your one signal app Id
const ONE_SIGNAL_APP_ID = "";

class OneSignalNotification {
  static Future<void> init() async {
    //Remove this method to stop OneSignal Debugging
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
    OneSignal.shared.init(ONE_SIGNAL_APP_ID, iOSSettings: {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.inAppLaunchUrl: false
    });
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    await OneSignal.shared
        .promptUserForPushNotificationPermission(fallbackToSettings: true);
    OneSignal.shared
        .getPermissionSubscriptionState()
        .then((permissionSubscriptionState) {
      print("getPermissionSubscriptionState");
      if (permissionSubscriptionState != null &&
          permissionSubscriptionState.subscriptionStatus != null) {
        print(
            "User Id is : ${permissionSubscriptionState.subscriptionStatus.userId}");
        print(
            "Push token is : ${permissionSubscriptionState.subscriptionStatus.pushToken}");
      }
    });
    OneSignal.shared
        .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
      //will be called whenever the OS subscription changes
      if (!changes.from.subscribed && changes.to.subscribed) {
        print(changes);
      }
    });

    OneSignal.shared
        .setNotificationReceivedHandler((OSNotification notification) {
      // will be called whenever a notification is received
      print(notification.payload.jsonRepresentation());
      if (notification.appInFocus) {
        Fluttertoast.showToast(
            msg: '${notification.payload.title}\n${notification.payload.body} ',
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 18,
            timeInSecForIosWeb: 1);
        if (notification.payload.additionalData != null &&
            notification.payload.additionalData.containsKey('order-id')) {
          Fluttertoast.showToast(
              msg:
                  'order Id is ${notification.payload.additionalData['order-id']} ',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 18,
              toastLength: Toast.LENGTH_LONG,
              timeInSecForIosWeb: 1);
        }
      }
    });
    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // will be called whenever a notification is opened/button pressed.
      var data = result.notification.payload.additionalData;
      print(data);
    });
  }
}
