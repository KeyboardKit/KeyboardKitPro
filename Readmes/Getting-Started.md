# Getting started

Once KeyboardKit is added to your project, you need to obtain a license before you can start using it in your application and extension.



## How to obtain a license

KeyboardKit Pro requires a commercial license. The [KeyboardKit website][Licenses] website has information about license price, tiers, features etc. 



## How to use KeyboardKit

You can use KeyboardKit in different ways in various app targets:

* Keyboard extensions can use KeyboardKit to create more powerful keyboards.
* Main apps can use KeyboardKit to check if a keyboard is enabled, has full access etc.
* Main apps can create KeyboardKit-based input controllers and use them for its text fields.
* Other targets can use KeyboardKit to build upon its functionality.

Other platforms, such as macOS, watchOS and tvOS can use KeyboardKit as well, even though creating custom keyboards on those platforms may not be the most common use-case.



## How to setup KeyboardKit Pro 

In your extension, let `KeyboardViewController` inherit `KeyboardInputViewController` instead of `UIInputViewController`. This gives it access to additional functionality like new lifecycle functions, properties like `keyboardContext`, services like `keyboardActionHandler` etc.

The controller will call `viewWillSetupKeyboard()` when the keyboard should be created or re-created. Instead of `setup(with:)`, use `setup(withLicenseKey:view:)` to setup KeyboardKit Pro with any `SwiftUI` view:

```swift
func viewWillSetupKeyboard() {
    super.viewWillSetupKeyboard()
    setupPro(withLicenseKey: "your-key", view: MyKeyboardView())
}
```

This will make the provided view the main view of the keyboard extension, and cause the extension to resize to fit the view content. It will also inject all observable controller properties as environment objects into the view hierarchy.

If you want to setup pro without setting up a view, you can just use `setupPro(withLicenseKey:)` instead:

```swift
func viewWillSetupKeyboard() {
    super.viewWillSetupKeyboard()
    setupPro(withLicenseKey: "your-key")
    // Then setup your view whenever and however you want
}
```

It's important that the view you use observes the global `keyboardContext`, either by using the injected environment object or by setting it up as an observed object, otherwise it will be unresponsive to context changes. If your view doesn't react when you tap the shift or numeric key, that is most probably the cause.



## More on licenses

Registering a valid license will setup the Pro features that the license includes, e.g. locales, autocomplete etc. You can then use all features that the license includes. Failure to register a license before accessing Pro features will cause features to throw a `LicenseError`.


### How to register a license without a controller

App targets that don't use an input controller and don't have the `setupPro` functions, can use `License.register(licenseKey:)` instead.


### How to access your license

After registering a valid license as described above, you can use the static `License.current` property to inspect your license information.


### How to reconfigure your license

Registering a valid license will cause KeyboardKit to configure your application and extension according to the license configuration. If you want to use a different setup, you can reconfigure KeyboardKit after registering a valid license. Have a look at the demo app for examples.



## Going further

Have a look in the documentation for more articles on how to configure KeyboardKit, create your own service implementations etc. You can also have a look at the demo apps, which replace many services with demo-specific implementations.



[Licenses]: https://getkeyboardkit.com/pro
