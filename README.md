<p align="center">
    <img src ="Resources/Logo_GitHub.png" alt="KeyboardKit Logo" title="KeyboardKit" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.6-orange.svg" alt="Swift 5.6" />
    <img src="https://img.shields.io/badge/platform-SwiftUI-blue.svg" alt="Swift UI" title="Swift UI" />
    <img src="https://img.shields.io/github/license/danielsaidi/DeckKit" alt="MIT License" />
    <img src="https://img.shields.io/twitter/url?label=Twitter&style=social&url=https%3A%2F%2Ftwitter.com%2Fgetkeyboardkit" alt="Twitter: @@getkeyboardkit" title="Twitter: @getkeyboardkit" />
    <img src="https://img.shields.io/mastodon/follow/109340839247880048?domain=https%3A%2F%2Ftechhub.social&style=social" alt="Mastodon: @keyboardkit@techhub.social" title="Mastodon: @danielsaidi@mastodon.social" />
</p>



## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] helps you build custom keyboard extensions for iOS and iPadOS, using Swift and SwiftUI. It extends the native keyboard APIs and provides you with a lot more functionality than is otherwise available.

KeyboardKit lets you create keyboards that mimic the native iOS keyboards in a few lines of code. These keyboards can be customized to great extent to change input keys, keyboard layout, design, behavior etc.

<p align="center">
    <img src ="https://github.com/KeyboardKit/KeyboardKit/blob/master/Resources/Demo.gif?raw=true" width="300" />
</p> 

KeyboardKit Pro extends KeyboardKit with pro features, such as fully localized keyboards and services, autocomplete, dictation, proxy extensions, emoji skintone and version info, additional views etc. It supercharges your keyboard and lets you create localized keyboards in all locales with a few lines of code.
 


## Licenses

KeyboardKit Pro requires a commercial license. Licenses can be purchased from the [website][Website] or from [Gumroad][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

Since KeyboardKit Pro installs as a binary, it only has to be added to the main app target.



## Supported Platforms

KeyboardKit supports `iOS 14`, `macOS 11`, `tvOS 14` and `watchOS 7`. 

The public distribution is `iOS` only for non-enterprise licenses! Please reach out if you need to use KeyboardKit Pro on multiple platforms.



## Supported Locales

KeyboardKit is localized in 61 keyboard-specific locales ([read more][Localization]):

🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🇭🇷 🇨🇿 🇩🇰 <br />
🇳🇱 🇧🇪 🇺🇸 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 <br />
🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇺🇸 🇮🇱 🇭🇺 <br />
🇮🇸 🇮🇩 🇮🇪 🇮🇹 🇰🇿 🇹🇯 🇹🇯 🇹🇯 🇱🇻 🇱🇹 <br />
🇲🇰 🇲🇾 🇲🇹 🇲🇳 🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 🇷🇴 <br />
🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇰🇪 🇸🇪 🇹🇷 🇺🇦 <br />
🇺🇿 <br />

KeyboardKit Pro can unlock localized input sets, keyboard layouts and callout actions for all locales.  



## Features

Besides the [core features][KeyboardKit], KeyboardKit Pro extends KeyboardKit with a bunch of pro features:

* 🎨 [Appearance][Appearance] - KeyboardKit Pro unlocks a theme engine with many pre-defined themes.
* 💡 [Autocomplete][Autocomplete] - KeyboardKit Pro unlocks a local and a remote autocomplete provider.
* 🗯 [Callouts][Callouts] - KeyboardKit Pro unlocks locale-specific callout actions for all locales above.
* 🎤 [Dictation][Dictation] - (BETA) KeyboardKit can perform dictation from the keyboard extension.
* 😊 [Emojis][Emojis] - KeyboardKit Pro unlocks emoji skin tone variants, secondary actions and verison information. 
* 🔤 [Input][Input] - KeyboardKit Pro unlocks locale-specific input sets for all locales above.
* 💱 [Layout][Layout] - KeyboardKit Pro unlocks locale-specific keyboard layouts for all locales above.
* ➡️ [Proxy][Proxy] - KeyboardKit Pro unlocks `UITextDocumentProxy` extensions for reading all text from the proxy.
* 🖼 Views - KeyboardKit Pro unlocks additonal views that simplify building great keyboards.

You can find KeyboardKit Pro-specific information at the end of each of these articles.



## Getting started

The online documentation has a [getting-started guide][Getting-Started] that will help you get started with the library.

To make your custom keyboard extension use KeyboardKit, just install and import KeyboardKit, then  make it inherit `KeyboardInputViewController` instead of `UIInputController`:

```swift
import KeyboardKit

class KeyboardController: KeyboardInputViewController {}
```

This will by default set up a fully working U.S. English keyboard. You can then register your license key when setting up KeyboardKit Pro:

```
override viewWillSetupKeyboard() {
    super.viewWillSetupKeyboard()
    try? setupPro(
        withLicenseKey: "299B33C6-061C-4285-8189-90525BCAF098",
        view: { controller in MyKeyboardView(controller: controller) },
        licenseConfiguration: { license in ... }
    )
}
```

For more information, please see the [online documentation][Documentation] and [getting-started guide][Getting-Started].



## Documentation

The [online documentation][Documentation] has articles, code examples etc. that let you overview the various parts of the library and understand how they all connect to each other.

The online documentation is currently iOS-specific, which means that some parts will not be available if you run KeyboardKit Pro on other platforms.

 

## Demo Application

The [main project repository][KeyboardKit] has a `Demo` folder with a demo apps that lets you try out different KeyboardKit features.

The demo app has 5 keyboard extensions:

* `English` has a `SystemKeyboard` with the standard, English locale.
* `Unicode` has a `SystemKeyboard` with unicode-based input keys.
* `Custom` has a `SystemKeyboard` with custom keys, layout and appearance.
* `Pro` uses KeyboardKit Pro and has a `SystemKeyboard` with all LRT locales.
* `ProRtl` uses KeyboardKit Pro and has a `SystemKeyboard` with all RTL locales.

Just open and run the demo app, then enable the keyboards you want to try under System Settings. Note that you need to enable full access to try some features, like audio and haptic feedback.



## Support

KeyboardKit is trusted and proudly sponsored by the following companies:

<a href="https://www.oribi.se/en">
    <img src="Resources/sponsors/oribi.png" alt="Oribi Icon" title="Oribi" width=120 />
</a>
<a href="https://www.phonetoroam.com">
    <img src="Resources/sponsors/phonetoroam.png" alt="phonetoroam Icon" title="phonetoroam" width=120 />
</a>
<a href="https://vitalisapps.com">
    <img src="Resources/sponsors/vitalis.png" alt="Vitalis Icon" title="Vitalis" width=120 />
</a>
<a href="https://letterkey.eu">
    <img src="Resources/sponsors/letterkey.png" alt="LetterKey Icon" title="LetterKey" width=120 />
</a>
<a href="http://anomaly.net.au">
    <img src="Resources/sponsors/anomaly.png" alt="Anomaly Software Icon" title="Anomaly Software" width=120 />
</a>
<a href="https://www.milocreative.com">
    <img src="Resources/sponsors/milo.png" alt="Milo Creative Icon" title="Milo Creative" width=120 />
</a>

KeyboardKit is open-source and completely free, but you can sponsor this project on [GitHub Sponsors][Sponsors], upgrade to KeyboardKit Pro or get in touch for paid support.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* Website: [keyboardkit.com][Website]
* Mastodon: [@keyboardkit@techhub.social][Mastodon]
* Twitter: [@getkeyboardkit][Twitter]
* E-mail: [info@getkeyboardkit.com][Email]



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
[Appearance]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/appearance
[Autocomplete]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/autocomplete
[Callouts]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/callouts
[Dictation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/dictation
[Emojis]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/emojis
[External]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/external-keyboards
[Feedback]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/feedback
[Gestures]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/gestures
[Input]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/input
[Keyboard]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/keyboard
[Layout]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/layout
[Localization]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/localization
[Previews]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/previews
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/proxy-extensions
[Routing]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/routing
[RTL]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/rtl
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/settings
[Styles]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/styles

[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE
