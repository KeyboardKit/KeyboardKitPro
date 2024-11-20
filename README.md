<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Pro Logo" title="KeyboardKit Pro" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKitPro?color=forestgreen&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.9-orange.svg" alt="Swift 5.9" />
    <img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Documentation" />
    <a href="https://keyboardkit.github.io/KeyboardKit"><img src="https://img.shields.io/badge/docs-9.0-blue.svg" alt="Documentation" /></a>
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] is a SwiftUI SDK that lets you create fully customizable [keyboard extensions][About] with a few lines of code.

KeyboardKit Pro extends [KeyboardKit][KeyboardKit] with features like autocomplete & autocorrect, AI support, a powerful emoji keyboard, dictation, themes, app templates, and much more.

<p align="center">
    <img src="Resources/Demo.gif" width="450" />
</p>

Keyboard extensions can be used within all other apps on iOS, where text input is supported. It's the only way for your product or brand to directly interact with other apps on iOS. Don't miss out!

> [!NOTE]
> KeyboardKit 9 is soon out! Give it a try by using the `9.0.0-rc.4` tag. The [online docs][Documentation] are updated for this major update. See [the GitHub roadmap](https://github.com/KeyboardKit/KeyboardKit/milestone/100) for remaining and closed issues.
 


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

The easiest way to set up KeyboardKit is to create a `KeyboardApp` value that defines information for your app:

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

To replace or customize the standard `KeyboardView` keyboard, just override `viewWillSetupKeyboardView` and call `setupKeyboardView` with the view you want to use:

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
                collapsedView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { _ in MyCustomToolbar() }
            )
        }
    }
}
```

To set up your main app with the same configuration, just wrap the root content view in a `KeyboardAppView`:

```swift
import SwiftUI
import KeyboardKitPro

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

Setting up your app and keyboard with a `KeyboardApp` will make settings sync between the two if an ``appGroupId`` is defined, register your KeyboardKit Pro license if a ``licenseKey`` is defined, set up dictation, deep links, etc.

For more information, see the [getting started guide][Getting-Started].




## Localization

KeyboardKit supports [70 keyboard-specific locales][Localization]:

🇺🇸 🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿  <br />
🇩🇰 🇳🇱 🇧🇪 🇦🇺 🇨🇦 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭  <br />
🇫🇮 🇫🇷 🇨🇦 🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷  <br />
🇺🇸 🇮🇱 🇭🇺 🇮🇸 🏳️ 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯  <br />
🇹🇯 🇹🇯 🇱🇻 🇱🇹 🇲🇰 🇲🇾 🇲🇹 🇲🇳 🏳️ 🇳🇴  <br />
🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰  <br />
🇸🇮 🇪🇸 🇦🇷 🇲🇽 🇸🇪 🇰🇪 🇹🇷 🇺🇦 🇺🇿 🏴󠁧󠁢󠁷󠁬󠁳󠁿  <br />

KeyboardKit Pro unlocks localized keyboards, layouts, callouts and behaviors for all supported locales.



## Open-Source Features

[KeyboardKit][KeyboardKit] comes packed with free, open-source features to help you build amazing custom keyboards: 



## 👑 Pro Features

[KeyboardKit Pro][Pro] extends KeyboardKit with Pro features:

* ⌨️ [Essentials][Essentials] - More essential tools, previews, toolbars, etc.
* 🤖 [AI][AI] - Features that are needed for AI.
* 📱 [App][App] - App-specific screens & views.
* 💡 [Autocomplete][Autocomplete] - Local & remote autocomplete, next word prediction, etc.
* 🗯 [Callouts][Callouts] - Localized callout actions for all supported locales.
* 🎤 [Dictation][Dictation] - Dictate text from the keyboard.
* 😀 [Emojis][Emojis] - A powerful emoji keyboard, search, etc.
* ⌨️ [External][External] - Auto-detect if an external keyboard is connected. 
* 🏠 [Host][Host] - Identify and open specific host applications.
* 🔣 [Layout][Layout] - Localized layouts for all supported locales.
* 🌐 [Localization][Localization] - Services & views for all supported locales.
* 👁 [Previews][Previews] - Keyboard & theme previews for in-app use.
* 📄 [Proxy][Proxy] - Allow `UITextDocumentProxy` to read the full document.
* 📝 [Text][Text-Input] - Allow users to type within the keyboard.
* 🍭 [Themes][Themes] - A theme engine with many pre-defined themes.



## Documentation

The [online documentation][Documentation] has a detailed article for each feature, a thorough getting-started guide, code samples, etc. You can also build it from the source code to get better formatting.

> [!NOTE]
> The online documentation is updated for KeyboardKit 9.0 RC 2. Documentation for KeyboardKit 8 can be built from the source code.



## Demo App

The [main repository][KeyboardKit] has a demo app that shows how to set up the main keyboard app, show keyboard status, provide in-app settings, link to system settings, apply custom styles, etc.

The app has two keyboards - a `Keyboard` that uses KeyboardKit and a `KeyboardPro` that uses KeyboardKit Pro. Note that you need to enable Full Access for some features to work, like haptic feedback.

> [!IMPORTANT]
> The demo isn't code signed and can therefore not use an App Group to sync settings between the app and its keyboards. As such, the `KeyboardPro` keyboard has settings screens in the keyboard as well. You can try out the [KeyboardKit app][KeyboardKit-App] from the App Store to see how settings sync when you use a signed app.



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
