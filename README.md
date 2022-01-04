# KeyboardKit Pro

<p align="center">
    <img src ="Resources/Logo.png" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/cocoapods/p/KeyboardKit.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-5.3-orange.svg" alt="Swift 5.3" />
    <img src="https://img.shields.io/github/license/KeyboardKit/KeyboardKit" alt="MIT License" />
    <a href="https://twitter.com/danielsaidi">
        <img src="https://img.shields.io/badge/contact-@danielsaidi-blue.svg?style=flat" alt="Twitter: @danielsaidi" />
    </a>
</p>


## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] is a Swift library that helps you create custom keyboard extensions for `iOS` and `iPadOS`.  

KeyboardKit Pro is a license-based plug-in that extends KeyboardKit with more locales and pro features.

[Visit the KeyboardKit website][Licenses] for more information about the license and how to purchase one.



## Installation

KeyboardKit Pro can be installed with the Swift Package Manager:

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

KeyboardKit Pro only needs to be added to the main app target.



## Getting started

Before you can use KeyboardKit Pro, you need to install it and obtain a license:

* Obtain a license from the [KeyboardKit website][Licenses].
* Install KeyboardKit as described [in the main repo][KeyboardKit].
* Install KeyboardKitPro alongside KeyboardKit, as described above.

KeyboardKit Pro can now be setup with a single line of code:

* For keyboard extensions, call `setupPro(withLicenseKey:view:)` instead of `setup(with:)`. 
* For keyboard extensions, you can also use `setupPro(withLicenseKey:)` if you don't want to provide a view.
* For applications, where `setupPro` is not available, use `KeyboardKitLicense.register(licenseKey:)` instead.
* All these functions are throwing and must be called with `try` or `try?`. When they fail, they throw a `LicenseError`.

After registering a valid license, you can inspect the license details with `KeyboardKitLicense.current`.

Registering a Pro license will setup Pro features that your license includes, e.g. a real autocomplete suggestion provider and the supported locales. You can then use any features that your license includes in any way you like.



## Documentation

The [KeyboardKit Pro documentation][Documentation] contains structured information that makes it easy to overview the various parts of the library, see how the various parts connect to each other etc.

Just download the documentation, extract the zip file and double-tap the `doccarchive` file to view the documentation directly in Xcode.



## Features


### 🏳️‍🌈 Locales

KeyboardKit Pro adds completely localized keyboards for the following locales:

* 🇺🇸 English

* 🇦🇱 Albanian
* 🇦🇪 Arabic
* 🇩🇰 Danish
* 🇳🇱 Dutch
* 🇬🇧 English (UK)
* 🇺🇸 English (US)
* 🇪🇪 Estonian
* 🇫🇮 Finnish
* 🇫🇷 French
* 🇩🇪 German
* 🇮🇸 Icelandic
* 🇮🇹 Italian
* 🇹🇯 Kurdish Sorani
* 🇱🇻 Latvian
* 🇱🇹 Lithuanian
* 🇳🇴 Norwegian
* 🇮🇷 Persian
* 🇵🇱 Polish
* 🇷🇺 Russian
* 🇪🇸 Spanish
* 🇸🇪 Swedish
* 🇺🇦 Ukrainian

The number of available locales is based on your [license tier][Licenses].


### 💡 Autocomplete

KeyboardKit Pro adds an autocomplete engine that supports all for all locales above.

It also has a web-based engine that fetches suggestions from a remote, configurable data source. 

[Read more here][Autocomplete]


### 🔤 Input Sets

KeyboardKit Pro adds locale-specific input sets for all locales above.

The correct input set will automatically be enabled when you change the keyboard locale.


### 🗯 Secondary Actions

KeyboardKit Pro adds locale-specific secondary callout actions for all locales above.

The correct actions will automatically be enabled when you change the keyboard locale.


### 🖼 Views

KeyboardKit Pro adds additonal views that simplifies building greater keyboard apps.

* `AudioFeedbackToggleButton` can be used to toggle audio feedback on and off.
* `EnabledLabel` is can be used to show different views depending on a provided enabled state.
* `HapticFeedbackToggleButton` can be used to toggle haptic feedback on and off.
* `KeyboardActiveLabel` is can be used to present whether or not a keyboard extension is currently being used to edit a text field.
* `KeyboardEnabledLabel` is can be used to present whether or not a keyboard extension is enabled in System Settings.
* `ToggleToolbar` can be used to toggle between two toolbars.



## Contact

Feel free to reach out if you have questions or feedback:

* E-mail: [info@getkeyboardkit.com][Email]
* Twitter: [@getkeyboardkit][Twitter]
* Website: [getkeyboardkit.com][Website]



## License

KeyboardKit Pro is closed source. See the `LICENSE` file for more info.


[Email]: mailto:info@getkeyboardkit.com
[Twitter]: http://www.twitter.com/getkeyboardkit
[Website]: https://getkeyboardkit.com
[Licenses]: https://getkeyboardkit.com/pro

[Documentation]: https://github.com/KeyboardKit/KeyboardKitPro/raw/master/Docs/KeyboardKitPro.doccarchive.zip
[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit

[Autocomplete]: https://github.com/KeyboardKit/KeyboardKit/blob/master/readmes/Autocomplete.md
