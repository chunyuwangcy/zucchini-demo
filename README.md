This is a demo project of Zucchini iOS visual testing framework.

## Running the demo on your device
 
  1. Download and compile Apple's sample [CoreDataBooks](http://developer.apple.com/library/ios/samplecode/CoreDataBooks/CoreDataBooks.zip) application onto your device.
  2. Add your device to features/support/config.yml. You can use the [udidetect](https://github.com/vaskas/udidetect) tool (`udidetect -z`) to grab the UDID. 
  3. Run it with `ZUCCHINI_DEVICE='<Your device name>' zucchini run zucchini-demo/features/`.

## Running the demo on the simulator

  1. Download and compile Apple's sample [CoreDataBooks](http://developer.apple.com/library/ios/samplecode/CoreDataBooks/CoreDataBooks.zip) application onto your device.
  2. Find where the app has been build to.  To do this, in XCode, go to preferences -> locations -> on the derived data, click the small arrow -> go to derived data folder -> go to coredatabooks.... folder -> Build -> products -> Debug-iphonesimulator -> right click on CoreDataBooks and show contents -> then highlight any file and press command+i -> then copy the whole path (after 'where').
  3. In the zucchini demo project, edit features/support/config.yml and paste the path after where it says 'app'.  Below you can see an example of what your config file should look like.
  4. Now go to the zucchini demo project and run the following command: `ZUCCHINI_DEVICE="iOS Simulator" zucchini run features`
  5. If you run into problems make sure you have coffee-script and imagemagick installed

```yaml
app: /Users/Your-Name/Library/Developer/Xcode/DerivedData/CoreDataBooks-some-long-string/Build/Products/Debug-iphonesimulator/CoreDataBooks.app

devices:
 iOS Simulator:
  screen: retina_ios5
 ``` 
