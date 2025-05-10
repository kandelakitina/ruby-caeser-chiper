# Caesar Cipher - Ruby Implementation

This is a simple Ruby implementation of the Caesar Cipher. It shifts letters in a string by a specified number, handling both lowercase and uppercase letters. Non-alphabetical characters (like spaces and punctuation) are not changed.

## Example Usage

```ruby
puts caesar_cipher("Hello, World!", 3)  # Output: "Khoor, Zruog!"
puts caesar_cipher("abc", -3)           # Output: "xyz"
```