import 'package:appinio_social_share_plus/appinio_social_share_platform_interface.dart';
import 'package:appinio_social_share_plus/platforms/android.dart';
import 'package:appinio_social_share_plus/platforms/ios.dart';

class AppinioSocialSharePlus {
  Android android = Android();
  IOS iOS = IOS();

  Future<Map<String, bool>> getInstalledApps() async {
    return AppinioSocialSharePlatform.instance.getInstalledApps();
  }
}
