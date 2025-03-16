import 'package:bookly_app/core/utils/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    try {
      if (!await launchUrl(uri)) {
        showSnackBar(context, "Can't open the preview");
      }
    } catch (e) {
      showSnackBar(context, "Can't open the preview");
    }
  }
}
