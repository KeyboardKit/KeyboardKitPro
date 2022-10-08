# Release Notes

KeyboardKit tries to honor semantic versioning:

* Only remove deprecated code in `major` versions.
* Only deprecate code in `minor` and `patch` versions.
* Avoid breaking changes in `minor` and `patch` versions.
* Code can be marked as deprecated at any time.

Breaking changes can still occur in minor versions and patches, though, if the alternative is to not be able to release new critical features or fixes.


## 6.4.3

This version adds a build for Xcode 13, Swift 5.6 and Bitcode. Just use the `6.4.3_bitcode` tag.

### 👑 KeyboardKit Pro

* The `UITextDocumentProxy` full text content extensions are now configurable.

### ✨ New features

* `ActionCalloutStyle.standardFont` can now be set to change the global callout font.
* `KeyboardButtonShadowStyle.standard` can now be set to change the global style.
* `KeyboardColorReader` standard values can now be set to change the global style.  



## 6.4.2

This release rolls back the localized name adjustment in the last version, since the only locale that used this approach - Kurdish Sorani Arabic - had a language folder named `ckb_AR` which wasn't recognized by Apple. 

This caused uploads to App Store generate warnings. Rolling back this change will make uploads work again, without warnings.

If you want to customize the display name for a keyboard locale, you have to do so manually in your app.

### 💡 Behavior changes

* `KeyboardLocale` now only resolves `localizedName` from its ID, as it did before 6.4.1.
* The new `KKL10n` `localizedName` property has been rolled back.



## 6.4.1

This release adds a new localized strings and new document proxy extensions.

### 👑 KeyboardKit Pro

* `UITextDocumentProxy` has a new `fullDocumentContext()` extension that gets all the text from the proxy, not just the closest one.
* `UITextDocumentProxy` has a new `fullDocumentContextBeforeInput()` extension that gets all the text before the input cursor.
* `UITextDocumentProxy` has a new `fullDocumentContextAfterInput()` extension that gets all the text after the input cursor.

### ✨ New features

* `KeyboardLocale` now supports defining a localized string to override its localized name.

### 💡 Behavior changes

* `KeyboardLocale` now uses `localizedName` from its localized strings, if any.
* `KeyboardLocale.kurdish_sorani_arabic` has a new localized name and adjusted keyboard layouts.



## 6.4

This release bumps the package Swift version to 5.6.

The release also makes more types, extensions, mocks and unit tests available for macOS, tvOS and watchOS, and binds a bunch of extensions to protocols, which make them show up in DocC and makes it possible to use them on more types.

There are also new layout utilities that make adjusting keyboard locales a lot easier, and a bunch of struct properties have been converted from `let` to `var` as well, to make them mutable.

The demos have been adjusted as well. There's also a brand new demo keyboard that shows how to customize the layout. 

### 👑 KeyboardKit Pro changes

* `KurdishSoraniPcInputSetProvider` is a new input set provider for Kurdish Sorani PC.
* `KurdishSoraniPcCalloutActionProvider` is a new callout action provider for Kurdish Sorani PC.
* `AlphabeticInputSet` has new `kurdishSoraniPc` input set builder.

### 🌐 New locales

* 🇹🇯 Kurdish Sorani PC

### ✨ New features

* `CaseAdjustable` is a new protocol that can be implemented by types that should be able to adjust themselves to a casing.
* `EmojiKeyboardStyle` now lets you provide a device type in the standard style builder.
* `HapticFeedback` now uses `HapticFeedbackPlayer` for its `player`. 
* `InputCallout` now lets you provide a device type in the initializer.
* `InputSet` properties are now mutable.
* `InputSetItem` properties are now mutable.
* `KeyboardColorReader` is a new protocol that is implemented by `Color` and lets its implementations access keyboard colors.
* `KeyboardContext` has a new `keyboardType` property.
* `KeyboardContext` no longer requires a controller in the initializer, although it's good to provide one.
* `KeyboardFeedbackHandler` is now available on all platforms.
* `KeyboardImageReader` is a new protocol that is implemented by `Image` and lets its implementations access keyboard images.
* `KeyboardLayout` has new ideal height and inset properties, which can be used to create new item types easier.
* `KeyboardLayoutConfiguration` properties are now mutable.
* `KeyboardLayoutConfiguration` has a new standard layout for device type.
* `KeyboardLayoutItem` properties are now mutable.
* `KeyboardLayoutItemSize` properties are now mutable.
* `KeyboardRowItem` has a bunch of new collection extensions.
* `StandardAutocompleteSuggestion` properties are now mutable.
* `StandardKeyboardFeedbackHandler` is now available on all platforms.
* `SystemAudio` now uses `SystemAudioPlayer` for its `player`.

### 💡 Behavior changes

* `Color` extensions have been moved to `KeyboardColorReader`.
* `KeyboardContext` `activeAppBundleId` has been converted to a calculated property.
* `StandardKeyboardLayoutProvider` now fallbacks to iPhone layout instead of an empty layout.
* `StandardKeyboardLayoutProviderTests` now runs on all platforms.
* `String` casing extensions have been moved to `CaseAdjustable`.

### 🐛 Bug fixes

* A memory leak has been fixed.

### 🗑 Deprecations

* The `Color.DarkAppearanceStrategy` is no longer used and has been deprecated.
* The `KeyboardContext` `device` initializer and property has been deprecated.
* The `KeyboardContext` `activeAppBundleId` no longer works in iOS 16 and has been deprecated.
* The `KeyboardLayoutConfiguration` standard configuration for idiom has been deprecated.
* The `KeyboardInputViewController` `activeAppBundleId` no longer works in iOS 16 and has been deprecated.
* The `MockCollectionViewLayout` is no longer used and has been deprecated.
* Two `Sequence` extensions for mapping casing are no longer used and have been deprecated.
* The `StandardKeyboardLayoutProvider` `fallbackProvider` has been deprecated.
* The `StandardKeyboardLayoutProvider` `layoutProvider(for:)` has been renamed to `keyboardLayoutProvider(for:)`.



## 6.3.1

This release just adds new licenses to KeyboardKit Pro. It has no functional changes.



## 6.3

This release adds two new locales and a bunch of input set changes.

### 👑 KeyboardKit Pro changes

* `AlphabeticInputSet` has new `qwertz` and `azerty` input set builders.
* `AlphabeticInputSet`, `NumericInputSet` and `SymbolicInputSet` has input set builders for all keyboard locales.
* `InputSetProvider`s that support `QWERTY`, `QWERTZ` and `AZERTY` now lets you inject a custom alphabetic input set.
* `KurdishSoraniArabicInputSetProvider` has been tweaked to render a more correct layout.
* `StandardInputSetProvider` now handles lexicon-based completions differently and ignores single-char suggestions.

### ✨ New features

* `KeyboardContext` has new `hasKeyboardLocale` and `hasKeyboardLocale` functions.
* `AlphabeticInputSet` has a new `qwerty` input set builder.
* `NumericInputSet` has a new `standard` input set builder.
* `SymbolicInputSet` has a new `standard` input set builder.

### 🌐 New locales

* 🇺🇸 Hawaiian
* 🇰🇪 Swahili

### 🗑 Deprecations

* A bunch of `SystemKeyboardLayoutProvider` layout util functions have been deprecated.



## 6.2

This release adds a bunch of new emojis that have been added since emojis were last updated.

It also adds input set variants, such as `.englishQwerty`, `.englishAzerty`, `.englishQwertz` etc. and introduces AlphabeticInputSet, NumericInputSet and SymbolicInputSet builders for all locales. 

The KeyboardKit Pro standard autocomplete provider has been improved even further, and now handles casing closer to the stock keyboards. It has also been gifted with some prediction capabilites.

### 👑 Pro updates

* `AlphabeticInputSet`, `NumericInputSet` and `SymbolicInputSet` has new set builders for all locales.
* `EnglishGbInputSetProvider` now supports specifying an alphabetic input set.
* `EnglishUsInputSetProvider` now supports specifying an alphabetic input set.
* `StandardAutocompleteProvider` has improved case handling.
* `StandardAutocompleteProvider` is now able to give locale-specifi predictions.
* `StandardAutocompleteProvider` has a new, open `autocompleteCompletions(for:)` function.
* `StandardAutocompleteProvider` has a new, open `autocompleteGuesses(for:)` function.
* `StandardAutocompleteProvider` has a new, open `autocompleteNextWordPredictions(for:)` function.
* `StandardAutocompleteProvider` has a new, open `autocompleteLexiconMatch(for:)` function.
* `StandardAutocompleteProvider` has deprecated the recently introduced casing initializers, since casing is no longer being done.

### ✨ New features

* `EmojiCategory` has a bunch of new emojis.
* `EnglishInputSetProvider` now supports specifying an alphabetic input set.
* `InputSetRow` has new convenience initializers.
* `KeyboardContext` has a new KeyboardLocale-based `setLocale()`.

* `AlphabeticInputSet`, `NumericInputSet` and `SymbolicInputSet` has new set builders for `.english`.
* `AlphabeticInputSet` also has new `.englishQwerty`, `.englishAzerty`, `.englishQwertz` input sets.

### 🗑 Deprecations

* `DeviceSpecificInputSetProvider` has been deprecated.
* The `EnglishInputSetProvider` currency properties have been deprecated. 
* The `InputSetProvider` row extensions have been deprecated.
* The `InputSetRow` initializer extensions have been deprecated.



## 6.1

### 👑 Pro updates

* `ArabicCalloutActionProvider` can now be initialized with a custom locale.
* `ArabicInputSetProvider` can now be initialized with a custom locale.
* `Bundle+KeyboardKitPro` adds a new `.keyboardKitPro` bundle.
* `KurdishSoraniArabicCalloutActionProvider` is a new provider for Kurdish Sorani (Arabic).
* `KurdishSoraniArabicInputSetProvider` is a new provider for Kurdish Sorani (Arabic).
* `UIInputViewController` has a new, static `setupProColors`, which must be run for colors to be .

### ✨ New features

* `AutocompleteContext` has a new `lastError` property.
* `AutocompleteProvider` has a new `caseAdjust(suggestion:for:)` extension to help handle casing.
* `Bundle+KeyboardKit` adds a new `.keyboardKit` bundle.
* `StandardAutocompleteProvider` has a new `caseAdjustExactMatch` init argument to let you choose whether or not to apply the case adjustment to exact matches.
* `String+Casing` adds an `isCapitalized` property to String.

### 🌐 New locales

* 🇹🇯 Kurdish Sorani (Arabic)

### 💡 Behavior changes

* `KeyboardColor` no longer needs or is affected by enabling preview mode.
* `KKL10n` no longer needs or is affected by enabling preview mode.
* `StandardAutocompleteProvider` in KeyboardKit Pro uses the new case adjustments to provide better completions.
* `KeyboardInputViewController` will now update the autocomplete context on the main queue.
* `KeyboardInputViewController` will now write any autocomplete errors to the context's `lastError` property.

### 🗑 Deprecations

* `KeyboardPreviewMode` is not longer needed and enabling it has no effect from now on. 



## 6.0.3

This version adds more primary button types.

### ✨ New features

* `KeyboardAction.PrimaryType` has new `join` and `custom` cases.
* `KeyboardAction.PrimaryType` now maps unrepresented `UIReturnKeyType` types to the new `custom` type.
* `UIReturnKeyType` has new extensions for getting the `keyboardAction` and `primaryButtonType`.

### 💡 Behavior changes

* `KeyboardGestures` shortens the time it takes for the secondary action callout to be presented.



## 6.0.2

This version fixes bugs in the Kurdish Sorani keyboard.

### 🐛 Bug fixes

* Tapping `"ھ"` triggered multiple inserts.



## 6.0.1

This version fixes bugs in the Kurdish Sorani keyboard.

### 💡 Behavior changes

* The Kurdish Sorani keyboard now uses the dollar currency by default.

### 🐛 Bug fixes

* Tapping `"ھ"` now inserts `"ه"` for Kurdish Sorani.



## 6.0

This version makes the library standalone, instead of being a KeyboardKit plugin.

This version also makes the library build on more platforms and removes old, deprecated code.

### 📺 Platform support

* KeyboardKit Pro now supports iOS, iPadOS, macOS, tvOS and watchOS.
* KeyboardKit Pro licenses can be upgraded to support more platforms.

### 💡 Behavior changes

* KeyboardKit Pro is now standalone. You don't have to import both libraries to use Pro.

### 🐛 Bug fixes

* Since KeyboardKit Pro is standalone, the previous duplicate symbol warnings have been fixed. 



## 5.9

This version adds new locales and makes the library build on more platforms.

### 📺 Platform support

* This version makes the library build on tvOS and watchOS.

### 🌐 New locales

* 🇧🇬 Bulgarian
* 🇦🇩 Catalan
* 🇫🇴 Faroese
* 🇵🇭 Filipino
* 🇬🇪 Georgian
* 🇲🇰 Macedonian
* 🇲🇹 Maltese
* 🇲🇳 Mongolian
* 🇷🇸 Serbian
* 🇷🇸 Serbian (Latin)
* 🇸🇰 Slovak

### 🐛 Bug fixes

* The Belarusian iPad input set has been corrected.
* The Czech iPad input set has been corrected.
* The Dutch (Belgium) iPad input set has been corrected.
* The French iPad input set has been corrected.
* The German iPad input set has been corrected.
* The Greek iPad input set has been corrected.

### 🗑 Deprecations

* All input set providers have the `UIDevice`-based initializer replaced by a device-agnostic one.



## 5.8.1

This version makes the XCFramework support Bitcode once more.



## 5.8

This version adds new locales and renames a bunch of types, properties and parameters to make things nicer in preparation for 6.0.

### 🌐 New locales

* 🇭🇷 Croatian
* 🇧🇪 Dutch (Belgium)
* 🇧🇪 French (Belgium)
* 🇨🇭 French (Switzerland)
* 🇦🇹 German (Austria)
* 🇨🇭 German (Switzerland)
* 🇭🇺 Hungarian
* 🇸🇮 Slovenian

### 💡 Behavior changes

* Several iPad layouts has adjusted the lower-right keys for numeric keyboards, to have `,` and `.` on the alphabetic keyboard and `!` and `?` on the numeric and symbolic. This is because these symbols currently don't adjust for uppercase and there is no swipe down support.  

### 🗑 Deprecations

* `BrazilianCalloutActionProvider` has been renamed to `PortugueseBrazilCalloutActionProvider`
* `BrazilianInputSetProvider` has been renamed to `PortugueseBrazilInputSetProvider`
* `KeyboardLocale+secondaryCalloutActionProvider` has been renamed to `calloutActionProvider`.
* `*KeyboardInputSetProvider` implementations have been renamed to `*InputSetProvider`.
* `*SecondaryCalloutActionProvider` implementations have been renamed to `*CalloutActionProvider`.



## 5.7

This version adds support for new locales.

### 🌐 New locales

* 🇧🇾 Belarusian
* 🇨🇿 Czech
* 🇷🇴 Romanian



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
