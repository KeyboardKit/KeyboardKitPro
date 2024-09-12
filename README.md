<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Logo" title="KeyboardKit" />
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

To use KeyboardKit in a keyboard extension, just inherit the KeyboardKit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to new lifecycle functions like `viewWillSetupKeyboard`, observable state like `state.keyboardContext`, services like `services.actionHandler`, and much more.

If you just want to use a standard `KeyboardView`, which mimics a native iOS keyboard, you only have to register your license key on launch:

```swift
func viewDidLoad() {
    super.viewDidLoad()
    let license = try? setupPro(
        withLicenseKey: "your-key",
        locales: [...], // Define which locales to use 
    ) { license in
        // Make any license-based configurations here 
    }
}
```

To replace or customize the default `SystemKeyboard`, just override `viewWillSetupKeyboard` and call `setupPro` with the view you want to use:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        try? setupPro(
            withLicenseKey: "your-key",
            locales: [...], // Define which locales to use
            licenseConfiguration: { license in
                // Make any configurations and service adjustments here
            },
            view: { [weak self] controller in // <-- Use [weak self] or [unowned self] if you need self here.  
                SystemKeyboard(
                    state: controller.state,
                    services: controller.services,
                    buttonContent: { $0.view },
                    buttonView: { $0.view },
                    emojiKeyboard: { $0.view },
                    toolbar: { _ in MyCustomToolbar() }
                )
            }
        )
    }
}
```

For more information, please see the [getting started guide][Getting-Started].



## Supported Locales

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

* ⌨️ [Essentials][Essentials] - Unlock more essential tools, keyboard previews, etc.
* 🤖 [AI][AI] - Unlock features that are needed for AI.
* 📱 [App][App] - Unlock app-specific screens & views.
* 💡 [Autocomplete][Autocomplete] - Unlock on-device & remote autocomplete for many locales.
* 🗯 [Callouts][Callouts] - Unlock localized callouts for all locales.
* 🎤 [Dictation][Dictation] - Make your keyboard perform dictation via the main app.
* 😀 [Emojis][Emojis] - Unlock a powerful emoji keyboard.
* ⌨️ [External][External] - Detect if an external keyboard is connected. 
* 🏠 [Host][Host] - Easily identify and open specific host applications.
* 🔣 [Layout][Layout] - Unlock localized layouts for all locales.
* 🌐 [Localization][Localization] - Unlock locale-specific services & views.
* 👁 [Previews][Previews] - Unlock keyboard & theme previews.
* ➡️ [Proxy][Proxy] - Unlock ways for `UITextDocumentProxy` to read the full document.
* 📝 [Text][Text-Input] - Unlock tools to let users type within the keyboard.
* 🍭 [Themes][Themes] - Unlock a theme engine with many pre-defined themes.



## Documentation

The [online documentation][Documentation] has more information, articles, code examples, etc.



## Demo App

The [main repository][KeyboardKit] has a demo app that shows you how to customize the keyboard, show keyboard state, provide in-app settings in the main app, link to system settings, apply custom styles, etc.

The app has two keyboards - a `Keyboard` that uses KeyboardKit and a `KeyboardPro` that uses KeyboardKit Pro.

Just open and run the demo app in the `Demo` folder, then enable the keyboards under System Settings. Note that you need to enable Full Access for some features to work, like haptic feedback.



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

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started
[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials

[Actions]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/actions-article
[AI]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/ai-article
[App]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/app-article
[Autocomplete]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/autocomplete-article
[Buttons]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/buttons-article
[Callouts]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/callouts-article
[Colors]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/colors-article
[Device]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/device-article
[Dictation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/dictation-article
[Emojis]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/emojis-article
[External]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/external-keyboards-article
[Feedback]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/feedback-article
[Gestures]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/gestures-article
[Host]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/host-article
[Images]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/images-article
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
