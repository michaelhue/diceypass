#!/usr/bin/env roundup
#
# diceypass tests
#

diceypass="./diceypass"

describe "diceypass"

it_generates_default_length_passphrase() {
  $diceypass | grep -E '^(\S+\s?){6}$'
}

it_generates_dynamic_length_passphrases() {
  $diceypass 1 | grep -E '^\S+$'
  $diceypass 2 | grep -E '^(\S+\s?){2}$'
  $diceypass 4 | grep -E '^(\S+\s?){4}$'
  $diceypass 8 | grep -E '^(\S+\s?){8}$'
}

it_generates_multiple_passphrases() {
  echo `$diceypass 6 3` | grep -E '^(\S+\s?){18}$'
  echo `$diceypass 3 5` | grep -E '^(\S+\s?){15}$'
}

it_uses_words_from_env() {
  DICEYPASS_WORDS="foo bar baz" $diceypass | grep -E '^((foo|bar|baz)\s?){6}'
}

it_shows_help() {
  $diceypass --help | grep usage
  $diceypass -h | grep usage
}

it_shows_version() {
  $diceypass --version | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$'
  $diceypass -v | grep -E '^[0-9]+\.[0-9]+\.[0-9]+$'
}