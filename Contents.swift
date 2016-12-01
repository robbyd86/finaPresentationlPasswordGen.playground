import UIKit


/*This program will generate various password types
 *Work password (DMI) must be exactly 8 characters (no more, no less). It must include at least one number, one letter, and one of the following symbols: @#$
 *The other passwords demonstrated here include all available symbols, or no symbols (a few banking apps I've used won't accept symbols)
 */

/*types of password criteria strings to use
 let numPassword : NSString = "0123456789"
 let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 let symPassword : NSString = "@#$"
 let allsymPassword : NSString = "!@#$%^&*()_+{}[]"
 let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"
 let anyRandom : NString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
 let anyNoSymbol : NSSring = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
 let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
 */

//below are global variables, declaring and initiating here to be changed later
 var DmiPassword:String = "" //empty string to be initiated in functions
 var anySymbolPassword:String = ""
 var noSymbolPassword:String = ""
 var Array:[Int] = [0] //used later to hold password functions as arrays and randomize


class Password
{
 /*************************************** Start of string randomizing functions *************************************************
*each function in this group will randomize the order of different strings created for different password criteria
*later the strings will be converted into arrays, and the order randomized again*/
    
    //any character for work
    func randomPasswordWithLength (len : Int) -> NSString
    {
        
        let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"
        
        
        var randomPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (password.length)
            var rand = arc4random_uniform(length)
            randomPassword.appendFormat("%C", password.characterAtIndex(Int(rand)))
        }
        return randomPassword
    }
   //end of function randomPasswordWithLength
 
 //any character for conventional passwords
    func randomAnyRandomWithLength (len : Int) -> NSString
    {
 
    let anyRandom : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+{}[]"
 
 
    var randomAnyRandom : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (anyRandom.length)
        var rand = arc4random_uniform(length)
        randomAnyRandom.appendFormat("%C", anyRandom.characterAtIndex(Int(rand)))
        }
        return randomAnyRandom
    }
    //end of function randomAnyRandomWithLength
 
 //any character without a symbol
    func randomNoSymbolWithLength (len : Int) -> NSString
    {
 
    let noSymbolPassword : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
 
 
    var randomNoSymbol : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (noSymbolPassword.length)
        var rand = arc4random_uniform(length)
        randomNoSymbol.appendFormat("%C", noSymbolPassword.characterAtIndex(Int(rand)))
        }
        return randomNoSymbol
    }
    //end of function randomNoSymbolWithLength
 
    //any number
    func randomNumPasswordWithLength (len : Int) -> NSString
    {
 
        let numPassword : NSString = "0123456789"
        
        
        var randomNumPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (numPassword.length)
            var rand = arc4random_uniform(length)
            randomNumPassword.appendFormat("%C", numPassword.characterAtIndex(Int(rand)))
        }
        return randomNumPassword
    }
    //end of function randomNumPasswordWithLength
    
    //any capital
    func randomCapPasswordWithLength (len : Int) -> NSString
    {
        
        let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        
        var randomCapPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (capPassword.length)
            var rand = arc4random_uniform(length)
            randomCapPassword.appendFormat("%C", capPassword.characterAtIndex(Int(rand)))
        }
        return randomCapPassword
    }
    //end of function randomCapPasswordWithLength
    
    //any symbol for work
    func randomSymPasswordWithLength (len : Int) -> NSString
    {
        
        let symPassword : NSString = "@#$"
        
        
        var randomSymPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (symPassword.length)
            var rand = arc4random_uniform(length)
            randomSymPassword.appendFormat("%C", symPassword.characterAtIndex(Int(rand)))
        }
        return randomSymPassword
    }
    //end of function randomSymPasswordWithLength
 
    //any symbol
    func randomAllSymPasswordWithLength (len : Int) -> NSString
    {
 
    let allSymPassword : NSString = "!@#$%^&*()_+{}[]"
 
 
    var randomAllSymPassword : NSMutableString = NSMutableString(capacity: len)
 
    for (var i=0; i < len; i += 1)
        {
        var length = UInt32 (allSymPassword.length)
        var rand = arc4random_uniform(length)
        randomAllSymPassword.appendFormat("%C", allSymPassword.characterAtIndex(Int(rand)))
        }
    return randomAllSymPassword
    }
 //end of function randomAllSymPasswordWithLength
 
    //any lowercase
    func randomLowPasswordWithLength (len : Int) -> NSString
    {
 
        let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
        
        
        var randomLowPassword : NSMutableString = NSMutableString(capacity: len)
        
        for (var i=0; i < len; i += 1)
        {
            var length = UInt32 (lowPassword.length)
            var rand = arc4random_uniform(length)
            randomLowPassword.appendFormat("%C", lowPassword.characterAtIndex(Int(rand)))
        }
        return randomLowPassword
    }
    //end of function randomLowPasswordWithLength
 
 /******************************************* End of randomizing string functions *************************************************/
 /******************************************* Start of generating functions *************************************************
 * The below functions take the strings from the above functions, and convert them into arrays so the order can be further randomized
 * This is important, because otherwise the type (symbol, number, etc) would always be in the same place within the password
     -for example, if the I made the symbol in the 6th position, it would always be there no matter what, which isn't completely random
*/
 
 func generateDmiPassword()
 {
 var n = 8 //this represents the counter/length of password in this case
    Array = [0, 0, 0, 0, 1, 2, 3, 4] //each array element will correspond to the type of password criteria is needed
    //this is outlined below in the switch statement
    
 while(Array.count != 0) //will run until no contents left in array
    {
    var randnum = Int(arc4random_uniform(UInt32(n)))
    var num = Array[randnum]
 
    switch (num)
        {
        case 0:
        DmiPassword += String(randomPasswordWithLength(1))
        //this gives us any possible character
        case 1:
        DmiPassword += String(randomNumPasswordWithLength(1))
        //this will give us any number, which we need at least one of
        case 2:
        DmiPassword += String(randomLowPasswordWithLength(1))
        //this will give us any lowercase letter, which we need at least one of
        case 3:
        DmiPassword += String(randomCapPasswordWithLength(1))
        //this will give us any uppercase letter, which technically we don't need, but I threw it in there
        case 4:
        DmiPassword += String(randomSymPasswordWithLength(1))
        //this will give us any symbol for work password (@#$), which we need at least one of
        default:
        print("error")
        //this shouldn't ever happen, but if we entered a 5 or something into our array, then we would get an error and realize we made a mistake
        }
    Array.removeAtIndex(randnum)//if statements?
    n -= 1
    }
 }
 //end of generateDmiPassword function
 
 func generateAnySymbolPassword()
 {
 var n = 10 //this represents the counter/length of password in this case
 Array = [0, 0, 0, 0, 0, 0, 1, 2, 3, 4]//this is reloaded with 10 elements to get a different type of password
 while(Array.count != 0) //will run until no contents left in array
    {
    var randnum = Int(arc4random_uniform(UInt32(n)))
    var num = Array[randnum]
 
    switch (num)
        {
        case 0:
        anySymbolPassword += String(randomAnyRandomWithLength(1))
        case 1:
        anySymbolPassword += String(randomNumPasswordWithLength(1))
        case 2:
        anySymbolPassword += String(randomLowPasswordWithLength(1))
        case 3:
        anySymbolPassword += String(randomCapPasswordWithLength(1))
        case 4:
        anySymbolPassword += String(randomSymPasswordWithLength(1))
        default:
        print("error")
        }
    Array.removeAtIndex(randnum)//if statements?
    n -= 1
    }
 }
 //end of generateAnySymbolPassword function
 
 func generateNoSymbolPassword()
 {
 var n = 10 //this represents the counter/length of password in this case
 Array = [0, 0, 0, 0, 0, 0, 0, 1, 2, 3]
 while(Array.count != 0) //will run until no contents left in array
 {
 var randnum = Int(arc4random_uniform(UInt32(n)))
 var num = Array[randnum]
 
 switch (num)
 {
 case 0:
 noSymbolPassword += String(randomNoSymbolWithLength(1))
 case 1:
 noSymbolPassword += String(randomNumPasswordWithLength(1))
 case 2:
 noSymbolPassword += String(randomLowPasswordWithLength(1))
 case 3:
 noSymbolPassword += String(randomCapPasswordWithLength(1))
 default:
 print("error")
 }
 Array.removeAtIndex(randnum)//if statements?
 n -= 1
 }
 }
 //end of generateNoSymbolPassword function
 
 /***************************************** End of generating functions *************************************************/
 /***************************************** Start of Multiple Password functions ************************************************
 * These functions will print out multiple passwords of each type
 * the second number in each for loop represents the number of passwords to be generated
 */
 
 func multipleDmiPassword()
 {
 for _ in 1...7 /* <- change the second number to print the amount of passwords you want */
    {
    DmiPassword = ""
    Array = [0, 0, 0, 0, 1, 2, 3, 4]
    generateDmiPassword()
    print("Work Password: \(DmiPassword)")
    }
 }
 //end of multiplePassword function
 
 func multipleAnySymbolPassword()
 {
 for _ in 1...5 /* <- change the second number to print the amount of passwords you want */
    {
    anySymbolPassword = ""
    Array = [0, 0, 0, 0, 0, 0, 1, 2, 3, 4]
    generateAnySymbolPassword()
    print("Password With Symbol: \(anySymbolPassword)")
    }
 }
 //end of multipleAnySymbolPassword function
 
 func multipleNoSymbolPassword()
 {
 for _ in 1...5 /* <- change the second number to print the amount of passwords you want */
 {
 noSymbolPassword = ""
 Array = [0, 0, 0, 0, 0, 0, 0, 1, 2, 3]
 generateNoSymbolPassword()
 print("Password With No Symbol: \(noSymbolPassword)")
 }
 }
 //end of multipleAnySymbolPassword function
 
}
/******** end of class **********************************************/


//print the passwords

print("This is a demo generator for BKFS Passwords")

let newDmiPassword = Password()//new instance of the password class
newDmiPassword.generateDmiPassword() //this calls the generate function for work password
newDmiPassword.multipleDmiPassword() //this will print however many passwords are requested within the class

//uncomment the below to get different password types
//change the amount of password in the multiple password functions in the class above
/*let newAllSymbolPassword = Password()
 newAllSymbolPassword.generateAnySymbolPassword()
 newAllSymbolPassword.multipleAnySymbolPassword()*/
 

 /*let newNoSymbolPassword = Password()
 newNoSymbolPassword.generateNoSymbolPassword()
 newNoSymbolPassword.multipleNoSymbolPassword()*/


