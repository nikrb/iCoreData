swift example on ns core data:

http://jamesonquave.com/blog/core-data-in-swift-tutorial-part-1/

It's out of date now but best I found so far.
This repo contains fixes to make it work with xcode 7.2.1 ios 9.2. There are none of the 'fancy' bits, I simply print to console for proof of the pudding.

Note 
- The warning is because only one of the two defined view controllers (view and a table view) is hooked up per 'step' - just move the intial view arrow in storyboard.
- ViewController implements the first step, creating an entity and accessing it
- TableViewController implements persistence
