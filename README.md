RMRUTValidator
==============

Simple class to validate chilean security number, also known as RUT.

## How to use?

1-. Download and add the `RMRUTValidator` class files to your XCode project.
2-. Import the `RMRUTValidator.h` file where you need to use it.

```objc
#import "RMRUTValidator.h"
```

3-. Then you validate a RUT like this:

```objc
if ([RMRUTValidator validateRut:@"19.200.923-5"]) {
  // Yay, the Rut is valid.
} else {
  // The rut is invalid. :(
}
```

Dots and dashes are stripped from the RUT string by default so, the following formats are all valid:

```objc
[RMRUTValidator validateRut:@"19.200.923-5"]
[RMRUTValidator validateRut:@"19200923-5"]
[RMRUTValidator validateRut:@"192009235"]
```
