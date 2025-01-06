import 'package:appinio_social_share_plus/enums/enum_social_media.dart';
import 'package:html2md/html2md.dart' as html2md;

extension StringExtension on String {
  String toMarkdown() {
    return html2md
        .convert(this)
        // remove underline markdown
        .replaceAll('~~', '')
        // remove fence markdown
        .replaceAll('```', '')
        // remove inline code markdown
        .replaceAll('`', '')
        // remove hr markdown
        .replaceAll('***', '')
        // remove bold markdown
        .replaceAll('**', '')
        // remove em delimiter markdown
        .replaceAll('_', '')
        // remove quote markdown
        .replaceAll('>', '')
        // convert list marker to bullet character
        .replaceAll('*', '•');
  }

  String addReadMore(SocialMediaApp app) {
    String insertReadMore(int threshold) {
      final urls = getUrls();
      if (urls.isEmpty) return this;

      final urlsText = urls.join('\n');
      final contentWithoutUrl = removeUrls();

      if (contentWithoutUrl.length + urlsText.length <= threshold) return this;

      const readMore = '... Read more:\n';
      final remainingSpace = threshold - readMore.length - urlsText.length;

      if (remainingSpace <= 0) return this;

      final truncatedContent = contentWithoutUrl.substring(0, remainingSpace);

      return '$truncatedContent$readMore$urlsText';
    }

    switch (app) {
      case SocialMediaApp.whatsapp:
        return insertReadMore(700);
      case SocialMediaApp.instagram:
        return insertReadMore(2200);
      case SocialMediaApp.linkedin:
        return insertReadMore(1300);
      case SocialMediaApp.facebook:
        return insertReadMore(1300);
      case SocialMediaApp.twitter:
        return insertReadMore(250);
      case SocialMediaApp.telegram:
        return insertReadMore(4096);
      default:
        return this;
    }
  }

  List<String> getUrls() {
    final urlPattern = RegExp(
      r"((https?:\/\/)|(www\.))[\w\d\-._~:/?#\[\]@!$&\'()*+,;=\%]+",
      caseSensitive: false,
    );

    return urlPattern.allMatches(this).map((match) => match.group(0)!).toList();
  }

  String removeUrls() {
    final urlPattern = RegExp(
      r"((https?:\/\/)|(www\.))[\w\d\-._~:/?#\[\]@!$&\'()*+,;=\%]+",
      caseSensitive: false,
    );

    return replaceAll(urlPattern, '').replaceAll(RegExp(r'\s+'), ' ').trim();
  }
}
