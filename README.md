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

KeyboardKit Pro is a license-based plug-in that unlocks more locales and pro features.



## Getting a Pro License

KeyboardKit Pro requires a commercial license.

More information about pricing and tiers can be found [here][Licenses].



## Features


### 🏳️‍🌈 Locales

KeyboardKit Pro adds support for more keyboard locales:

* 🇺🇸 English (US - Default)

* 🇩🇰 Danish
* 🇳🇱 Dutch
* 🇬🇧 English (UK)
* 🇪🇪 Estonian
* 🇫🇮 Finnish
* 🇫🇷 French
* 🇩🇪 German
* 🇮🇹 Italian
* 🇱🇻 Latvian
* 🇱🇹 Lithuanian
* 🇳🇴 Norwegian
* 🇪🇸 Spanish
* 🇸🇪 Swedish

The number of available locales is based on your [license tier][Licenses].


### 💡 Autocomplete

KeyboardKit Pro adds an autocomplete engine that supports all keyboard localse, as well as a web-based provider that fetches autocomplete suggestions from a remote, configurable data source. 

[Read more here][Autocomplete]


### 🔤 Input Sets

KeyboardKit Pro adds locale-specific input sets for all locales above.

The correct input set will automatically be enabled when you change the keyboard locale.


### 🗯 Secondary Actions

KeyboardKit Pro adds locale-specific secondary callout actions for all locales above.

The correct actions will automatically be enabled when you change the keyboard locale.



## Installation

### Swift Package Manager

KeyboardKit Pro only supports Swift Package Manager.

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

KeyboardKit Pro only needs to be added to the main app target.



## Getting started

Before you can use KeyboardKit Pro, you need to install it and obtain a license:

* Obtain a [KeyboardKit Pro license][Licenses].
* Install KeyboardKit as described [in the main repo][KeyboardKit].
* Install KeyboardKitPro alongside KeyboardKit, as described above.

KeyboardKit Pro can now be setup with a single line of code:

* For keyboard extensions, call `setupPro(withLicenseKey:view:)` instead of `setup(with:)`. 
* You can also use `setupPro(withLicenseKey:)` if you don't want to provide a keyboard view.
* For applications, where `setupPro` is not available, use `KeyboardKitLicense.register(licenseKey:)` instead.
* All these functions are throwing and must be called with `try` or `try?`. When they fail, they throw a `LicenseError`.

After registering a valid license, you can inspect the license details with `KeyboardKitLicense.current`.

Registering a Pro license will setup Pro features that your license includes, e.g. a real autocomplete suggestion provider and the supported locales. You can then use any features that your license includes in any way you like.

`IMPORTANT` Failure to call `setupPro` before accessing pro features, or attempting to use features that are not included in your license, will cause the extension to show a warning and then crash.


## Contact

Feel free to reach out if you have questions or feedback:

* E-mail: [daniel.saidi@gmail.com][Email]
* Twitter: [@keyboardkitapp][Twitter]
* Web site: [getkeyboardkit.com][Website]


## License

KeyboardKit Pro is closed source. See the `LICENSE` file for more info.



[Autocomplete]: https://github.com/KeyboardKit/KeyboardKit/blob/master/readmes/Autocomplete.md
[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit

[Email]: mailto:daniel.saidi@gmail.com
[Twitter]: http://www.twitter.com/keyboardkitapp
[Website]: https://getkeyboardkit.com
[Licenses]: https://getkeyboardkit.com/pro
