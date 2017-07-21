RMRUTValidator
==============

<a href="http://twitter.com/home/?status=Thanks @renatomoya for making RMRUTValidator: https%3A%2F%2Fgithub.com%2Frenatomoya%2FRMRUTValidator"><img src="https://s3.amazonaws.com/github-thank-you-button/thank-you-button.png" alt="Say Thanks" /></a>

Simple class to validate chilean security number, also known as RUT.

## Requirements
This class works fine with iOS >= 9.0 and OS X >= 10.7 applications (ARC required, of course).

## Installation

### Manual

Download and add `RMRUTValidator.h` and `RMRUTValidator.m` files to your Xcode project.

### Cocoapods

Create the `Porfile` file in your Xcode project root directory with the following:

```ruby
platform :ios, '9.0'

pod 'RMRUTValidator'
```

Then run:

```bash
pod install
```

## How to use?

Import the `RMRUTValidator.h` file where you need to use it.

```objc
#import <RMRUTValidator/RMRUTValidator.h>
```

Then you validate a RUT like this:

```objc
if ([RMRUTValidator validateRut:@"19.200.923-5"]) {
  // Yay, the Rut is valid.
} else {
  // The rut is invalid. :(
}
```

Dots and hyphen are stripped from the RUT string by default so, the following formats are all valid:

```objc
[RMRUTValidator validateRut:@"19.200.923-5"]
[RMRUTValidator validateRut:@"19200923-5"]
[RMRUTValidator validateRut:@"192009235"]
```
