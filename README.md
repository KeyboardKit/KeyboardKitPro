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

[KeyboardKit][KeyboardKit] is a Swift library that helps you create custom keyboard extensions for `iOS` and `ipadOS`.

KeyboardKit Pro extends KeyboardKit with additional functionality that helps you create even better keyboards.

KeyboardKit Pro requires a license key. The pro license includes KeyboardKit Pro and access to pro consultation. 

For now, pro licenses requests are handled via [e-mail][Email].


## Installation

### Swift Package Manager

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

### CocoaPods

KeyboardKit Pro is distributed as an `XCFramework` and doesn't support CocoaPods.


## Getting started

KeyboardKit Pro can be setup with a single line of code:

* Install and setup KeyboardKit as described [in the main repo][KeyboardKit].
* Obtain a KeyboardKit Pro license key (for now via [e-mail][Email]).
* Install and `import KeyboardKitPro` alongside KeyboardKit.
* Instead of `setup(with:)`, call `setupPro(withLicenseKey:view:)`. 

You can also call `setupPro(withLicenseKey:)` to setup KeyboardKit Pro without a view.

`IMPORTANT` Failure to setup pro before accessing pro features, or setting up pro with an invalid license, will cause the extension to show a warning and crash. 


## Features

### 🏳️‍🌈 More Locales

KeyboardKit pro adds support for more locales:

* 🇺🇸 English (US)
* 🇩🇪 German
* 🇮🇹 Italian
* 🇸🇪 Swedish 

If you use a `SystemKeyboard` these locales will be supported right away.

New locales are added by demand. One new locale is offered free of charge for each new pro license.

### 🔤 Input Sets

KeyboardKit Pro adds input set providers for the above locales.

### 🗯 Callouts

KeyboardKit Pro adds secondary callout action providers for the above locales.


## Contact me

Feel free to reach out if you have questions or if you want to contribute in any way:

* E-mail: [daniel.saidi@gmail.com][Email]
* Twitter: [@danielsaidi][Twitter]
* Web site: [danielsaidi.com][Website]


## License

KeyboardKit Pro is closed source. See the `LICENSE` file for more info.


[Email]: mailto:daniel.saidi@gmail.com
[Twitter]: http://www.twitter.com/danielsaidi
[Website]: http://www.danielsaidi.com

[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
