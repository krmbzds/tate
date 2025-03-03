# Tate ✍️

[![Build Status](https://img.shields.io/github/actions/workflow/status/krmbzds/tate/test.yml?branch=master)](https://github.com/krmbzds/tate/actions/workflows/test.yml)
[![Coveralls](https://img.shields.io/coveralls/github/krmbzds/tate)](https://coveralls.io/github/krmbzds/tate) 
[![Maintainability](https://img.shields.io/codeclimate/maintainability/krmbzds/tate.svg)](https://codeclimate.com/github/krmbzds/tate/maintainability)
[![Downloads](https://img.shields.io/gem/dt/tate.svg)](https://rubygems.org/gems/tate)
[![Gem Version](https://img.shields.io/gem/v/tate.svg)](https://rubygems.org/gems/tate)

**Tate** converts accented characters and transliterates non-latin scripts to their closest ASCII equivalent.

**Tate** is a productivity tool, it behaves like a standard Unix application and can be chained with other Unix commands. It reads from standard input and writes to standard output. You can use it either as a [commandline utility](#commandline) or a [library](#library).

## Examples

Let's say you have a French sentence with a lot of weird characters and you want to convert it into ASCII in the most representative way. You can use:

```sh
echo 'Le cœur de la crémiére' | tate  #=> Le coeur de la cremiere
```

Or some Bulgarian text you can't read:

```sh
echo 'Здравей!' | tate --lang=bg  #=> Zdravey!
```

Set language using `lang` option for custom filters, e.g. German:

<pre>
echo 'Von gro<b>ß</b>en Bl<b>ö</b>cken haut man gro<b>ß</b>e St<b>ü</b>cke.' | tate --lang=de
</pre>

Letters ö, ü and ß will be transliterated based on German transliteration rules:

<pre>
Von gro<b>ss</b>en Bl<b>oe</b>cken haut man grosse St<b>ue</b>cke.
</pre>

Language specific punctuation will be converted to closest ASCII equivalent.

For example, in Catalan, notice how the quotes (cometes franceses) and the interpunct (punt volat) are transliterated:

```
«Dóna amor que seràs feliç!». Això, il·lús company geniüt, ja és un lluït rètol blavís d’onze kWh.
"Dona amor que seras felic!". Aixo, il-lus company geniut, ja es un lluit retol blavis d'onze kWh.
```

## Installation

Add this line to your application's Gemfile:

```rb
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

## Usage

<h3 id="library">
  Ruby Library
</h3>

```rb
require 'tate'
Tate::transliterate('Zəfər', language='az')  #=> Zefer
```

<h3 id="commandline">
  Commandline Utility
</h3>

```
Usage: tate [options]
-l, --lang=[LANGUAGE]            Set language for custom filters
-h, --help                       Show this message
-v, --version                    Show version
```

#### Interactive Mode

If you call `tate` without providing any arguments, it will expect you to provide input using standard input (keyboard). After you are done typing you can use `cmd + D` to trigger `EOL (End of Line)` and the result will printed in the next line.

#### Standard Streams

You can pipe the output of another command into tate.

```sh
curl gov.bg/bg | tate --lang=bg > index.html
```

## Language Support

There are custom filters for:

```
Azeri, Bulgarian, Catalan, French, German, Hungarian, Polish, Romanian, Portuguese, Spanish, and Vietnamese.
```

The following languages are known to work (w/o custom filters):

```
Croatian, Czech, Danish, Esperanto, Estonian, Finnish, Icelandic, Latvian, Lithuania, Norwegian, Scottish, Slovak, Slovenian, Swedish, Turkish, and Welsh.
```

What's next?

```
Russian, Irish, Arabic, and Yoruba.
```

## Is it any good?

Yes.

## Support

This gem is tested against the following Ruby versions:

- ✅ `3.4.1` (stable)
- ✅ `3.3.6` (stable)
- ✅ `3.2.6` (stable)
- ⏳ `3.1.6` (security maintenance)
- 🪦 `3.0.7` (end of life)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org][RubyGems].

## Contributing

1. [Fork the repository][Fork]
2. Create your feature branch (`git checkout -b add-irish-support`)
3. Commit your changes (`git commit -am 'Add Irish language support'`)
4. Push to the branch (`git push origin add-irish-support`)
5. Create a new Pull Request

### Custom Filters

You can add custom language filters under `lib/rules` directory.

### Donations ❤️

You can donate me at [Liberapay][Donation]. Thanks! ☕️

## Trivia

**tate** is short for **t**ransliter**ate**.

Nobody has time to type transliterate in the terminal.

## License

Copyright © 2016-2025 [Kerem Bozdas][Personal Webpage]

This project is available under the terms of the [MIT License][License].

[Donation]: https://liberapay.com/krmbzds/donate
[Fork]: https://github.com/krmbzds/tate/fork
[License]: http://kerem.mit-license.org
[Personal Webpage]: http://kerembozdas.com
[RubyGems]: https://rubygems.org
