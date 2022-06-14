# KeyboardKit Pro

<p align="center">
    <img src ="Resources/Logo.png" width=600 />
</p>

<p align="center">
    <img src="https://img.shields.io/github/v/release/KeyboardKit/KeyboardKit?color=%2300550&sort=semver" alt="Version" />
    <img src="https://img.shields.io/cocoapods/p/KeyboardKit.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-5.5-orange.svg" alt="Swift 5.5" />
    <img src="https://img.shields.io/github/license/KeyboardKit/KeyboardKit" alt="Closed-Source License" />
    <a href="https://twitter.com/getkeyboardkit">
        <img src="https://img.shields.io/badge/contact-@getkeyboardkit-blue.svg?style=flat" alt="Twitter: @getkeyboardkit" />
    </a>
</p>


## About KeyboardKit Pro

[KeyboardKit][KeyboardKit] helps you build custom keyboard extensions with Swift and SwiftUI. It extends the native keyboard APIs and provides you with a lot more functionality than is otherwise available. 

The end result can look something like this...or entirely different:

<p align="center">
    <img src ="https://github.com/KeyboardKit/KeyboardKit/blob/master/Resources/Demo.gif?raw=true" width="300" />
</p> 

KeyboardKit Pro extends KeyboardKit with pro features, such as localized services, autocomplete services and more views. It requires a [commercial license][Licenses] to be used.



## Supported Platforms

KeyboardKit Pro supports `iOS 13`, `macOS 11`, `tvOS 13` and `watchOS 6`.

Although KeyboardKit Pro builds on all platform, some features are unavailable on some platforms. 



## Installation

KeyboardKit Pro is installed with the Swift Package Manager.

```
https://github.com/KeyboardKit/KeyboardKitPro.git
```

KeyboardKit Pro only needs to be added to the main app target.

`IMPORTANT` From KeyboardKit 6.0, KeyboardKit Pro is standalone. This means that it's no longer a plugin that requires KeyboardKit, but rather a standalone library that contains both the core library as well as Pro features.



## Getting started

Once KeyboardKit Pro is added to your project, you need to obtain a license before you can start using it in your application and keyboard extension.

[Read more here][Getting-Started]



## Documentation

The KeyboardKit Pro documentation contains extensive information, code examples etc. and makes it easy to overview the various parts of the library.

You can [download][Documentation] the documentation and open it directly in Xcode.



## 🇸🇪 Localization

KeyboardKit is localized in 50 keyboard-specific locales:

🇺🇸 🇦🇱 🇦🇪 🇧🇾 🇧🇬 🇦🇩 🇭🇷 🇨🇿 🇩🇰 🇳🇱 <br />
🇧🇪 🇬🇧 🇺🇸 🇪🇪 🇫🇴 🇵🇭 🇫🇮 🇫🇷 🇧🇪 🇨🇭 <br />
🇬🇪 🇩🇪 🇦🇹 🇨🇭 🇬🇷 🇭🇺 🇮🇸 🇮🇪 🇮🇹 🇹🇯 <br />
🇱🇻 🇱🇹 🇲🇰 🇲🇹 🇲🇳 🇳🇴 🇮🇷 🇵🇱 🇵🇹 🇧🇷 <br />
🇷🇴 🇷🇺 🇷🇸 🇷🇸 🇸🇰 🇸🇮 🇪🇸 🇸🇪 🇹🇷 🇺🇦

[Read more in the main repo][KeyboardKit]



## Features

KeyboardKit and KeyboardKit Pro comes packed with features. Checkout the [main repo][KeyboardKit] for core features and the list below for Pro features.


### 💡 Autocomplete

KeyboardKit Pro adds an autocomplete engine that supports all locales above. It also has an external autocomplete engine that fetches suggestions from a remote web service or api. 


### 🔤 Input Sets

KeyboardKit Pro adds locale-specific input sets for all locales above.


### 🗯 Secondary Actions

KeyboardKit Pro adds locale-specific secondary callout actions for all locales above.


### 🖼 Views

KeyboardKit Pro adds additonal views that simplifies building greater keyboard apps.



## Contact

Feel free to reach out if you have questions or if you want to contribute in any way:

* E-mail: [info@getkeyboardkit.com][Email]
* Twitter: [@getkeyboardkit][Twitter]
* Website: [getkeyboardkit.com][Website]


## Sponsors and Clients

This project is proudly sponsored by the following companies:

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

KeyboardKit is free, but please consider sponsoring the project if you find it useful. You can support KeyboardKit through [GitHub Sponsors][Sponsors], by signing up for a Pro license, paying for support, donations etc.


## License

KeyboardKit Pro is closed source. See the [LICENSE][License] file for more info.



[Email]: mailto:info@getkeyboardkit.com
[Twitter]: http://www.twitter.com/getkeyboardkit
[Website]: https://getkeyboardkit.com
[Licenses]: https://getkeyboardkit.com/pro
[Sponsors]: https://github.com/sponsors/danielsaidi
[KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit

[Documentation]: https://github.com/danielsaidi/Documentation/blob/main/Docs/KeyboardKitPro.doccarchive.zip?raw=true
[License]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/LICENSE

[Autocomplete]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/Readmes/Autocomplete.md
[Getting-Started]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/Readmes/Getting-Started.md
[Views]: https://github.com/KeyboardKit/KeyboardKitPro/blob/master/Readmes/Views.md
