# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/) and this
project adheres to [Semantic Versioning](http://semver.org/).

## master

Add here

## [0.4.2] - 2024-08-12

-  Rename encryption_method to signing_method [#53](https://github.com/doorkeeper-gem/doorkeeper-jwt/pull/53)
-  Fix default token generation [#56](https://github.com/doorkeeper-gem/doorkeeper-jwt/pull/56)

### Fixed

- Fixed default token generation to return a random hex value [#56](https://github.com/doorkeeper-gem/doorkeeper-jwt/pull/56)

## [0.4.1] - 2022-02-23

- JWT gem requirement relaxed to use any version >= 2.1

### Changed

## [0.4.0] - 2019-10-02

- Restructured library files to follow naming conventions. (https://guides.rubygems.org/name-your-gem/).
- Add support of new doorkeeper with encryption [#30](https://github.com/doorkeeper-gem/doorkeeper-jwt/pull/30)

## [0.3.0] - 2018-10-01

### Added

- Bump JWT gem version. Via [#27](https://github.com/doorkeeper-gem/doorkeeper-jwt/pull/27) by [@pacop](https://github.com/pacop/).

## [0.2.1] - 2017-06-07

### Fixed

- The `token_headers` proc now passes `opts` like the other config methods. Fixed via #19 by @travisofthenorth.

## [0.2.0] - 2017-05-25

### Added

- Added support for ["kid" (Key ID) Header Parameter](https://tools.ietf.org/html/rfc7515#section-4.1.4)
  @travisofthenorth. Allows custom token headers.
