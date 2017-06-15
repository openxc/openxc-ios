# OpenXC-iOS-Framework
This framework is part of the OpenXC project. This iOS framework contains the tools required to read vehicle data from the vehicle's CAN bus through the OpenXC vehicle interface in any iOS application.

OpenXC iOS framework for use with the C5 BLE device. See also the [openxc-ios-app-demo](https://github.com/openxc/openxc-ios-app-demo)

##Supported versions:
* iOS - upto 10.3.2
* XCode - upto 8.2.1
* Swift - Swift3


## Building from XCode

Make sure you have XCode8 installed with iOS10 to build it from XCode. This framework must be included in any iOS application that needs to connect to a VI

Refer to this [document](https://github.com/openxc/openxc-ios-framework/blob/master/OpenXC_iOS_Document.docx) for more details on installation and usage.

API usage details are available [here](https://github.com/openxc/openxc-ios-framework/blob/master/iOS%20Framework%20API%20Guide.pdf). 

Also see [Step by Step Guide] (https://github.com/openxc/openxc-ios-framework/blob/master/StepsToBuildOpenXCiOSFrameworkAndDemoApp.docx) to build framework. 


## Tests
* to be added


## Building from Command Line
The project requires XCode, XCode command line tools installed. 

To install XCode command line tools, follow these steps for XCode7:

* Launch XCode
* Go to Preferences - Locations - Command Line Tools - Install


## Releasing the App and Library

* Update CHANGELOG.mkd
* Merge into master push to GitHub
* Travis CI will take care of the rest.



## Contributing

Please see our [Contribution Documents] (https://github.com/openxc/openxc-ios-framework/blob/master/CONTRIBUTING.mkd)

## License
Copyright (c) 2016 Ford Motor Company
Licensed under the BSD license.
