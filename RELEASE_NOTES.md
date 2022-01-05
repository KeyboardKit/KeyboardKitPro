# Release Notes

These release notes only include functional changes.



## 5.6

This version adds support for new locales.

### 🌐 New locales

* 🇧🇷 Brazilian
* 🇮🇪 Irish
* 🇵🇹 Portuguese
* 🇹🇷 Turkish



## 5.5

Thanks to [@ardavank](https://github.com/ardavank) and [@rawandahmad698](https://github.com/rawandahmad698), this release adds support for Persian (Farsi), Arabic, Kurdish Sorani and RTL keyboards.

### 🌐 New locales

* 🇦🇪 Arabic
* 🇹🇯 Kurdish Sorani
* 🇮🇷 Persian

### 💡 Behavior changes

* `IMPORTANT` After switching to M1 and macOS Mojave, Xcode fails to specify that this framework supports bitcode, which it does. This will generate a build error when you try to build a keyboard extension that has bitcode enabled. For now, disable bitcode for your keyboard extension until this problem has been fixed.    



## 5.4

KeyboardKit Pro has no 5.4 release.



## 5.3.1

### 💡 Behavior changes

* The Icelandic keyboard layout has been adjusted to use the iPhone 8 kr layout instead of the iPhone 13 $ one. 



## 5.3

This release adds new locales and views and improves documentation.

The release also improves the license model and adds more info.

### 🌐 New locales

* 🇦🇱 Albanian
* 🇮🇸 Icelandic
* 🇵🇱 Polish

### ✨ New features

* `AudioFeedbackToggleButton` is a new view that can be used to toggle audio feedback on and off.
* `EnabledLabel` is a new view that can be used to show different views depending on a provided enabled state.
* `HapticFeedbackToggleButton` is a new view that can be used to toggle haptic feedback on and off.
* `KeyboardActiveLabel` is a new view that can be used to present whether or not a keyboard extension is currently being used to edit a text field.
* `KeyboardEnabledLabel` is a new view that can be used to present whether or not a keyboard extension is enabled in System Settings.
* `License` now implements `Codable` and has a public initializer, as well as new `tier` and `additionalInfo` properties.
* `LicenseCustomer` now implements `Codable` and has a public initializer, as well as a new `additionalInfo` property.
* `LicenseTier` is a new type that defines the level of service for your specific license.
* `ToggleToolbar` is a new view that can be used to toggle between two toolbars.

### 🐛 Bug fixes

* The Finnish iPad input set provider has been corrected for numeric and symbolic inputs.

### 🗑 Deprecations

* `KeyboardKitLicense` has been renamed to `License`.
* `KeyboardKitLicense+Customer` has been converted to a typealias for `LicenseCustomer` and has been deprecated.



## 5.2

This version adds support for `russian` and `ukranian`.

### 🌐 New locales

* 🇷🇺 Russian
* 🇺🇦 Ukranian  



## 5.1

This version adds support for `estonian`, `latvian` and `lithuanian`.

### 🌐 New locales

* 🇪🇪 Estonian
* 🇱🇻 Latvian
* 🇱🇹 Lithuanian



## 5.0

### ✨ New features

* `StandardAutocompleteProvider` can now be enrichened with a custom lexicon.  

### 💡 Behavior changes

* License errors no longer cause a crash, but are instead throwing.
* All pro feature initializers are now throwing and no longer cause any hidden license validation errors.

### 🐛 Bug fixes

* The autocomplete provider is now created with the correct locale.

### 💥 Breaking changes

* All previously deprecated functionality has been removed.
* All pro feature initializers are now throwing and must be called using `try`.



## 4.9.3

### 🐛 Bug fixes

* This patch fixes a min text length but in the `ExternalAutocompleteProvider`.



## 4.9.2

This version removes `ExternalAutocompleteProvider`s `AutocompleteProvider` implementation.

Something is causing app extensions to link KeyboardKit and KeyboardKit Pro differently, in a way that makes the protocol implementation not work in app extensions.

Until this is fixed, subclass `ExternalAutocompleteProvider` and just implement `AutocompleteProvider` as well.



## 4.9.1

This version syncs KeyboardKit Pro with new features in the core library.

Make sure to update both dependencies, otherwise KeyboardKit Pro will crash. 



## 4.9

This version adds support for fetching autocomplete suggestions from an external datasource. 

### ✨ New features

* `ExternalAutocompleteProvider` is a new autocomplete provider that can be used to fetch autocomplete suggestions from an external datasource. 

### 🗑 Deprecations

* `StandardAutocompleteSuggestionProvider` has been renamed to `StandardAutocompleteProvider`.



## 4.8

KeyboardKit Pro 4.8 has no functional changes.



## 4.7

This release makes it easier to inspect errors that occur when registering or validating licenses.

### ✨ New features

* `setupPro` and `KeyboardKitLicense.register` are now throwing, which means that you can inspect any errors that occur. 

### 💡 Behavior changes

* License registration and validation are now throwing instead of returning.
* Failing a license registration or validation no longer causes assertion failures, since they are now throwing.
* Failing a license registration or validation no longer displays the error view. This is now handled by `setupPro` instead.

### 💥 Breaking changes

* `setupPro` and `KeyboardKitLicense.register` are now throwing, which means that you must call them with `try` (or `try?` to ignore the result). 



## 4.6

This release makes the binaries work with the main library.



## 4.5

This release adds support for new new locales.

### 🌐 New locales

* 🇫🇷 French
* 🇪🇸 Spanish



## 4.4

This release adds support for new locales.

### 🌐 New locales

* 🇬🇧 English U.K. (GB)
* 🇺🇸 English U.S. (same keyboard as base English but different region)

### 💡 Behavior changes

* All locales now return secondary callout actions for `%`, since `‰` now renders correctly. 



## 4.3.2

This release adds new license registration functions, to make it possibe to register pro licenses when not in a keyboard extension.

### ✨ New features

* `License` has a new, static `current` property.
* `License` has a new, static `register(licenseKey:)` function.



## 4.3

This release makes the binaries work with the main library.



## 4.1

[Milestone](https://github.com/KeyboardKit/KeyboardKit/milestone/30).

### ✨ New features

* `KeyboardLocale` has a new `keyboardInputSetProvider` property.
* `KeyboardLocale` has a new `secondaryCalloutActionProvider` property.
* `KeyboardInputViewController` now auto-registers a `StandardAutocompleteSuggestionProvider` when going pro.
* `StandardAutocompleteSuggestionProvider` is a new autosuggestion provider that can be used to get real suggestions.

### 🌐 New locales

* 🇩🇰 Danish
* 🇳🇱 Dutch
* 🇫🇮 Finnish
* 🇳🇴 Norwegian



## 4.0.1

### 🐛 Bug fixes

* This patch fixes a double quote bug for Swedish, German and Italian providers.



## 4.0

This is the first release of KeyboardKit Pro. 

New versions will sync with the major and minor version of the main library, but the patch number may differ.

### ✨ New features:

* There is a new `KeyboardInputViewController` `.setupPro(with:)` setup function.
* There is a new `StandardKeyboardInputSetProvider.pro(with:)` function.
* There is a new `GermanKeyboardInputSetProvider`
* There is a new `ItalianKeyboardInputSetProvider`
* There is a new `SwedishKeyboardInputSetProvider`
* There is a new `GermanSecondaryCalloutActionProvider`
* There is a new `ItalianSecondaryCalloutActionProvider`
* There is a new `SwedishSecondaryCalloutActionProvider`
