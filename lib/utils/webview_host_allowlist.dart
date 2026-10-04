import '../data/internet_packages_data.dart';
import 'wifi_panel_url_resolver.dart';

/// Hostهای مجاز WebView برای پنل ISP و CPE — مطابق سیاست فروشگاه‌ها.
class WebViewHostAllowlist {
  WebViewHostAllowlist._();

  static final Set<String> _hosts = {
    for (final province in PackageProvince.values)
      Uri.parse(province.servicePanelUrl).host.toLowerCase(),
    Uri.parse(WifiPanelUrlResolver.cpeWifiPanelUrl).host.toLowerCase(),
  };

  static Set<String> get allowedHosts => Set.unmodifiable(_hosts);

  /// آیا این URL برای بارگذاری/ناوبری داخل WebView مجاز است؟
  static bool isAllowedUrl(String? rawUrl) {
    if (rawUrl == null) return false;
    final trimmed = rawUrl.trim();
    if (trimmed.isEmpty) return false;

    final lower = trimmed.toLowerCase();
    if (lower == 'about:blank') return true;

    final uri = Uri.tryParse(trimmed);
    if (uri == null) return false;
    if (uri.scheme != 'http' && uri.scheme != 'https') return false;

    final host = uri.host.toLowerCase();
    if (host.isEmpty) return false;
    return _hosts.contains(host);
  }

  static bool isAllowedUri(Uri uri) {
    if (uri.scheme != 'http' && uri.scheme != 'https') return false;
    final host = uri.host.toLowerCase();
    return host.isNotEmpty && _hosts.contains(host);
  }
}
