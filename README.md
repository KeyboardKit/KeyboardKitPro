<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Logo" title="KeyboardKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.7-orange.svg" alt="Swift 5.7" />
    <a href="https://twitter.com/getkeyboardkit">
        <img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetkeyboardkit" alt="Twitter: @@getkeyboardkit" title="Twitter: @getkeyboardkit" />
    </a>
    <a href="https://techhub.social/@keyboardkit">
        <img src="https://img.shields.io/mastodon/follow/109340839247880048?domain=https%3A%2F%2Ftechhub.social&style=social" alt="Mastodon: @keyboardkit@techhub.social" title="Mastodon: @keyboardkit@mastodon.social" />
    </a>
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] helps you create custom keyboards for iOS and iPadOS, using Swift and SwiftUI. It extends Apple's native keyboard APIs and provides you with more functionality.

KeyboardKit lets you create keyboards that mimic native iOS keyboards in a few lines of code.

<p align="center">
    <img src="Resources/Demo.gif" width="300" />
</p>

KeyboardKit Pro extends KeyboardKit with a bunch of pro features, such as localized system keyboards, autocomplete, dictation, an emoji keyboard, emoji categories, skintones, version info, etc. 

KeyboardKit supports `iOS 14`, `macOS 11`, `tvOS 14` and `watchOS 7`.
 


## Pricing

KeyboardKit Pro requires a commercial license. Licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

KeyboardKit Pro only has to be added to the main app target.



## Supported Locales

KeyboardKit is localized in [60+ keyboard-specific locales][Localization]:

🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿 🇩🇰 <br />
🇳🇱 🇧🇪 🇺🇸 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 <br />
🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇺🇸 🇮🇱 🇭🇺 <br />
🇮🇸 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯 🇹🇯 🇹🇯 🇱🇻 🇱🇹 <br />
🇲🇰 🇲🇾 🇲🇹 🇲🇳 🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 🇷🇴 <br />
🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇰🇪 🇸🇪 🇹🇷 🇺🇦 <br />
🇺🇿 <br />

KeyboardKit Pro unlocks localized input sets, layouts and callouts for all locales.  



## Features

KeyboardKit Pro extends [KeyboardKit][KeyboardKit] with pro features:

* ⌨️ [Essentials][Essentials] - KeyboardKit Pro unlocks system keyboard and theme live previews.
* 💥 [Actions][Actions] - KeyboardKit Pro registers and shows the most recently used emojis.
* 🤖 [AI Support][AI] - KeyboardKit Pro unlocks capabilities that are needed for AI.
* 💡 [Autocomplete][Autocomplete] - KeyboardKit Pro unlocks local and remote autocomplete.
* 🗯 [Callouts][Callouts] - KeyboardKit Pro unlocks localized callout actions for all locales.
* 🎤 [Dictation][Dictation] - (BETA) KeyboardKit Pro unlocks dictation for apps and keyboards.
* 😀 [Emojis][Emojis] - KeyboardKit Pro unlocks an emoji keyboard and more emoji information.
* ⌨️ [External Keyboards][External] - KeyboardKit Pro can detect if an external keyboard is connected. 
* 🔣 [Layout][Layout] - KeyboardKit Pro unlocks localized input sets and layouts for all locales.
* 🌐 [Localization][Localization] - KeyboardKit Pro unlocks fully localized keyboards for all 60+ locales.
* 👁️ [Previews][Previews] - KeyboardKit Pro unlocks powerful system keyboard and theme previews.
* ➡️ [Proxy Extensions][Proxy] - KeyboardKit Pro makes `UITextDocumentProxy` able to read all content in a document.
* 🎨 [Styling][Styling] - KeyboardKit Pro unlocks a theme engine with many pre-defined themes.
* 🚏 [Text Routing][Text-Routing] - KeyboardKit Pro lets you route text to text inputs within the keyboard.

KeyboardKit Pro also adds more views, toggles, toolbars, etc.



## Getting started

The online documentation has a [getting-started guide][Getting-Started] that helps you get started with KeyboardKit Pro.

After installing KeyboardKit Pro, just `import KeyboardKitPro` and make your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to new lifecycle functions, observable state, services, and much more.

KeyboardKit Pro will by default use a standard ``SystemKeyboard`` with an ``EmojiKeyboard``. If you just want to use this standard view, just call `setupPro` without specifying a custom view:

```swift
func viewDidLoad() {
    super.viewDidLoad()
    let license = try? setupPro(withLicenseKey: "your-key")
    // Make any configurations and service adjustments here
}
```

To customize or replace the standard view, you can override `viewWillSetupKeyboard()` and call any of the `setupPro` functions with a custom view:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        try? setupPro(
            withLicenseKey: "LICENSE-KEY",
            licenseConfiguration: { license in
                // Make any configurations and service adjustments here
            },
            view: { controller in
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

The setup view builder provides an `unowned` controller reference to help avoiding memory leaks. Use it to access its state and services, and avoid passing it around.

For more information, please see the [online documentation][Documentation] and [getting-started guide][Getting-Started].



## Documentation

The [online documentation][Documentation] has articles, code examples etc.



## Demo App

The [KeyboardKit repository][KeyboardKit] has a demo app that shows how to display keyboard state, link to system settings, etc.

The demo app has three keyboards: 

* `Keyboard` uses KeyboardKit and a standard `SystemKeyboard`.
* `KeyboardPro` uses KeyboardKit Pro and a `SystemKeyboard` with 60+ locales, autocomplete, etc.
* `KeyboardTextInput` uses KeyboardKit Pro and lets you test using text input within the keyboard.

Just open and run the demo app in the `Demo` folder, then enable the keyboards under System Settings. Note that you need to enable full access for some features, like haptic feedback.



## KeyboardKit App

If you want to try KeyboardKit Pro without having to write any code or build the demo app from Xcode, there is a [KeyboardKit app][app-store] in the App Store.



## KeyboardKit Pro licenses

KeyboardKit Pro requires a commercial license. Licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* Website: [keyboardkit.com][Website]
* Mastodon: [@keyboardkit@techhub.social][Mastodon]
* Twitter: [@getkeyboardkit][Twitter]
* E-mail: [info@keyboardkit.com][Email]



## License

KeyboardKit Pro is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@getkeyboardkit.com
[Website]: https://keyboardkit.com
[Twitter]: http://twitter.com/getkeyboardkit
[Mastodon]: https://techhub.social/@keyboardkit
[Sponsors]: https://github.com/sponsors/danielsaidi

[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro
[Gumroad]: https://kankoda.gumroad.com

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started-pro

[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials

[Actions]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-actions
[AI]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-ai-support
[Autocomplete]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-autocomplete
[Buttons]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-buttons
[Callouts]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-callouts
[Colors]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-colors
[Device]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-device-utilities
[Dictation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-dictation
[Emojis]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-emojis
[External]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-external-keyboards
[Feedback]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-feedback
[Gestures]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-gestures
[Images]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-images
[Layout]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-layout
[Localization]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-localization
[Navigation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-navigation
[Previews]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-previews
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-proxy-utilities
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-settings
[State]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-state
[Styling]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/understanding-styling
[Text-Routing]: https://keyboardkit.github.io/KeyboardKit/documentation/keyboardkit/understanding-text-routing

[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE
