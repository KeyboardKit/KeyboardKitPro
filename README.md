<p align="center">
    <img src="Resources/Icon.png" alt="Project Icon" width="250" />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKitPro?color=forestgreen&sort=semver" alt="Version" />
    <img src="https://img.shields.io/badge/swift-5.9-orange.svg" alt="Swift 5.9" />
    <a href="https://keyboardkit.github.io/KeyboardKitPro"><img src="https://img.shields.io/badge/documentation-read-blue.svg" alt="Documentation" /></a>
    <img src="https://img.shields.io/badge/license-commercial-yellow.svg" alt="Commercially Licensed" />
</p>


# KeyboardKit Pro

[KeyboardKit][KeyboardKit] lets you create amazing [custom keyboard extensions][About] with a few lines of code, using Swift & SwiftUI.

<p align="center">
    <img src="Resources/Demo.gif" width="350" />
</p>

KeyboardKit Pro extends KeyboardKit with Pro features, such as fully localized keyboards, autocomplete, an emoji keyboard, AI support, integrations, themes, and much more. See the [feature table](#pro-features) below.

KeyboardKit Pro requires a license to be used. You can sign up on the [KeyboardKit website][Website] or the [Gumroad store][Gumroad].



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

KeyboardKit Pro must only be linked to the main app target. A keyboard extension will still be able to use it by just importing KeyboardKitPro where needed.



## Getting started

The easiest way to set up KeyboardKit is to first create a `KeyboardApp` value for your app:

```swift
import KeyboardKitPro

extension KeyboardApp {

        static var keyboardKitDemo: KeyboardApp {
        .init(
            name: "KeyboardKit",
            licenseKey: "your-key-here",                // Required by KeyboardKit Pro!
            appGroupId: "group.com.keyboardkit.demo",   // Sets up App Group data sync
            locales: .keyboardKitSupported,             // Sets up the enabled locales
            autocomplete: .init(                        // Sets up custom autocomplete  
                nextWordPredictionRequest: .claude(...) // Sets up AI-based prediction
            ),
            deepLinks: .init(app: "kkdemo://", ...)     // Defines how to open the app
        )
    }
}
```  

Next, let your `KeyboardController` inherit ``KeyboardInputViewController`` instead of `UIInputViewController`:

```swift
class KeyboardController: KeyboardInputViewController {}
```

This unlocks additional functions and capabilities, and adds `services` and observable `state` to the controller.

Next, override `viewDidLoad()` and call `setup(for:)` to set up the keyboard extension for your app:

```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Set up the keyboard with the app we created above
        setup(for: .keyboardKitDemo) { result in
            // If `result` is `.success`, the setup did succeed.
            // This is where you can setup custom services, etc.
        }
    }
}
```

This will make keyboard settings sync data between the main app and its keyboard if the `KeyboardApp` defines an ``appGroupId``, set up KeyboardKit Pro if it defines a ``licenseKey``, set up dictation and deep links, etc.

To replace or customize the standard ``KeyboardView``, just override `viewWillSetupKeyboardView()` and let it call `setupKeyboardView(_:)` with the view that you want to use:


```swift
class KeyboardViewController: KeyboardInputViewController {

    override func viewWillSetupKeyboardView() {
        setupKeyboardView { [weak self] controller in // <-- Use weak or unknowned self!
            KeyboardView(
                state: controller.state,
                services: controller.services,
                buttonContent: { $0.view },
                buttonView: { $0.view },
                collapsedView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { $0.view }
            )
        }
    }
}
```

To set up your main app with the same keyboard configuration, just wrap the content view in a `KeyboardAppView`:

```swift
@main
struct MyApp: App {

    var body: some Scene {
        WindowGroup {
        
            // Here we use the `.keyboardKitDemo` from above
            KeyboardAppView(for: .keyboardKitDemo) {
                ContentView()
            }
        }
    }
}
```

For more information, see the [getting started guide][Getting-Started] and [essentials][Essentials] articles.




## Localization

KeyboardKit supports [73 locales][Localization]:

🇺🇸 🇦🇱 🇦🇪 🇦🇲 🇧🇾 🇧🇬 🇦🇩 🏳️ 🏳️ 🇭🇷  <br />
🇨🇿 🇩🇰 🇳🇱 🇧🇪 🇦🇺 🇨🇦 🇬🇧 🇺🇸 🇪🇪 🇫🇴  <br />
🇵🇭 🇫🇮 🇫🇷 🇨🇦 🇧🇪 🇨🇭 🇬🇪 🇩🇪 🇦🇹 🇨🇭  <br />
🇬🇷 🇺🇸 🇮🇱 🇭🇺 🇮🇸 🏳️ 🇮🇩 🇮🇪 🇮🇹 🇰🇿  <br />
🇹🇯 🇹🇯 🇹🇯 🇱🇻 🇱🇹 🇲🇰 🇲🇾 🇲🇹 🇲🇳 🏳️  <br />
🇳🇴 🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 🇷🇴 🇷🇺 🇷🇸 🇷🇸  <br />
🇸🇰 🇸🇮 🇪🇸 🇦🇷 🇲🇽 🇸🇪 🇰🇪 🇹🇷 🇺🇦 🇺🇿  <br />
🇺🇿 🇻🇳 🏴󠁧󠁢󠁷󠁬󠁳󠁿 <br />

KeyboardKit only includes localized strings, while KeyboardKit Pro unlocks localized keyboards, layouts, callouts and behaviors for all supported locales.



## Pro Features

[KeyboardKit][KeyboardKit] provides a free, open-source keyboard engine. KeyboardKit Pro unlocks more powerful pro features:

* 🌱 [Essentials][Essentials] - More essential tools, previews, toolbars, etc.
* ⌨️ [Essentials-KeyboardView][Essentials-KeyboardView] - Make the keyboard view do a lot more.
* 🤖 [AI][AI] - Features that are needed for AI.
* 📱 [App][App] - App-specific screens & views.
* 💡 [Autocomplete][Autocomplete] - Local & remote autocomplete, next word prediction, etc.
* 🗯 [Callouts][Callouts] - Localized callout actions for all supported locales.
* 🎤 [Dictation][Dictation] - Dictate text from the keyboard.
* 😀 [Emojis][Emojis] - A powerful emoji keyboard, search, etc.
* ⌨️ [External][External] - Auto-detect if an external keyboard is connected. 
* 🏠 [Host][Host] - Identify and open specific host applications.
* 📝 [Input][Input] - Keyboard input fields, Vietnamese support, etc.
* 🔣 [Layout][Layout] - More input sets and layouts for all supported locales.
* 🌐 [Localization][Localization] - Services & views for all supported locales.
* 👁 [Previews][Previews] - Keyboard & theme previews for in-app use.
* 📄 [Proxy][Proxy] - Allow `UITextDocumentProxy` to read the full document.
* 🍭 [Themes][Themes] - A theme engine with many pre-defined themes.



## Documentation

The [online documentation][Documentation] has a thorough getting-started guide, a detailed article for each feature, code samples, etc. You can also build it from the source code to get better formatting.



## Demo App

The [main repository][KeyboardKit] has a demo app that shows how to set up the main keyboard app, show keyboard status, provide in-app settings, link to system settings, apply custom styles, etc.

The app has two keyboards - a `Keyboard` that uses KeyboardKit and a `KeyboardPro` that uses KeyboardKit Pro.

> [!IMPORTANT]
> The demo isn't code signed and can therefore not use an App Group to sync settings between the app and its keyboards. As such, the `KeyboardPro` keyboard has keyboard settings in the keyboard as well.



## KeyboardKit App

Download the [KeyboardKit app][KeyboardKit-App] from the App Store to try KeyboardKit without having to write any code or build the demo app from Xcode.



## Contact

KeyboardKit Pro is developed by Swedish company Kankoda.

* Website: [keyboardkit.com][Website]
* E-mail: [info@keyboardkit.com][Email]
* Bluesky: [@keyboardkit.bsky.social][Bluesky]
* Mastodon: [@keyboardkit@techhub.social][Mastodon]

Feel free to reach out if you have any questions or feedback, or if you need support.



## Commercial License

This package requires a license to be used. You can sign up on the [product website][Website] or the [Gumroad store][Gumroad].



[Email]: mailto:info@keyboardkit.com
[Website]: https://keyboardkit.com
[Bluesky]: https://bsky.app/profile/keyboardkit.bsky.social
[Mastodon]: https://techhub.social/@keyboardkit
[Sponsors]: https://github.com/sponsors/danielsaidi

[About]: https://keyboardkit.com/about
[Gumroad]: https://kankoda.gumroad.com
[KeyboardKit-App]: https://keyboardkit.com/app

[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
[Pro]: https://github.com/KeyboardKit/KeyboardKitPro
[Documentation]: https://keyboardkit.github.io/KeyboardKitPro/
[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE

[Getting-Started]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/getting-started-article
[Essentials]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials-article
[Essentials-KeyboardView]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials-keyboardview
[Essentials-Memory-Management]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/essentials-memory-management

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
[Input]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/input-article
[Layout]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/layout-article
[Localization]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/localization-article
[Navigation]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/navigation-article
[Previews]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/previews-article
[Proxy]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/proxy-article
[Settings]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/settings-article
[Status]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/status-article
[Styling]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/styling-article
[Themes]: https://keyboardkit.github.io/KeyboardKitPro/documentation/keyboardkitpro/themes-article
