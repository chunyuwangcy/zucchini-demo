# Zucchini demo project
This project features a working example of a Zucchini feature, screenshot assertions, custom step definitions and more complex cases of screen elements lookup.

## Requirements
* [Zucchini](https://github.com/zucchini-src/zucchini#requirements)
* Apple's sample [CoreDataBooks](http://developer.apple.com/library/ios/samplecode/CoreDataBooks/CoreDataBooks.zip) application

## Running on your device
 
1. Compile the CoreDataBooks application onto your device.
2. Add your device to `features/support/config.yml`.  
You can use the [udidetect](https://github.com/vaskas/udidetect) tool with `udidetect -z` to extract the UDID. 

Run the features with:

```
ZUCCHINI_DEVICE='Your device name' zucchini run features/
```

## Running on the iOS Simulator

1. Compile the CoreDataBooks application onto the Simulator.
2. Find where the app has been build to (steps [one](http://www.zucchiniframework.org/i/demo/1_xcode_location.png), [two](http://www.zucchiniframework.org/i/demo/2_derived_data.png), [three](http://www.zucchiniframework.org/i/demo/3_copy_path.png)).
3. Edit `features/support/config.yml` and paste the path under `app:`, followed by `CoreDataBooks.app`, e.g.

```
app: /Users/Your-Name/Library/Developer/Xcode/DerivedData/CoreDataBooks-some-long-string/Build/Products/Debug-iphonesimulator/CoreDataBooks.app

devices:
  iOS Simulator:
    screen: retina_ios6 
  ...
 ```
 
Run the features with:

```
zucchini run features/
```

## See also

* [Zucchini features on the inside](https://github.com/zucchini-src/zucchini/wiki/Features-on-the-inside)
* [Automated iOS Testing with Zucchini](http://www.jacopretorius.net/2013/04/automated-ios-testing-with-zucchini.html) - a friendly tutorial by [@Jaco-Pretorius](https://github.com/Jaco-Pretorius)
