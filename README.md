# Tate


[![Travis](https://img.shields.io/travis/krmbzds/tate.svg)](https://travis-ci.org/krmbzds/tate)
[![Code Climate](https://img.shields.io/codeclimate/github/krmbzds/tate.svg)](https://codeclimate.com/github/krmbzds/tate)
[![Gem](https://img.shields.io/gem/dt/tate.svg)](https://rubygems.org/gems/tate)
[![Gem](https://img.shields.io/gem/v/tate.svg)](https://rubygems.org/gems/tate)


**tate** helps you convert accented characters to ASCII.

**tate** is a productivity tool, it behaves like a standard Unix application and can be chained with other Unix commands. It only reads from standard input and writes to standard output.

## Examples

Let's say you have a French sentence with a lot of weird characters and you want to convert it into ASCII in the most representative way. You can use:

```sh
echo "Le cœur de la crémiére" | tate  
```

This will output:

```
Le coeur de la cremiere
```

Or you might want to create a purely ASCII version of some file:

```sh
cat customers.csv | tate > customers_tated.csv
```

If you call `tate` without providing any input, like a standard Unix command it will expect you to provide input using the keyboard. After you are done typing you can use `cmd + D` shortcut to trigger `EOL (End of Line)`. You will see that the text you typed into the terminal is converted to ASCII.


## Is it any good?

Yes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tate'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install tate
```

## Contributing

1. Fork it (https://github.com/krmbzds/tate/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Trivia

**tate** is short for **transliterate**.  
Nobody has time to type transliterate in the terminal.

## Todo

:white_medium_square: Handling conversions based on language.

For example, in Turkish `ü` would always be transliterated as  `u`.  
However, in German, `ü` could be transliterated as `ue` (e.g. Mueller).

## License

The MIT License (MIT)  
Copyright (c) 2016 Kerem Bozdas
