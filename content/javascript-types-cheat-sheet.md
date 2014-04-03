# Javascript Types Cheatsheet

### Values
Javascript has six types of values.

- Numbers
- Strings
- Booleans
- Objects
- Functions
- Undefined values

It's also useful to know that NaN is a type of number and null is an object.

### Numbers
All numbers in javascript are 64 bit. They use one sign bit and 11 bits to locate the decimal point, allowing numbers upto 2<sup>52</sup>.

    1234.5678   // Valid number
    12.3e2      // 1230

Nothing really unexpected here except that there's no int, float, double etc. Just *number*. Simple.

### Strings
Strings are what you expect them to be. Any bunch of characters, enclosed in single or double quotes. Characters are escaped or given special meaning using a `\` followed by a character. `\n`, `\t`, `\"` all work as expected.

### Booleans
Booleans are - wait for it - either `true` or `false`. It's not so much the data type but the way the operators behave, that makes javascript's boolean world so awesome and different.

### Operators
We all know BODMAS and the usual `+`, `-`, `*`, `/`, `%` behaviour with numbers.

- `+` works on strings as a concatenator
- `-` can be used as a unary operator
- `+=`, `-=`, `++` and `--` are all part of the language and work as expected

#### Logical Operations
When you compare two values of the same type, things work as expected. When you perform a logical operation between two values of different types, javascript automatically typecasts then evaluates and throws out a boolean. This scares people. I don't think it's all that bad and find it quite intuitive. Let's try and learn how it works by example.

    "5" == 5            // true
    0 == ""             // true
    1 == true           // true
    0 == false          // true
    null == 0           // false
    null == false       // false
    null == true        // false
    null == undefined   // true
    NaN == NaN          // false

The below conversions take place *before* the operator is evaluated.

1. Number vs Boolean
    - Every number except zero is converted to true.
    - Zero translates to a false.
2. Number vs String
    - The string is converted to a number.
    - `""` is converted to a zero.
3. String and Boolean
    - String is first converted to a number.
    - The number is then converted to boolean.
