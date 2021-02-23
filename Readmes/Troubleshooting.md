#  Troubleshooting

This file gathers some common problems that you may run into when building or distributing your keyboard extension:


## The keyboard extension crashes

This can be caused by a bunch of errors, for instance when referred frameworks aren't propery linked in an extension.

Have you linked KeyboardKit and KeybardKit Pro correctly? Try debugging the extension to see what happens.

Make sure to follow these [install instructions][Installation].



## A red warning appears

This happens when KeyboardKit Pro is setup with an incorrect license.

Make sure that the license is valid and that you use it with the correct bundle.



## App Store Distribution complains about "disallowed" files

This happens when an extension has embedded frameworks. 

Perhaps your keyboard extension embeds the `KeyboardKitPro.xcframework`?

Make sure to follow these [install instructions][Installation].



## App Store Distribution complains about a plugins folder

This happens when a framework is added to the app payload's `Plugins` folder.

For some reason, SPM duplicates the framework and puts a copy in this folder.  

Make sure to follow these [install instructions][Installation].



[Installation]: https://github.com/KeyboardKit/KeyboardKit/blob/master/readmes/Installation.md 
