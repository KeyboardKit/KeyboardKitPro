# Getting started

Once KeyboardKit is added to your project, you need to obtain a license before you can start using it in your application.


## How to obtain a license

You can purchase a commercial license from the [KeyboardKit website][Licenses]. The website contains all information about price, tiers, features etc. 


## How to use KeyboardKit Pro

You can use KeyboardKit Pro in both your main application and your keyboard extension:

* The main app can use KeyboardKit Pro's views to show if a keyboard is enabled, if full access is granted etc.
* The keyboard extension can use KeyboardKit Pro to unlock more functionality than is available in KeyboardKit.

For instance, KeyboardKit Pro unlocks localized services that make the `SystemKeyboard` support all keyboard locales, complete with the correct keyboard layouts, autocomplete, callout actions etc.  


## How to setup KeyboardKit Pro 

After setting up KeyboardKit and obtaining a license, you are ready to extend KeyboardKit with KeyboardKit Pro:

First make sure that you have installed both KeyboardKit and KeyboardKit Pro and that you import the libraries in all files where you need them.

KeyboardKit Pro can now be setup with a single line of code:

* For keyboard extensions, call `setupPro(withLicenseKey:view:)` instead of `setup(with:)`. 
* For keyboard extensions, you can also use `setupPro(withLicenseKey:)` if you don't want to provide a view.
* For applications, where `setupPro` is not available, use `KeyboardKitLicense.register(licenseKey:)` instead.
* All these functions are throwing and must be called with `try` or `try?`. When they fail, they throw a `LicenseError`.

Registering a valid license will setup Pro features that the license includes, e.g. supported locales, autocomplete engines etc. You can then use any features that your license includes in any way you like.

Failure to register the license before accessing Pro features will result in initializers or functions throwing a `LicenseError`.


## How to inspect your license

After registering a valid license as described above, you can inspect it with `KeyboardKitLicense.current`.


## Configuration

Registering a valid license will cause KeyboardKit Pro to configure your application and extension according to the license configuration.

If you want to use a different configuration, you can wait with configuring KeyboardKit until after registering a valid license.

Have a look at the demo app for more information.


[Licenses]: https://getkeyboardkit.com/pro
