iOSProjectTemplate
==================

Organized, clean, boilerplate template for my iOS Xcode projects.
Keywords: ios, xcode, template, boilerplate, project, organization

I break things into the following folders to simplify and try to organize things
in a reasonable manner:

  * (any app icons & launch images, because if you drag a new one in, it gets
	  copied to this location anyway)
  * Project Root Folder
    * AppDelegate.h/.m
    * AppViewController.h/.m (root controller)
    * Constants.h/.m (according to best practices)
    * Functions.h (useful utility functions)
    * Libraries (any third party libraries you might use)
    * Models (self-explanatory, according to MVC pattern)
    * Resources
      * images (all lumped in one big folder, I find it easier to manage & update)
      * fonts
    * Supporting Files (the plist, .pch, main.m, default system files, etc.)
    * Views & Controllers (I find it easier to navigate & manage this way)

Feel free to take it & use it if you find it useful / like the style.

### Usage

To use, copy and paste the folder to wherever you want it. Then follow the steps
to rename your Xcode project without messing everything up:

 1. Rename the folder that contains the entire project (including the .xcodeproj)
 2. DO NOT rename the .xcodeproj file yourself, open up the project and rename in Xcode.
 3. Rename the Scheme by going to Manage Schemes to select and rename.

That should be about it! This will rename all the appropriate files necessary to
build and run your project as needed. The Project root folder will not be
renamed though, as a caveat.

License
-------
MIT

