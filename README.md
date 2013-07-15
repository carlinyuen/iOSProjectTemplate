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

License
-------
MIT

