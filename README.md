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

[KeyboardKit][KeyboardKit] is a Swift SDK that lets you create fully customizable keyboards in a few lines of code, using SwiftUI.

KeyboardKit extends Apple's native APIs and provides you with a lot more functionality. It lets you mimic the native iOS keyboard and tweak its style and behavior, or create completely custom keyboards. 

<p align="center">
    <img src="Resources/Demo.gif" width="450" />
</p>

Custom iOS keyboard extensions can be used with all other apps that support text input. It's the only way for your product, brand or technology to directly interact with other apps on iOS. Don't miss out!

KeyboardKit Pro extends KeyboardKit with pro features like fully localized keyboards & services, autocomplete, an emoji keyboard, AI supporting capabilities, themes, dictation, and much more.

 


## Commercially Licensed

KeyboardKit Pro is closed source and requires a commercial license.

Licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

**Important!** Unlike KeyboardKit, KeyboardKit Pro is a binary target and must only be added to the app target. If you add it to any other target, it may crash at runtime.



## Getting started

After installing KeyboardKit Pro, just make your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to new lifecycle functions like `viewWillSetupKeyboard`, observable state like `state.keyboardContext`, services like `services.actionHandler`, and much more.

If you just want to use the default `SystemKeyboard` view, which mimics a native iOS keyboard, you only have to register your license key on launch:

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

To replace or customize the default `SystemKeyboard`, just override `viewWillSetupKeyboard` and call `setupPro` with a `view` builder:

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

KeyboardKit supports [63 keyboard-specific locales][Localization]:

🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿 🇩🇰 <br />
🇳🇱 🇧🇪 🇺🇸 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 <br />
🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇺🇸 🇮🇱 🇭🇺 <br />
🇮🇸 🏳️ 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯 🇹🇯 🇹🇯 🇱🇻 <br />
🇱🇹 🇲🇰 🇲🇾 🇲🇹 🇲🇳 🇳🇴 🏳️ 🇮🇷 🇵🇱 🇵🇹 <br />
🇧🇷 🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇰🇪 🇸🇪 <br />
🇹🇷 🇺🇦 🇺🇿 <br />

[KeyboardKit][KeyboardKit] provides a basic keyboard layout and callout actions, while KeyboardKit Pro provides localized layouts, callouts and behaviors for all supported locales.



## Features

KeyboardKit Pro extends [KeyboardKit][KeyboardKit] with pro features:

* ⌨️ [Essentials][Essentials] KeyboardKit Pro unlocks more essential tools, system keyboard previews, etc.
* 🤖 [AI][AI] - KeyboardKit Pro unlocks tools that are required for AI-based features.
* 📱 [App][App] - KeyboardKit Pro unlocks app-specific screens and views.
* 💡 [Autocomplete][Autocomplete] - KeyboardKit Pro unlocks on-device and remote autocomplete.
* 🎤 [Dictation][Dictation] - KeyboardKit Pro unlocks dictation services and a speech recognizer.
* 😀 [Emojis][Emojis] - KeyboardKit Pro unlocks a powerful emoji keyboard.
* ⌨️ [External][External] - KeyboardKit Pro unlocks ways to detect and handle external keyboards.
* 🔉 [Feedback][Feedback] - KeyboardKit Pro unlocks components for toogling feedback on & off.
* 🌐 [Localization][Localization] - KeyboardKit Pro unlocks **63** locale-specific services and system keyboards.
* ➡️ [Proxy][Proxy] - KeyboardKit Pro unlocks ways for ``UIKit/UITextDocumentProxy`` to read the full document.
* 🚏 [Text][Text-Input] - KeyboardKit Pro unlocks text input views that let you type within a keyboard extension.
* 🍭 [Themes][Themes] - KeyboardKit Pro unlocks a theme engine with many pre-defined themes.

Every article in the [documentation][Documentation] describes in detail what KeyboardKit Pro unlocks for that part of the SDK. 



## Documentation

The [online documentation][Documentation] has more information, articles, code examples, etc.



## Demo App

The [KeyboardKit repository][KeyboardKit] has a demo app that shows how to display keyboard state, link to system settings, etc.

The demo app has two demo keyboards: 

* `Keyboard` uses KeyboardKit and a customized `SystemKeyboard`.
* `KeyboardPro` uses KeyboardKit Pro and enables all locales, autocomplete, themes, etc.

Just open and run the demo app in the `Demo` folder, then enable the keyboards under System Settings. Note that you need to enable full access for some features to work.



## KeyboardKit App

If you want to try KeyboardKit Pro without having to write any code or build the demo app from Xcode, there is a [KeyboardKit app][App] in the App Store, that lets you try out many pro features.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* Website: [keyboardkit.com][Website]
* Mastodon: [@keyboardkit@techhub.social][Mastodon]
* Twitter: [@getkeyboardkit][Twitter]
* E-mail: [info@keyboardkit.com][Email]



## Commercially Licensed

KeyboardKit Pro is closed source. See the [LICENSE][License] file for more info.

Commercial licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



[Email]: mailto:info@getkeyboardkit.com
[Website]: https://keyboardkit.com
[Twitter]: http://twitter.com/getkeyboardkit
[Mastodon]: https://techhub.social/@keyboardkit
[Sponsors]: https://github.com/sponsors/danielsaidi

[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro
[Gumroad]: https://kankoda.gumroad.com
[App]: https://keyboardkit.com/app
[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitPro/getting-started
[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitPro/essentials

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
