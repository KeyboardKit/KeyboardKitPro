<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Logo" title="KeyboardKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.6-orange.svg" alt="Swift 5.6" />
    <img src="https://img.shields.io/badge/platform-SwiftUI-blue.svg" alt="Swift UI" title="Swift UI" />
    <img src="https://img.shields.io/github/license/danielsaidi/DeckKit" alt="MIT License" />
        <a href="https://twitter.com/getkeyboardkit">
        <img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetkeyboardkit" alt="Twitter: @@getkeyboardkit" title="Twitter: @getkeyboardkit" />
    </a>
    <a href="https://techhub.social/@keyboardkit">
        <img src="https://img.shields.io/mastodon/follow/109340839247880048?domain=https%3A%2F%2Ftechhub.social&style=social" alt="Mastodon: @keyboardkit@techhub.social" title="Mastodon: @keyboardkit@mastodon.social" />
    </a>
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] helps you create custom keyboards for iOS and iPadOS, using Swift and SwiftUI. It extends Apple's native keyboard APIs and provides you with more functionality.

KeyboardKit Pro extends KeyboardKit with pro features, such as localized input sets, layouts and callout actions, autocomplete, dictation, proxy extensions, emoji skintone and version info, etc. It supercharges your keyboard and lets you create amazing and fully custom keyboards.

<p align="center">
    <img src ="Resources/Demo.gif" width="300" />
</p>

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

KeyboardKit Pro extends KeyboardKit with a bunch of features:

* 💡 [Autocomplete][Autocomplete] - KeyboardKit Pro unlocks a local and a remote autocomplete provider.
* 🗯 [Callouts][Callouts] - KeyboardKit Pro unlocks locale-specific callout actions for all locales.
* 🎤 [Dictation][Dictation] - (BETA) KeyboardKit unlocks a dictation engine that can perform keyboard dictation.
* 😊 [Emojis][Emojis] - KeyboardKit Pro unlocks emoji skin tone variants, secondary actions and version information. 
* 🔣 [Layout][Layout] - KeyboardKit Pro unlocks locale-specific input sets and keyboard layouts for all locales.
* ➡️ [Proxy Extensions][Proxy] - KeyboardKit Pro unlocks `UITextDocumentProxy` extensions for reading all text from the proxy.
* 🎨 [Styling][Styling] - KeyboardKit Pro unlocks a theme-based appearance engine with many pre-defined themes.



## Getting started

The online documentation has a [getting-started guide][Getting-Started] that helps you get started.

After installing KeyboardKit Pro, just `import KeyboardKitPro` and make your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to additional functionality, such as new lifecycle functions like `viewWillSetupKeyboard()`, observable state like `keyboardContext`, services like `keyboardActionHandler` and much more.

The default ``KeyboardInputViewController`` behavior is to setup an English `SystemKeyboard`. It will then call `viewWillSetupKeyboard()` when the keyboard view should be created or updated.

If you want to use the default system keyboad with the locales and features that your license unlocks, you can just register your license key:

```swift
func viewDidLoad() {
    super.viewDidLoad()
    let license = try? setupPro(withLicenseKey: "your-key")
}
```

To set up KeyboardKit Pro with a custom view, you can override `viewWillSetupKeyboard()` and call `setupPro(withLicenseKey:licenseConfiguration:view:)` to customize the `SystemKeyboard` or use a custom view:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        try? setupPro(
            withLicenseKey: "LICENSE-KEY",
            licenseConfiguration: { license in
                // Use the license as needed here
            },
            view: { controller in
                VStack(spacing: 0) {
                    MyCustomToolbar()
                    SystemKeyboard(
                        controller: controller,
                        autocompleteToolbar: .none
                    )
                }
            }
        )
    }
}
```

The view builder provides an unowned controller reference to avoid reference cycles and memory leaks.

For more information, please see the [online documentation][Documentation] and [getting-started guide][Getting-Started].



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library and understand how they all connect to each other.

The online documentation is currently iOS-specific, which means that some parts will not be available if you run KeyboardKit Pro on other platforms.

 

## Demo Application

The [main project repository][KeyboardKit] has a demo app that lets you try out KeyboardKit and KeyboardKit Pro.

* The main app shows how to display keyboard state, link to system settings, etc.
* The `English` keyboard uses KeyboardKit and a `SystemKeyboard` with a standard, English locale.
* The `Unicode` keyboard uses KeyboardKit and a `SystemKeyboard` with unicode-based input keys.
* The `Custom` keyboard uses KeyboardKit and a `SystemKeyboard` with custom keys, layouts and styles.
* The `Pro` keyboard uses KeyboardKit Pro and a `SystemKeyboard` with all LRT locales, autocomplete etc.

Just open and run the demo app in the `Demo` folder, then enable the keyboards you want to try under System Settings. Note that you need to enable full access to try some features, like audio and haptic feedback.



## Support

KeyboardKit is open-source and completely free, but you can sponsor this project on [GitHub Sponsors][Sponsors], upgrade to [KeyboardKit Pro][Pro] or [get in touch][Email] for freelance work, paid support etc.



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
[Gumroad]: https://danielsaidi.gumroad.com

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started-with-keyboardkit-pro

[Actions]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/actions
[Autocomplete]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/autocomplete
[Callouts]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/callouts
[Dictation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/dictation
[Emojis]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/emojis
[External]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/external-keyboards
[Feedback]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/feedback
[Gestures]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/gestures
[Keyboard]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/keyboard
[Layout]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/layout
[Localization]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/localization
[Previews]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/previews
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/proxy-extensions
[Routing]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/routing
[RTL]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/rtl
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/settings
[Styling]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/styling

[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE
