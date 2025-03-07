///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsDe extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
    : assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
      $meta = TranslationMetadata(
        locale: AppLocale.de,
        overrides: overrides ?? {},
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      ),
      super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  late final TranslationsDe _root = this; // ignore: unused_field

  // Translations
  @override
  String get app_title => 'MashMaster';
  @override
  late final _TranslationsLanguageDe language = _TranslationsLanguageDe._(_root);
  @override
  late final _TranslationsNavbarDe navbar = _TranslationsNavbarDe._(_root);
  @override
  late final _TranslationsRoutesDe routes = _TranslationsRoutesDe._(_root);
  @override
  late final _TranslationsGenericDe generic = _TranslationsGenericDe._(_root);
  @override
  late final _TranslationsHomeScreenCardsDe home_screen_cards = _TranslationsHomeScreenCardsDe._(_root);
  @override
  late final _TranslationsContactScreenDe contact_screen = _TranslationsContactScreenDe._(_root);
  @override
  late final _TranslationsSettingsScreenDe settings_screen = _TranslationsSettingsScreenDe._(_root);
}

// Path: language
class _TranslationsLanguageDe extends TranslationsLanguageEn {
  _TranslationsLanguageDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Sprache';
  @override
  String get en => 'English';
  @override
  String get de => 'Deutsch';
}

// Path: navbar
class _TranslationsNavbarDe extends TranslationsNavbarEn {
  _TranslationsNavbarDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get home => 'Home';
  @override
  String get contact => 'Kontakt';
}

// Path: routes
class _TranslationsRoutesDe extends TranslationsRoutesEn {
  _TranslationsRoutesDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get main => _root.app_title;
  @override
  String get main_dosage => _root.home_screen_cards.dosage_calc.title;
  @override
  String get main_general => _root.home_screen_cards.general_calc.title;
  @override
  String get main_brew => _root.home_screen_cards.brew_calc.title;
  @override
  String get main_unit => _root.home_screen_cards.unit_calc.title;
  @override
  String get main_mash => _root.home_screen_cards.mash_calc.title;
  @override
  String get contact => 'Kontakt';
  @override
  String get settings => 'App-Einstellungen';
}

// Path: generic
class _TranslationsGenericDe extends TranslationsGenericEn {
  _TranslationsGenericDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get placeholder_label => 'Dieses Feature ist noch nicht ganz fertig.\nSchau gerne später noch einmal vorbei!';
  @override
  String get cta_label => 'Ich möchte dieses Feature schneller haben!';
}

// Path: home_screen_cards
class _TranslationsHomeScreenCardsDe extends TranslationsHomeScreenCardsEn {
  _TranslationsHomeScreenCardsDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsHomeScreenCardsDosageCalcDe dosage_calc = _TranslationsHomeScreenCardsDosageCalcDe._(_root);
  @override
  late final _TranslationsHomeScreenCardsGeneralCalcDe general_calc = _TranslationsHomeScreenCardsGeneralCalcDe._(_root);
  @override
  late final _TranslationsHomeScreenCardsBrewCalcDe brew_calc = _TranslationsHomeScreenCardsBrewCalcDe._(_root);
  @override
  late final _TranslationsHomeScreenCardsUnitCalcDe unit_calc = _TranslationsHomeScreenCardsUnitCalcDe._(_root);
  @override
  late final _TranslationsHomeScreenCardsMashCalcDe mash_calc = _TranslationsHomeScreenCardsMashCalcDe._(_root);
}

// Path: contact_screen
class _TranslationsContactScreenDe extends TranslationsContactScreenEn {
  _TranslationsContactScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label_one => 'Für Feedback, Vorschläge und Anregungen';
  @override
  late final _TranslationsContactScreenDevCardDe dev_card = _TranslationsContactScreenDevCardDe._(_root);
  @override
  late final _TranslationsContactScreenBugReportDe bug_report = _TranslationsContactScreenBugReportDe._(_root);
  @override
  String get version_label => 'Mit ♡ in Vallendar programmiert.';
}

// Path: settings_screen
class _TranslationsSettingsScreenDe extends TranslationsSettingsScreenEn {
  _TranslationsSettingsScreenDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get placeholder_label =>
      'Aktuell gibt es nur wenige Einstellungen für die App, da sie noch in der Beta ist.\n\nSchau gerne später wieder vorbei!';
}

// Path: home_screen_cards.dosage_calc
class _TranslationsHomeScreenCardsDosageCalcDe extends TranslationsHomeScreenCardsDosageCalcEn {
  _TranslationsHomeScreenCardsDosageCalcDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Reinigungsmittel-Dosierer';
  @override
  String get subtitle => 'z.B. PBW, StarSan, SaniClean, ChemiPro Oxi';
}

// Path: home_screen_cards.general_calc
class _TranslationsHomeScreenCardsGeneralCalcDe extends TranslationsHomeScreenCardsGeneralCalcEn {
  _TranslationsHomeScreenCardsGeneralCalcDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Allgemeine Berechnungen';
  @override
  String get subtitle => 'Alkoholgehalt, Kalorien, Refraktometrie, Boil-Off, Hydrometer-Korrektur, Karbonisierung';
}

// Path: home_screen_cards.brew_calc
class _TranslationsHomeScreenCardsBrewCalcDe extends TranslationsHomeScreenCardsBrewCalcEn {
  _TranslationsHomeScreenCardsBrewCalcDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Brau-Umrechnungen';
  @override
  String get subtitle => 'Extraktgehalt, Bierfarbe';
}

// Path: home_screen_cards.unit_calc
class _TranslationsHomeScreenCardsUnitCalcDe extends TranslationsHomeScreenCardsUnitCalcEn {
  _TranslationsHomeScreenCardsUnitCalcDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Einheits-Umrechnungen';
  @override
  String get subtitle => 'Volumen, Gewicht, Temperatur';
}

// Path: home_screen_cards.mash_calc
class _TranslationsHomeScreenCardsMashCalcDe extends TranslationsHomeScreenCardsMashCalcEn {
  _TranslationsHomeScreenCardsMashCalcDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Maische-Berechnungen';
  @override
  String get subtitle => 'Einmaisch- und Rasttemperatur, Maischekorbkalibrierung';
}

// Path: contact_screen.dev_card
class _TranslationsContactScreenDevCardDe extends TranslationsContactScreenDevCardEn {
  _TranslationsContactScreenDevCardDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get name => '@NightmindOfficial';
  @override
  String get title => 'App-Entwickler';
}

// Path: contact_screen.bug_report
class _TranslationsContactScreenBugReportDe extends TranslationsContactScreenBugReportEn {
  _TranslationsContactScreenBugReportDe._(TranslationsDe root) : this._root = root, super.internal(root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Du möchtest einen Bug melden?';
  @override
  String get button_label => 'Bug Report abschicken';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'app_title':
        return 'MashMaster';
      case 'language.label':
        return 'Sprache';
      case 'language.en':
        return 'English';
      case 'language.de':
        return 'Deutsch';
      case 'navbar.home':
        return 'Home';
      case 'navbar.contact':
        return 'Kontakt';
      case 'routes.main':
        return _root.app_title;
      case 'routes.main_dosage':
        return _root.home_screen_cards.dosage_calc.title;
      case 'routes.main_general':
        return _root.home_screen_cards.general_calc.title;
      case 'routes.main_brew':
        return _root.home_screen_cards.brew_calc.title;
      case 'routes.main_unit':
        return _root.home_screen_cards.unit_calc.title;
      case 'routes.main_mash':
        return _root.home_screen_cards.mash_calc.title;
      case 'routes.contact':
        return 'Kontakt';
      case 'routes.settings':
        return 'App-Einstellungen';
      case 'generic.placeholder_label':
        return 'Dieses Feature ist noch nicht ganz fertig.\nSchau gerne später noch einmal vorbei!';
      case 'generic.cta_label':
        return 'Ich möchte dieses Feature schneller haben!';
      case 'home_screen_cards.dosage_calc.title':
        return 'Reinigungsmittel-Dosierer';
      case 'home_screen_cards.dosage_calc.subtitle':
        return 'z.B. PBW, StarSan, SaniClean, ChemiPro Oxi';
      case 'home_screen_cards.general_calc.title':
        return 'Allgemeine Berechnungen';
      case 'home_screen_cards.general_calc.subtitle':
        return 'Alkoholgehalt, Kalorien, Refraktometrie, Boil-Off, Hydrometer-Korrektur, Karbonisierung';
      case 'home_screen_cards.brew_calc.title':
        return 'Brau-Umrechnungen';
      case 'home_screen_cards.brew_calc.subtitle':
        return 'Extraktgehalt, Bierfarbe';
      case 'home_screen_cards.unit_calc.title':
        return 'Einheits-Umrechnungen';
      case 'home_screen_cards.unit_calc.subtitle':
        return 'Volumen, Gewicht, Temperatur';
      case 'home_screen_cards.mash_calc.title':
        return 'Maische-Berechnungen';
      case 'home_screen_cards.mash_calc.subtitle':
        return 'Einmaisch- und Rasttemperatur, Maischekorbkalibrierung';
      case 'contact_screen.label_one':
        return 'Für Feedback, Vorschläge und Anregungen';
      case 'contact_screen.dev_card.name':
        return '@NightmindOfficial';
      case 'contact_screen.dev_card.title':
        return 'App-Entwickler';
      case 'contact_screen.bug_report.label':
        return 'Du möchtest einen Bug melden?';
      case 'contact_screen.bug_report.button_label':
        return 'Bug Report abschicken';
      case 'contact_screen.version_label':
        return 'Mit ♡ in Vallendar programmiert.';
      case 'settings_screen.placeholder_label':
        return 'Aktuell gibt es nur wenige Einstellungen für die App, da sie noch in der Beta ist.\n\nSchau gerne später wieder vorbei!';
      default:
        return null;
    }
  }
}
