#  Installation

KeyboardKit Pro can be installed with Swift Package Manager, or by manually adding the framework to your project.

Since KeyboardKit Pro is distributed as a framework, which keyboard extensions can't contain, both approaches require additional setup. Failing to follow the steps below will cause either your keyboard extension to crash or App Store distribution to fail.


## Add KeyboardKit

You need [KeyboardKit][KeyboardKit] to be able to run KeyboardKit Pro. Just follow [these instructions][KeyboardKitInstallation] to add it to your keyboard and/or app. 

You can then proceed with adding KeyboardKit Pro, either manually or with SPM.


## Manual Installation

* Grab the `KeyboardKitPro.xcframework` file from the repository's `Sources` folder, or get it in another way.
* Drag the framework to your project's `Framework` group. 
* Add the framework to **both** the app and the keyboard extension.
* For the app, mark the framework as `Embed & Sign`.
* For the keyboard, mark the framework as `Do not embed`.
* Follow the final steps further down.


## Swift Package Manager

* Add `https://github.com/KeyboardKit/KeyboardKitPro.git` to the **app**, not the keyboard! 
* After SPM has finished syncing, expand `KeyboardKitPro/Referenced Binaries` under `Swift Package Dependencies`.
* Drag `KeyboardKitPro.xcframework` to your project's `Framework` group. 
* Add the framework to the **keyboard**, not the app!
* For the keyboard, mark the framework as `Do not embed`.
* Add the script below, then follow the final steps further down.

Due to a bug in Xcode/SPM, App Store distribution will fail since the framework is added twice, both to `Frameworks` and to `Plugins` .

To fix this, we must add a bottomost `Run Script` build phase to the **app**, not the keyboard:

```
COUNTER=0
while [ $COUNTER -lt "${SCRIPT_INPUT_FILE_COUNT}" ]; do
    tmp="SCRIPT_INPUT_FILE_$COUNTER"
    FILE=${!tmp}

    echo "Removing $FILE"
    rm -rf "$FILE"
    let COUNTER=COUNTER+1
done
```

Use `$(BUILT_PRODUCTS_DIR)/$(PLUGINS_FOLDER_PATH)/KeyboardKitPro.framework` as the script's `Input Files`. 

This will make the build remove the duplicated framework in the `Plugins` folder. This fixes the App Store distribution error.


## Final steps

We have fixed so that the Framework is not embedded in the extension. This will remove the `disallowed files` error during App Store distribution. 

However, this will instead cause the keyboard extension to crash, since it no longer has access to the framework at runtime.

To fix this, add `@executable_path/Frameworks @executable_path/../../Frameworks` to the extension's  `Runpath Search Paths`. 

This will makes the extension use the app's embedded framework, instead of expecting the framework to be enbedded in the extension. This will solve both the crash and the App Store distribution. 

You should now be able to `import KeyboardKit` and `KeyboardKitPro` into your keyboard extension and setup pro features as described in the main readme.


## Troubleshooting

If you have any problems getting this to work, [see this page][Troubleshooting] for more help.


## Further reading:

* [https://forums.swift.org/t/swift-package-binary-framework-issue/41922](https://forums.swift.org/t/swift-package-binary-framework-issue/41922)




* [KeyboardKit]: https://github.com/KeyboardKit/KeyboardKit
* [KeyboardKitInstallation]: https://github.com/KeyboardKit/KeyboardKit#installation

* [Readme]: https://github.com/KeyboardKit/KeyboardKit/blob/master/README.md
* [Troubleshooting]: https://github.com/KeyboardKit/KeyboardKit/blob/master/Readmes/Troubleshooting.md
