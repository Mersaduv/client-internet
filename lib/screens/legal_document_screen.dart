import 'package:flutter/material.dart';

import '../data/legal_documents.dart';
import '../utils/app_localizations.dart';
import '../utils/app_theme.dart';

enum LegalDocumentType { privacyPolicy, termsOfUse }

/// نمایش سیاست حریم خصوصی یا شرایط استفاده داخل اپ (الزام فروشگاه‌ها).
class LegalDocumentScreen extends StatelessWidget {
  const LegalDocumentScreen({super.key, required this.type});

  final LegalDocumentType type;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final isEnglish = Localizations.localeOf(context).languageCode == 'en';
    final title = type == LegalDocumentType.privacyPolicy
        ? (l10n?.privacyPolicy ?? 'Privacy Policy')
        : (l10n?.termsOfUse ?? 'Terms of Use');
    final body = type == LegalDocumentType.privacyPolicy
        ? LegalDocuments.privacyPolicy(english: isEnglish)
        : LegalDocuments.termsOfUse(english: isEnglish);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.appBarFor(theme.brightness),
          ),
          child: AppBar(
            title: Text(
              title,
              style: TextStyle(color: AppTheme.onAppBar(theme.brightness)),
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: AppTheme.onAppBar(theme.brightness),
            elevation: 0,
            surfaceTintColor: Colors.transparent,
          ),
        ),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
          child: Text(
            body,
            style: theme.textTheme.bodyMedium?.copyWith(
              height: 1.55,
              color: theme.colorScheme.onSurface,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
