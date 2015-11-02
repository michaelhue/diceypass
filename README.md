# diceypass

**Generate [Diceware](http://world.std.com/~reinhold/diceware.html) [passphrases](https://en.wikipedia.org/wiki/Passphrase) in your shell.**

[![Build Status](https://travis-ci.org/michaelhue/diceypass.svg?branch=master)](https://travis-ci.org/michaelhue/diceypass)

## Install

`diceypass` is a shell script, so drop it somehwere and make sure it's added to your `$PATH`. Or use this nifty one-liner:

    sudo sh -c "curl https://raw.githubusercontent.com/michaelhue/diceypass/master/diceypass -o /usr/local/bin/diceypass && chmod +x /usr/local/bin/diceypass"

## Usage

Generate a six-word passphrase.

    diceypass
    linda laden amply tart snare quaff

Generate an eight-word passphrase.

    diceypass 8
    hurst bin mad kid myel sinh no budge

Generate a six-word passphrase, three times.

    diceypass 6 3
    maw burly fad fin joint c5
    shout race real e2 speck wynn
    bud abbott ma m7 loft earn

See `diceypass --help` for a quick reminder.

## Cooler Usage

Generate a TXT-File with 20 passphrases:

    diceypass 6 20 > passphrases.txt

Use your own word list:

    export DICEYPASS_WORDS="foo bar baz"
    diceypass
    baz foo bar bar foo bar

Send a passphrase directly to clipboard (on OS X):

    diceypass 8 | pbcopy

## Security

Secure Diceware passphrases should not be generated with a computer. If you need high-security passphrases, please don't use this script.

However I found that using a computer-generated Diceware passphrase for low-security applications is still better than your average password. `diceypass` uses `/dev/urandom` to randomly select words from the list.

Check the [official FAQ](http://world.std.com/~reinhold/dicewarefaq.html) if you have questions about Diceware.

## Contributing

Disclaimer: This is more or less an educational project for myself in order to gain more experience with shell scripting. Please don't hesitate to open an issue for bug reports or improvements.

Contributions are very welcome! Make sure to run `./test` after implementing your changes. You may also want to add your own tests to `diceypass-test.sh`. Once everything looks good, open a pull request.