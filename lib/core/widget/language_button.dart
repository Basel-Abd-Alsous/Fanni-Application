// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../extension/gap.dart';
// import '../providers/language_provider/l10n_provider.dart';
// import '../unit/app_text_style.dart';

// class LanguageButton extends StatelessWidget {
//   const LanguageButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = context.watch<LanguageProvider>();
//     final currentLang = provider.lang == 'ar' ? 'العربية' : 'English';

//     return IconButton(
//       onPressed: () => provider.changeLanguage(context),
//       icon: Row(children: [Text(currentLang, style: AppTextStyle.style10B), 10.gap, const Icon(Icons.language)]),
//     );
//   }
// }
