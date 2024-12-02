# Release notes

KeyboardKit tries to honor semantic versioning:

* Deprecations can happen at any time.
* Deprecations should only be removed in `major` updates.
* Breaking changes should not occur in `minor` and `patch` updates.
* Breaking changes *can* occur in `minor` and `patch` updates, if needed.

These release notes cover the current major version. Check out version tags for older release notes.  


## 💡 KeyboardKit 9 Migration Guide

When migrating from KeyboardKit 8 to 9, first upgrade to the last 8 version and fix all deprecation warnings. This helps you prepare for KeyboardKit 9. 

When you have fixed all migration warnings, upgrade to KeyboardKit 9.0 and fix any migration deprecations to conform to its many architectural changes.

Once you've fixed all warnings, you can start using KeyboardKit 9. You can now setup SPM to use the latest major version number, i.e. the latest 9.x version. 

The legacy migrations will be removed in 9.1, so make sure to first upgrade to 9.0 when migrating from KeyboardKit 8, before you upgrade to any later versions.


## KeyboardKit 9.0

This version targets `iOS 15`, `macOS 12`, `tvOS 15`, `watchOS 8`, and `visionOS 1`, removes all deprecated code, and simplifies many concepts.

This version has migration deprecations to help you transition from KeyboardKit 8. Just follow the instructions to migrate your code if needed.

You may still run into breaking changes, where using migrations were not possible. For such breaking changes, see the changes & comments below.

This version moves many non-essential views & utils from KeyboardKit to KeyboardKit Pro, to make the open-source SDK more basic and overviewable.

### 👑 Pro

KeyboardKit Pro can now be used by multiple targets in the same app, using a single app bundle ID.

KeyboardKit Pro can now activate yearly Gold & Enterprise licenses with a standalone license file. 

### 🧪 Experiments

The next keyboard button experiments have been made permanent.

### ⌨️ Essentials

The `KeyboardContext` has a new `isKeyboardCollapsed` as well as a new `isAutoCollapsedEnabled` setting.

The `KeyboardContext` has a new `keyboardCase` that lets us decouple the keyboard type from the keyboard case. 

The `KeyboardContext` has a new `keyboardTypeForKeyboard` that updates to phone when the keyboard is floating on iPad.

The `KeyboardType.alphabetic` keyboard type is also decoupled from the case, which makes the type a lot easier to use.

The `KeyboardController` protocol now has `services` and `state` properties, so that it can be used in even more places.

The `KeyboardView` now supports being used as a floating keyboard on iPad devices, which will render it as a phone keyboard.

The `KeyboardView` now has a `collapsedView` that will be displayed when the keyboard context `isKeyboardCollapsed` is true.

`Keyboard.CollapsedView` is a new standard view that can be displayed when the keyboard context `isKeyboardCollapsed` is true.

### ⚙️ Services

The service name changes and refactoring was a great adjustment, but went a little too far.

Some feedback has been that it's hard to tell services apart since many have the same name.

As such, we take a step back and add the service type to the name. The shorthands stay the same.

The new name for e.g. `KeyboardLayout.StandardService` is now `KeyboardLayout.StandardLayoutService`.

This will hopefully make it easier to distinguish between services when searching and debugging the SDK.  

### 💥 Actions

The `KeyboardAction.StandardActionHandler` now implements `KeyboardBehavior`.

### 📱 App

The `KeyboardApp` now lets you register a custom next word prediction request.

The `KeyboardApp.SettingsScreen` now lets you customize each section with custom content.

### 💡 Autocomplete

The `AutocompleteService` now returns a `Autocomplete.ServiceResult` instead of just a list of suggestions.

The `Autocomplete.NextWordPredictionRequest` is a new type with `Claude` and `OpenAI` integration requests.

The `Autocomplete.Suggestion` type now implements `Codable` and `Equatable`. This required additional info changes.

The `Autocomplete.Toolbar` now uses views builder params. The standard views are also polished to look more native.

The `KeyboardInputController` now disables autocorrect instead of autocomplete if a keyboard type doesn't prefer autocomplete.

The reason for the autocomplete change is that custom keyboards must always have top padding, so hiding autocomplete makes little sense.

### 🗯️ Callouts

The `Callouts` namespace has been renamed to `KeyboardCallout` and simplified to only use a single style and a single context.

Most changes have migration deprecations, where using the old ways will either map to the new way, or in some cases do nothing.  

The `KeyboardStyleService` has been adjusted to return an optional callout style, to only override the environment style if it's defined.

The `KeyboardTheme` has been adjusted to only provide a single `calloutStyle`, instead of providing individual action & input callout styles.

The `.calloutStyle` view modifier can therefore be applied to `KeyboardView` now, which will either use the service style or the environment one.

### 🎤 Dictation

The `Dictation` namespace has been simplified to only use a single service that can handle all dictation scenarios.

The new `DictationService` doesn't need a configuration. It uses a `KeyboardContext` & `KeyboardApp` to determine its behavior.

### 😀 Emojis

Emoji localization has been drastically improved, and now supports Swedish localizations. 

The `EmojiKeyboardStyle` has been moved to KeyboardKit. The `.emojiKeyboardStyle` modifier takes a style builder instead of a style, to allow root level styling.

The standard emoji styles no longer take an input toolbar display mode. You can instead use the new `.augmented(for:)` style function if you need to adjust the style.

The KeyboardKit Pro `EmojiKeyboard` has been rebuilt from scratch, and now behaves more like a native keyboard, by scrolling through all categories and supporting search.

### 🧩 Extensions

The `String` `.lastSentence` property now includes the last sentence even if it's not ended.

### ⌨️ External Keyboard

The `ExternalKeyboardContext` has been moved to the open-source library and added to `Keyboard.State`.

### 🔉 Feedback

The `Feedback` namespace has been renamed to `KeyboardFeedback`, and simplified quite a bit.

The haptic feedback has been adjusted to be lighter when typing, to make the typing not feel as heavy.

The `FeedbackContext` no longer has enabled configs, since its `settings` is now used to toggle feedback.

### 🏠 Host

The `Host` informaton has been moved to KeyboardKit Pro.

The `KeyboardHostApplication` struct has more information and even more pre-defined apps.

The `KeyboardAction` has a new `.openHost` action that can be used to open a certain app. 

### 🇸🇪 Localization

The `KeyboardLocale` enum has been replaced with using the native `Locale` everywhere.

This version adds 🇦🇺 English (Australia) and 🇨🇦 English (Canada), bringing the number locales up to `70`.

### 🔣 Layout

`InputSet` can now be created with device variations, which allows for resolving device-specific items at runtime.

This makes it possible to render the same input for different devices, which makes the floating keyboard possible.

`KeyboardLayout` is now a `struct` instead of a `class`, which better reflects the value type nature of its model.

This requires you to change any layout variables to use `var` instead of `let` when you want to mutate the layout.

The `KeyboardLayoutIdentifiable` protocol has been removed to make layout item mutations easier to understand & use.

KeyboardKit Pro adds layout item mutations to the `KeyboardLayout` itself, which will allow for future improvements. 

### 🎛️ Settings

Persistent settings have moved from the various contexts to nested `settings` types, to separate properties from settings.

### 🩺 Status

The `KeyboardStatusInspector` has been made internal to avoid using it in incorrect ways.

Use the `KeyboardStatusContext` instead, which manages status information in a better way. 

### 📝 Text Input

The `KeyboardContext` is now responsible for the `textInputProxy`. The controller refers to this proxy, but the context owns it.

The KeyboardKit Pro input text components can therefore be setup with a `KeyboardContext`, and no longer need a controller instance.

### 🍭 Themes

The `KeyboardStyle.ThemeBasedStyleService` can now be created with a theme context, which makes it auto-update when the theme is changed.

### 🚨 Breaking Changes

There are breaking changes in this version, but most are handled by migration deprecations that will be removed in 9.1.

Make sure that you address any migration deprecation warnings you receive, to avoid breaking changes in KeyboardKit 9.1.

Some things that are not covered by migration deprecations are:

* All previously deprecated code has been removed.
* All previously mutable styles and configs are now computed.
* The dictation changes can't be migrated since the services are merged.
* `Autocomplete.Suggestion` implements protocols that required info constraints.
* `Autocomplete.LocalAutocompleteService` now requires a keyboard context for contextual info.
* `InputSet` no longer implements the removed `KeyboardLayoutIdentifiable` protocol.
* `KeyboardLayout` is now a struct, and must now be a `var` for you to customize it.
* `KeyboardStyleService` and callout style view modifiers now only use the base style.
* `StandardSpeechRecognizer` has been refactored, and must be updated for you to use it.

A problem you may face, is that `KeyboardInputViewController.setupKeyboardView(_ view: @autoclosure @escaping () -> Content)` has been renamed to `setupKeyboardView(with:)` to remove DocC ambiguity. If you do, just add `with:`.
