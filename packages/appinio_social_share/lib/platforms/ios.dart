import 'package:appinio_social_share_plus/appinio_social_share_platform_interface.dart';

class IOS {
  Future<String> shareToWhatsapp(String message) {
    return AppinioSocialSharePlatform.instance.shareToWhatsapp(message);
  }

  Future<String> shareToTelegram(String message) {
    return AppinioSocialSharePlatform.instance.shareToTelegram(message);
  }

  Future<String> shareImageToWhatsApp(String filePath) {
    return AppinioSocialSharePlatform.instance.shareImageToWhatsApp(filePath);
  }

  Future<String> shareToTwitter(String message, {String? filePath}) {
    return AppinioSocialSharePlatform.instance
        .shareToTwitter(message, filePath: filePath);
  }

  Future<String> shareToInstagramDirect(
    String appId,
    String message,
  ) {
    return AppinioSocialSharePlatform.instance.shareToInstagramDirect(
      appId,
      message,
    );
  }

  Future<String> shareToInstagramFeed(String message, String imagePath) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramFeed(message, imagePath);
  }

  Future<String> shareToInstagramReels(String videoPath) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramFeed("", videoPath);
  }

  Future<String> shareToMessenger(String message) {
    return AppinioSocialSharePlatform.instance.shareToMessenger(message);
  }

  Future<String> copyToClipBoard(String message) {
    return AppinioSocialSharePlatform.instance.copyToClipBoard(message);
  }

  Future<String> shareToFacebook(String hashtag, List<String> filePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToFacebook(hashtag, filePaths);
  }

  Future<String> shareToInstagramStory(
    String appId, {
    String? stickerImage,
    String? backgroundImage,
    String? backgroundVideo,
    String? backgroundTopColor,
    String? backgroundBottomColor,
    String? attributionURL,
    String? message,
  }) {
    return AppinioSocialSharePlatform.instance.shareToInstagramStory(
      appId,
      stickerImage: stickerImage,
      backgroundImage: backgroundImage,
      backgroundVideo: backgroundVideo,
      backgroundTopColor: backgroundTopColor,
      backgroundBottomColor: backgroundBottomColor,
      attributionURL: attributionURL,
      message: message,
    );
  }

  Future<String> shareToFacebookStory(String appId,
      {String? stickerImage,
      String? backgroundImage,
      String? backgroundVideo,
      String? backgroundTopColor,
      String? backgroundBottomColor,
      String? attributionURL}) {
    return AppinioSocialSharePlatform.instance.shareToFacebookStory(appId,
        stickerImage: stickerImage,
        backgroundImage: backgroundImage,
        backgroundVideo: backgroundVideo,
        backgroundTopColor: backgroundTopColor,
        backgroundBottomColor: backgroundBottomColor,
        attributionURL: attributionURL);
  }

  ///Works only after implementing native code provided here [https://pub.dev/packages/appinio_social_share]
  Future<String> shareToTiktokPost(
      String videoFile, String redirectUrl, TiktokFileType tiktokFileType) {
    return AppinioSocialSharePlatform.instance
        .shareToTiktokPost(videoFile, redirectUrl, tiktokFileType);
  }

  Future<String> shareToSystem(String message, {List<String>? filePaths}) {
    return AppinioSocialSharePlatform.instance
        .shareToSystem("", message, filePaths: filePaths);
  }

  Future<String> shareToSMS(String message) {
    return AppinioSocialSharePlatform.instance
        .shareToSMS(message, filePaths: []);
  }

  Future<String> shareToLinkedinFeed(String message) {
    return AppinioSocialSharePlatform.instance.shareToLinkedinFeed(message);
  }

  Future<String> shareToLinkedinDirect(String message) {
    return AppinioSocialSharePlatform.instance.shareToLinkedinDirect(message);
  }

  Future<String> copyLinkToClipboard(String url) {
    return AppinioSocialSharePlatform.instance.copyLinkToClipboard(url);
  }
}
