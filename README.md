<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Logo" title="KeyboardKit" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKitPro?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.8-orange.svg" alt="Swift 5.8" />
    <a href="https://twitter.com/getkeyboardkit"><img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetkeyboardkit" alt="Twitter: @getkeyboardkit" title="Twitter: @getkeyboardkit" /></a>
    <a href="https://techhub.social/@keyboardkit"><img src="https://img.shields.io/mastodon/follow/109340839247880048?domain=https%3A%2F%2Ftechhub.social&style=social" alt="Mastodon: @keyboardkit@techhub.social" title="Mastodon: @keyboardkit@techhub.social" /></a>
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] helps you create custom keyboard extensions with Swift and SwiftUI.

KeyboardKit extends KeyboardKit with pro features, such as fully localized keyboards, autocomplete, an emoji keyboard, themes, dictation, etc.

<p align="center">
    <img src="Resources/Demo.gif" width="450" />
</p>

KeyboardKit lets you customize all parts of the keyboard. You can use custom layouts, designs, behavior, etc. and make any key or gesture trigger any action. You can even use completely custom views and just use the underlying functionality.

You can use KeyboardKit in many different ways. Keyboard extensions can use it to create custom keyboards. Apps can use it to check keyboard enabled state, full access, state, provide settings etc. Furthermore, any target can use it to build upon its models and functionality.

 


## Commercially Licensed

KeyboardKit Pro is closed source and requires a commercial license.

Commercial licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

**Important!** Unlike KeyboardKit, KeyboardKit Pro is a binary target and must only be added to the app target. If you add it to any other target, it may crash at runtime.



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

* ⌨️ [Essentials][Essentials] - KeyboardKit Pro unlocks system keyboard and theme live previews.
* 💥 [Actions][Actions] - KeyboardKit Pro registers and shows the most recently used emojis.
* 🤖 [AI Support][AI] - KeyboardKit Pro unlocks capabilities that are needed for AI.
* 💡 [Autocomplete][Autocomplete] - KeyboardKit Pro unlocks local and remote autocomplete.
* 🗯 [Callouts][Callouts] - KeyboardKit Pro unlocks localized callout actions for all locales.
* 🎤 [Dictation][Dictation] - (BETA) KeyboardKit Pro unlocks dictation for apps and keyboards.
* 😀 [Emojis][Emojis] - KeyboardKit Pro unlocks an emoji keyboard and more emoji information.
* ⌨️ [External Keyboards][External] - KeyboardKit Pro can detect if an external keyboard is connected. 
* 🔣 [Layout][Layout] - KeyboardKit Pro unlocks iPad Pro layout and localized layouts for all locales.
* 🌐 [Localization][Localization] - KeyboardKit Pro unlocks fully localized keyboards for all locales.
* 👁️ [Previews][Previews] - KeyboardKit Pro unlocks powerful system keyboard and theme previews.
* ➡️ [Proxy Extensions][Proxy] - KeyboardKit Pro makes `UITextDocumentProxy` able to read all content in a document.
* 🎨 [Styling][Styling] - KeyboardKit Pro unlocks more ways to style keyboards.
* 🚏 [Text Routing][Text-Routing] - KeyboardKit Pro lets you route text to text inputs within the keyboard.
* 🍭 [Themes][Themes] - KeyboardKit Pro defines a theme engine with many predefined themes.
* 🌁 [Views][Views] - KeyboardKit Pro unlocks many additional views.



## Getting started

After installing KeyboardKit Pro, just make your `KeyboardViewController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
import KeyboardKitPro

class KeyboardController: KeyboardInputViewController {}
```

This gives your controller access to new lifecycle functions like `viewWillSetupKeyboard`, observable state like `state.keyboardContext`, services like `services.actionHandler`, and much more.

KeyboardKit Pro will use a `SystemKeyboard` with an `EmojiKeyboard` and an autocomplete toolbar as the default keyboard view. 

To use KeyboardKit Pro with the default view, just call `setupPro` without a view in `viewDidLoad`:

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

To use KeyboardKit Pro with a custom keyboard view, override `viewWillSetupKeyboard` and call `setupPro` with any custom view:

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

For more information, please see the [getting started guide][Getting-Started].



## Documentation

The [online documentation][Documentation] has more information, articles, code examples, etc.



## Demo App

The [KeyboardKit repository][KeyboardKit] has a demo app that shows how to display keyboard state, link to system settings, etc.

The demo app has two keyboards: 

* `Keyboard` uses KeyboardKit and a customized `SystemKeyboard`.
* `KeyboardPro` uses KeyboardKit Pro and a customized `SystemKeyboard` with all locales, autocomplete, themes etc.

Just open and run the demo app in the `Demo` folder, then enable the keyboards under System Settings. Note that you need to enable full access for some features, like haptic feedback.



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

[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/
[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started

[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials

[Actions]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/actions-article
[AI]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/ai-article
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
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/proxy-utilities-article
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/settings-article
[State]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/state-article
[Styling]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/styling-article
[Text-Routing]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/text-routing-article
[Views]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/views

[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE
