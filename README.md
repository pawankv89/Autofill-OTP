# Autofill-OTP

## Autofill-OTP working on UITextfield with Type oneTimeCode. 

Added Some screens here.

![](https://github.com/pawankv89/Autofill-OTP/blob/master/images/screen_1.PNG)
![](https://github.com/pawankv89/Autofill-OTP/blob/master/images/screen_2.PNG)
![](https://github.com/pawankv89/Autofill-OTP/blob/master/images/screen_3.PNG)

## Usage

### AutoFill OTP must your message contains "code", "otp" this type of keyword. 

``` swift 

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

@IBOutlet weak var otptextField: UITextField!

override func viewDidLoad() {
super.viewDidLoad()
otptextField.delegate = self

if #available(iOS 12.0, *) {
otptextField.textContentType = .oneTimeCode
} else {
// Fallback on earlier versions
}
}
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
otptextField.resignFirstResponder()
return true
}
}


```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
