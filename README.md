<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Pro Logo" title="KeyboardKit Pro" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKitPro?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.9-orange.svg" alt="Swift 5.9" />
    <img src="https://img.shields.io/badge/platform-SwiftUI-blue.svg" alt="Swift UI" title="Swift UI" />
    <a href="https://twitter.com/getkeyboardkit"><img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetkeyboardkit" alt="Twitter: @getkeyboardkit" title="Twitter: @getkeyboardkit" /></a>
    <a href="https://techhub.social/@keyboardkit"><img src="https://img.shields.io/mastodon/follow/109340839247880048?domain=https%3A%2F%2Ftechhub.social&style=social" alt="Mastodon: @keyboardkit@techhub.social" title="Mastodon: @keyboardkit@techhub.social" /></a>
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] is a SwiftUI SDK that lets you create fully customizable [keyboard extensions][About] with a few lines of code.

KeyboardKit Pro extends [KeyboardKit][KeyboardKit] with features like autocomplete & autocorrect, AI support, a powerful emoji keyboard, dictation, themes, app templates, and much more.

<p align="center">
    <img src="Resources/Demo.gif" width="450" />
</p>

Keyboard extensions can be used within all other apps on iOS, where text input is supported. It's the only way for your product or brand to directly interact with other apps on iOS. Don't miss out!

 


## Commercial License

KeyboardKit Pro requires a license to be used. You can sign up on the [KeyboardKit website][Website] or the [Gumroad store][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

> [!IMPORTANT]  
> Unlike KeyboardKit, KeyboardKit Pro is a binary target and must only be linked to the app target.



## Getting started

To use KeyboardKit in a keyboard extension, just import `KeyboardKitPro` and let your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives you access to lifecycle functions like `viewWillSetupKeyboardView`, observable state, services, etc.

The easiest way to set up KeyboardKit is to use create a `KeyboardApp` value to define information for your app:

```swift
extension KeyboardApp {

    static var keyboardKitDemo: Self {
        .init(
            name: "KeyboardKit",
            licenseKey: "keyboardkitpro-license-key",
            bundleId: "com.keyboardkit.demo",
            appGroupId: "group.com.keyboardkit.demo",
            deepLinks: .init(app: "kkdemo://")
        )
    }
}
```  

To set up your keyboard, just override `viewDidLoad` and call `setupPro(for:)` with your `KeyboardApp`:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupPro(for: .keyboardKitDemo) { result in
            // Use the result or handle the error if you want
        }
    }
}
```

This will make `KeyboardSettings` sync data between the main app and its keyboard if an ``appGroupId`` is defined, register a KeyboardKit Pro license if a ``licenseKey`` is defined, set up dictation, deep links, etc.

To replace or customize the standard, English `KeyboardView`, just override `viewWillSetupKeyboardView` and call `setupKeyboardView` with the view you want to use:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboardView() {
        super.viewWillSetupKeyboardView()
        setupKeyboardView { [weak self] controller in // <-- Use weak or unknowned self!
            KeyboardView(
                state: controller.state,
                services: controller.services,
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { _ in MyCustomToolbar() }
            )
        }
    }
}
```

To set up the main app with the same configuration as the keyboard extension, just wrap the main content view in a `KeyboardAppView` and provide it with the same app information:

```swift
import SwiftUI
import KeyboardKit

@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
            KeyboardAppView(for: .keyboardKitDemo) {
                ContentView()
            }
        }
    }
}
```

This will make `KeyboardSettings` sync data between the main app and its keyboard if an ``appGroupId`` is defined, register a KeyboardKit Pro license if a ``licenseKey`` is defined, set up dictation, deep links, etc.

For more information, please see the [getting started guide][Getting-Started].




## Localization

KeyboardKit supports [68 keyboard-specific locales][Localization]:

🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿 🇩🇰 <br />
🇳🇱 🇧🇪 🇺🇸 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 <br />
🇨🇦 🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇺🇸 🇮🇱 <br />
🇭🇺 🇮🇸 🏳️ 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯 🇹🇯 🇹🇯 <br />
🇱🇻 🇱🇹 🇲🇰 🇲🇾 🇲🇹 🇲🇳 🏳️ 🇳🇴 🇳🇴 🇮🇷 <br />
🇵🇱 🇵🇹 🇧🇷 🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 <br />
🇦🇷 🇲🇽 🇰🇪 🇸🇪 🇹🇷 🇺🇦 🇺🇿 🏴󠁧󠁢󠁷󠁬󠁳󠁿 <br />

[KeyboardKit][KeyboardKit] only includes built-in support for English, while KeyboardKit Pro unlocks localized keyboards, layouts, callouts and behaviors for all supported locales.



## Open-Source Features

[KeyboardKit][KeyboardKit] comes packed with free, open-source features to help you build amazing custom keyboards: 



## Pro Features

KeyboardKit Pro extends [KeyboardKit][KeyboardKit] with Pro features:

* ⌨️ [Essentials][Essentials] - More essential tools, keyboard previews, etc.
* 🤖 [AI][AI] - Features that are needed for AI.
* 📱 [App][App] - App-specific screens & views.
* 💡 [Autocomplete][Autocomplete] - On-device & remote autocomplete.
* 🗯 [Callouts][Callouts] - Localized callouts for **68 locales**.
* 🎤 [Dictation][Dictation] - Trigger dictation from the keyboard.
* 😀 [Emojis][Emojis] - A powerful emoji keyboard.
* ⌨️ [External][External] - Detect if an external keyboard is connected. 
* 🏠 [Host][Host] - Identify and open specific host applications.
* 🔣 [Layout][Layout] - Localized layouts for **68 locales**.
* 🌐 [Localization][Localization] - Services & views for **68 locales**.
* 👁 [Previews][Previews] - Keyboard & theme previews for in-app use.
* ➡️ [Proxy][Proxy] - Let `UITextDocumentProxy` read the full document.
* 📝 [Text][Text-Input] - Let users type within the keyboard.
* 🍭 [Themes][Themes] - A theme engine with many pre-defined themes.



## Documentation

The [online documentation][Documentation] has more information, getting-started guides, articles, code examples, etc.



## Demo App

The [main repository][KeyboardKit] has a demo app that shows how to set up the main keyboard app, show keyboard status, provide in-app settings, link to system settings, apply custom styles, etc.

The app has two keyboards - a `Keyboard` that uses KeyboardKit and a `KeyboardPro` that uses KeyboardKit Pro. Note that you need to enable Full Access for some features to work, like haptic feedback.

> [!IMPORTANT]
> The demo isn't code signed, and can therefore not sync settings between the app and its keyboards. As such, the `KeyboardPro` keyboard has the same settings screens to provide in-keyboard settings.



## KeyboardKit App

If you want to try KeyboardKit without having to write any code or build the demo app from Xcode, the [KeyboardKit app][KeyboardKit-App] lets you try out many features by just downloading it from the App Store.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* Website: [keyboardkit.com][Website]
* Mastodon: [@keyboardkit@techhub.social][Mastodon]
* Twitter: [@getkeyboardkit][Twitter]
* E-mail: [info@keyboardkit.com][Email]



## Commercial License

KeyboardKit Pro requires a license to be used. You can sign up on the [KeyboardKit website][Website] or the [Gumroad store][Gumroad].



[Email]: mailto:info@keyboardkit.com
[Website]: https://keyboardkit.com
[Twitter]: http://twitter.com/getkeyboardkit
[Mastodon]: https://techhub.social/@keyboardkit
[Sponsors]: https://github.com/sponsors/danielsaidi

[About]: https://keyboardkit.com/about

[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
[KeyboardKit-App]: https://keyboardkit.com/app
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro
[Gumroad]: https://kankoda.gumroad.com
[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started-article
[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials-article

[Actions]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/actions-article
[AI]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/ai-article
[App]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/app-article
[Autocomplete]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/autocomplete-article
[Buttons]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/buttons-article
[Callouts]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/callouts-article
[Device]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/device-article
[Dictation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/dictation-article
[Emojis]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/emojis-article
[External]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/external-keyboards-article
[Feedback]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/feedback-article
[Gestures]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/gestures-article
[Host]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/host-article
[Layout]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/layout-article
[Localization]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/localization-article
[Navigation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/navigation-article
[Previews]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/previews-article
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/proxy-article
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/settings-article
[Status]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/status-article
[Styling]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/styling-article
[Text-Input]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/text-input-article
[Themes]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/themes-article
