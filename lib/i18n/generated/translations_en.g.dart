///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
    : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
      $meta = TranslationMetadata(
        locale: AppLocale.en,
        overrides: overrides ?? {},
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get app_title => 'MashMaster';
  late final TranslationsLanguageEn language = TranslationsLanguageEn.internal(_root);
  late final TranslationsNavbarEn navbar = TranslationsNavbarEn.internal(_root);
  late final TranslationsGenericEn generic = TranslationsGenericEn.internal(_root);
  late final TranslationsHomeScreenCardsEn home_screen_cards = TranslationsHomeScreenCardsEn.internal(_root);
  late final TranslationsContactScreenEn contact_screen = TranslationsContactScreenEn.internal(_root);
  late final TranslationsSettingsScreenEn settings_screen = TranslationsSettingsScreenEn.internal(_root);
}

// Path: language
class TranslationsLanguageEn {
  TranslationsLanguageEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Language';
  String get en => 'English';
  String get de => 'German';
}

// Path: navbar
class TranslationsNavbarEn {
  TranslationsNavbarEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get home => 'Home';
  String get contact => 'Contact';
}

// Path: generic
class TranslationsGenericEn {
  TranslationsGenericEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get placeholder_label => 'This feature has not been finalized yet.\nPlease come back later!';
  String get cta_label => 'I want this feature sooner!';
}

// Path: home_screen_cards
class TranslationsHomeScreenCardsEn {
  TranslationsHomeScreenCardsEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsHomeScreenCardsDosageCalcEn dosage_calc = TranslationsHomeScreenCardsDosageCalcEn.internal(_root);
  late final TranslationsHomeScreenCardsGeneralCalcEn general_calc = TranslationsHomeScreenCardsGeneralCalcEn.internal(_root);
  late final TranslationsHomeScreenCardsBrewCalcEn brew_calc = TranslationsHomeScreenCardsBrewCalcEn.internal(_root);
  late final TranslationsHomeScreenCardsUnitCalcEn unit_calc = TranslationsHomeScreenCardsUnitCalcEn.internal(_root);
  late final TranslationsHomeScreenCardsMashCalcEn mash_calc = TranslationsHomeScreenCardsMashCalcEn.internal(_root);
}

// Path: contact_screen
class TranslationsContactScreenEn {
  TranslationsContactScreenEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label_one => 'For Feedback, Suggestions and other Comments';
  late final TranslationsContactScreenDevCardEn dev_card = TranslationsContactScreenDevCardEn.internal(_root);
  late final TranslationsContactScreenBugReportEn bug_report = TranslationsContactScreenBugReportEn.internal(_root);
  String get version_label => 'Made with ♡ in Vallendar.';
}

// Path: settings_screen
class TranslationsSettingsScreenEn {
  TranslationsSettingsScreenEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'App Settings';
  String get placeholder_label => 'There are currently very few settings for this app, since it is still in Beta.\n\nPlease come back later!';
}

// Path: home_screen_cards.dosage_calc
class TranslationsHomeScreenCardsDosageCalcEn with HomeScreenCard {
  TranslationsHomeScreenCardsDosageCalcEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cleaning Agent Dosage';
  @override
  String get subtitle => 'e.g., PBW, StarSan, SaniClean, ChemiPro Oxi';
}

// Path: home_screen_cards.general_calc
class TranslationsHomeScreenCardsGeneralCalcEn with HomeScreenCard {
  TranslationsHomeScreenCardsGeneralCalcEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'General Calculations';
  @override
  String get subtitle => 'ABV (%vol), Calories, Refractometer, Boil-Off Rate, Hydrometer Correction, Carbonation';
}

// Path: home_screen_cards.brew_calc
class TranslationsHomeScreenCardsBrewCalcEn with HomeScreenCard {
  TranslationsHomeScreenCardsBrewCalcEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Brewing Conversions';
  @override
  String get subtitle => 'Extract Levels, Beer Color';
}

// Path: home_screen_cards.unit_calc
class TranslationsHomeScreenCardsUnitCalcEn with HomeScreenCard {
  TranslationsHomeScreenCardsUnitCalcEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Unit Conversions';
  @override
  String get subtitle => 'Volume, Weight, Temperature';
}

// Path: home_screen_cards.mash_calc
class TranslationsHomeScreenCardsMashCalcEn with HomeScreenCard {
  TranslationsHomeScreenCardsMashCalcEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mash Calculations';
  @override
  String get subtitle => 'Mash-In & Mash Step Temperatures, Mash Tun Calibration';
}

// Path: contact_screen.dev_card
class TranslationsContactScreenDevCardEn {
  TranslationsContactScreenDevCardEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get name => '@NightmindOfficial';
  String get title => 'App Developer';
}

// Path: contact_screen.bug_report
class TranslationsContactScreenBugReportEn {
  TranslationsContactScreenBugReportEn.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Want to report a bug?';
  String get button_label => 'Submit Bug Report';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'app_title':
        return 'MashMaster';
      case 'language.label':
        return 'Language';
      case 'language.en':
        return 'English';
      case 'language.de':
        return 'German';
      case 'navbar.home':
        return 'Home';
      case 'navbar.contact':
        return 'Contact';
      case 'generic.placeholder_label':
        return 'This feature has not been finalized yet.\nPlease come back later!';
      case 'generic.cta_label':
        return 'I want this feature sooner!';
      case 'home_screen_cards.dosage_calc.title':
        return 'Cleaning Agent Dosage';
      case 'home_screen_cards.dosage_calc.subtitle':
        return 'e.g., PBW, StarSan, SaniClean, ChemiPro Oxi';
      case 'home_screen_cards.general_calc.title':
        return 'General Calculations';
      case 'home_screen_cards.general_calc.subtitle':
        return 'ABV (%vol), Calories, Refractometer, Boil-Off Rate, Hydrometer Correction, Carbonation';
      case 'home_screen_cards.brew_calc.title':
        return 'Brewing Conversions';
      case 'home_screen_cards.brew_calc.subtitle':
        return 'Extract Levels, Beer Color';
      case 'home_screen_cards.unit_calc.title':
        return 'Unit Conversions';
      case 'home_screen_cards.unit_calc.subtitle':
        return 'Volume, Weight, Temperature';
      case 'home_screen_cards.mash_calc.title':
        return 'Mash Calculations';
      case 'home_screen_cards.mash_calc.subtitle':
        return 'Mash-In & Mash Step Temperatures, Mash Tun Calibration';
      case 'contact_screen.label_one':
        return 'For Feedback, Suggestions and other Comments';
      case 'contact_screen.dev_card.name':
        return '@NightmindOfficial';
      case 'contact_screen.dev_card.title':
        return 'App Developer';
      case 'contact_screen.bug_report.label':
        return 'Want to report a bug?';
      case 'contact_screen.bug_report.button_label':
        return 'Submit Bug Report';
      case 'contact_screen.version_label':
        return 'Made with ♡ in Vallendar.';
      case 'settings_screen.title':
        return 'App Settings';
      case 'settings_screen.placeholder_label':
        return 'There are currently very few settings for this app, since it is still in Beta.\n\nPlease come back later!';
      default:
        return null;
    }
  }
}
