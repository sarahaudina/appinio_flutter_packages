import 'package:appinio_social_share_plus/appinio_social_share_platform_interface.dart';

class Android {
  Future<String> shareToWhatsapp(String message, String? filePath) {
    return AppinioSocialSharePlatform.instance
        .shareToWhatsappAndroid(message, filePath);
  }

  Future<String> shareFilesToWhatsapp(List<String> filePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToWhatsappAndroidMultiFiles(filePaths);
  }

  Future<String> shareToTelegram(String message, String? filePath) {
    return AppinioSocialSharePlatform.instance
        .shareToTelegramAndroid(message, filePath);
  }

  Future<String> shareFilesToTelegram(List<String> filePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToTelegramAndroidMultiFiles(filePaths);
  }

  Future<String> shareToTwitter(String message, {String? filePath}) {
    return AppinioSocialSharePlatform.instance
        .shareToTwitterAndroid(message, filePath: filePath);
  }

  Future<String> shareToInstagramDirect(
    String appId,
    String message,
  ) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramDirect(appId, message);
  }

  Future<String> shareToInstagramFeed(String message, String? filePath) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramFeed(message, filePath);
  }

  Future<String> shareFilesToInstagramFeed(List<String> imagePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramFeedAndroid(imagePaths);
  }

  Future<String> shareToInstagramReels(List<String> videoPaths) {
    return AppinioSocialSharePlatform.instance
        .shareToInstagramFeedAndroid(videoPaths);
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

  ///works only for android
  Future<String> shareToTiktokStatus(List<String> filePaths) {
    return AppinioSocialSharePlatform.instance.shareToTiktokStatus(filePaths);
  }

  Future<String> shareToSystem(String title, String message, String? filePath) {
    return AppinioSocialSharePlatform.instance
        .shareToSystemAndroid(title, message, filePath);
  }

  Future<String> shareFilesToSystem(String title, List<String> filePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToSystemAndroidMultifiles(title, filePaths);
  }

  Future<String> shareToSMS(String message, String? filePath) {
    return AppinioSocialSharePlatform.instance
        .shareToSMSAndroid(message, filePath);
  }

  Future<String> shareFilesToSMS(List<String> filePaths) {
    return AppinioSocialSharePlatform.instance
        .shareToSMSAndroidMultifiles(filePaths);
  }

  Future<String> shareToLinkedinFeed(String message, String? imagePath) {
    return AppinioSocialSharePlatform.instance
        .shareToLinkedinFeedAndroid(message, imagePath);
  }

  Future<String> shareToLinkedinDirect(String message, String? imagePath) {
    return AppinioSocialSharePlatform.instance
        .shareToLinkedinDirectAndroid(message, imagePath);
  }

  Future<String> copyLinkToClipboard(String url) {
    return AppinioSocialSharePlatform.instance.copyLinkToClipboard(url);
  }
}
