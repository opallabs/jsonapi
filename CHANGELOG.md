# Changelog

## NEXT
...

## [1.8.4](https://github.com/beam-community/jsonapi/compare/v1.8.3...v1.8.4)


### Bug Fixes

* fix: bug with DataToParams include processing expecting more 'data' keys than the spec calls for [#363](https://github.com/beam-community/jsonapi/pull/363)

## [1.8.3](https://github.com/beam-community/jsonapi/compare/v1.8.2...v1.8.3) (2024-11-04)


### Bug Fixes

* camelize when prefix is camelized already ([ae78a7d](https://github.com/beam-community/jsonapi/commit/ae78a7de4dd1960437d23b2c3177bd1cf721df4e))
* Compiler warning for zero-arity fields function call ([b071131](https://github.com/beam-community/jsonapi/commit/b0711319d4473beab58b5bb68dac87f7b5f9daeb))

## [1.8.2](https://github.com/beam-community/jsonapi/compare/v1.8.1...v1.8.2) (2024-09-22)


### Bug Fixes

* Compiler warnings for zero-arity funtion calls ([#335](https://github.com/beam-community/jsonapi/issues/335)) ([49ed6ab](https://github.com/beam-community/jsonapi/commit/49ed6ab453cdd7af44f608615daf147da876841a))

## [1.8.1](https://github.com/beam-community/jsonapi/compare/1.8.0...v1.8.1)

### Bug Fixes

* Fix incorrect ordering of serialized lists ([#333](https://github.com/beam-community/jsonapi/pull/333))


## [1.8.0](https://github.com/beam-community/jsonapi/compare/1.7.1...v1.8.0) (2024-06-25)


### Features

* Link Objects and Additional Controller Actions ([#264](https://github.com/beam-community/jsonapi/issues/264)) ([def58a9](https://github.com/beam-community/jsonapi/commit/def58a9bb6c10c8e72a7f3e7b86ad04748331204))
* Setup common config ([#322](https://github.com/beam-community/jsonapi/issues/322)) ([702b248](https://github.com/beam-community/jsonapi/commit/702b2488cb4b683ae9b405c33979500536e0ef2a))


### Bug Fixes

* Add release please manifest ([3d3ca63](https://github.com/beam-community/jsonapi/commit/3d3ca634b212b394209c498f063999a22549c950))
* Fix failing credo check ([e025dc2](https://github.com/beam-community/jsonapi/commit/e025dc2dc5213a6d17cc1d005824f13f60938fe4))

## 1.7.1 (2024-02-23)
* Fix bug where underscore/dasherize misses single characters by @protestContest in https://github.com/beam-community/jsonapi/pull/316
* Transform relationship keys with shallow field transformation options (#314) by @protestContest in https://github.com/beam-community/jsonapi/pull/315

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.7.0...1.7.1

## 1.7.0 (2024-02-15)

## What's Changed
* Add options to transform field keys non-recursively (#132) by @protestContest in https://github.com/beam-community/jsonapi/pull/310

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.6.3...1.7.0

## 1.6.3 (2023-08-03)

### What's Changed
* Nested query filter fixes by @TylerPachal in https://github.com/beam-community/jsonapi/pull/302

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.6.2...1.6.3

## 1.6.2 (2023-07-03)

### What's Changed
* Error handling fixed per https://github.com/beam-community/jsonapi/issues/294.

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.6.1...1.6.2

## 1.6.1 (2023-06-26)

### What's Changed
The features of #270 were broken in two ways that this release fixes.

1. The `@spec` for the `relationships` `callback` for `JSONAPI.View` actually did not allow for the various new structures a `relationships` `callback` is allowed to return under the above PR.
2. The PR was intended to support (among other more general purposes) remapping of an `attribute` field to a `relationship` -- this is niche, but sometimes quite useful. The above PR and its tests failed to fully realize that goal by missing one small detail (lost in a merge conflict resolution, as it turns out).

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.6.0...1.6.1

## 1.6.0 (2023-06-12)

### What's Changed
* Add support for a JSON:API includes allowlist. by @mattpolzin in https://github.com/beam-community/jsonapi/pull/292

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.5.1...1.6.0

## 1.5.1 (2023-05-19)

### What's Changed
* Change camelize behavior by @TylerPachal in https://github.com/beam-community/jsonapi/pull/293

Specifically, already-camilized strings will no longer be turned to all-lowercase by the `:camelize` transformation; they will be left alone.

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.5.0...1.5.1

## 1.5.0 (2023-01-25)

### What's Changed

#### Improvements

* Integration between UnderscoreParameters and QueryParser by @TylerPachal in https://github.com/beam-community/jsonapi/pull/282
* Response body for content type error by @TylerPachal in https://github.com/beam-community/jsonapi/pull/276
* Fix typos by @kianmeng in https://github.com/beam-community/jsonapi/pull/275
* Add c:JSONAPI.View.get_field/3 by @whatyouhide in https://github.com/beam-community/jsonapi/pull/273
* Support renaming of relationships by @mattpolzin in https://github.com/beam-community/jsonapi/pull/270

### New Contributors

* @kianmeng made their first contribution in https://github.com/beam-community/jsonapi/pull/275
* @whatyouhide made their first contribution in https://github.com/beam-community/jsonapi/pull/273
* @TylerPachal made their first contribution in https://github.com/beam-community/jsonapi/pull/276

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.4.0...v1.5.0

## 1.4.0 (2022-11-05)

**Full Changelog**: https://github.com/beam-community/jsonapi/compare/1.3.0...v1.4.0

## 1.3.0 (2020-03-21)

### Added

- [Add Deserializer Plug](https://github.com/jeregrine/jsonapi/pull/222)

### Changed

- [Continuous](https://github.com/jeregrine/jsonapi/pull/226) [Integration](https://github.com/jeregrine/jsonapi/pull/227)
  with Github actions.
- ["self" URL can include query parameters](https://github.com/jeregrine/jsonapi/pull/224)

### Contributors

A healthy Covid-19 safe foot-tap to: @CostantiniMatteo, @lucacorti, @snewcomer, and @jherdman

## 1.2.3 (2020-01-28)

### Added

N/A

### Changed

- [Fixed documentation typo](https://github.com/jeregrine/jsonapi/pull/213)
- [Added query parameters to links](https://github.com/jeregrine/jsonapi/pull/214)
- [Added installation instructions](https://github.com/jeregrine/jsonapi/pull/216)

### Contributors

Big ups to @jgelens, @komlanvi, @ryanlabouve

## 1.2.2 (2019-09-28)

### Added

N/A

### Changed

- [Removed Elixir 1.5 from the Build Matrix](https://github.com/jeregrine/jsonapi/pull/212)
- [Fixed underscoring camelCase params](https://github.com/jeregrine/jsonapi/pull/211)

## 1.2.1 (2019-06-27)

### Added

N/A

### Changed

- [Updated example pagination code](https://github.com/jeregrine/jsonapi/pull/204)
- [Fixed sparse fieldset compliance for relationships](https://github.com/jeregrine/jsonapi/pull/203)
- [Error status codes](https://github.com/jeregrine/jsonapi/pull/206) in error responses should be Strings
- [Fixed a problem](https://github.com/jeregrine/jsonapi/pull/208) with "self" pagination link

### Contributors

A fist bump of appreciation to @lucacorti, @leepfrog, @jasondew, and @thebrianemory.

## 1.2.0 (2019-04-29)

### Added

- Pagination has had a massive overhaul. Docs have been updated. Please file issues
  should you run into any problems. You may wish to review
  [the pull request](https://github.com/jeregrine/jsonapi/pull/189) for more details.
- [More typespecs](https://github.com/jeregrine/jsonapi/pull/198)
- `EnsureSpec` Plug now sets the JSON:API response content type
  [for you](https://github.com/jeregrine/jsonapi/pull/185). This means you need
  not manually include the `ResponseContentType` Plug in your pipeline should you
  already have `EnsureSpec` in play. Please see the documentation for
  `ResponseContentType` should you wish to override it for a specific end-point.

### Changed

- Ex Doc was updated to leverage some of its fancy new features.
- `EnsureSpec` pipeline checks to ensure that
  [a PATCH request has an ID](https://github.com/jeregrine/jsonapi/commit/86d98d9dc0ddd29143b9da1a6522acfbcb8bb904)
- Documentation improvements

### Contributors

Much love to: @0urobor0s, @kbaird, @lucacorti, @strzibny

## 1.1.0 (2019-02-23)

### Added

- Various typespec changes
- The `:namespace` option is [globally configurable](https://github.com/jeregrine/jsonapi/pull/178)
- Fully support [sparse fieldsets](https://github.com/jeregrine/jsonapi/pull/171)

### Changed

- [Removed](https://github.com/jeregrine/jsonapi/pull/172) `Config.required_fields`
- Documentation improvements

### Fixes

- Credo is set to use [strict option](https://github.com/jeregrine/jsonapi/pull/177)
- `FormatRequired` Plug [accepts a legal RIO payload](https://github.com/jeregrine/jsonapi/pull/176)
- Report on [missing data type as such](https://github.com/jeregrine/jsonapi/pull/180)

### Contributors

Much love to @kbaird, and @zamith.

## 1.0.0 (2019-01-27)

Hot on the heels of 0.9.0, 1.0.0 is here! Please remember to upgrade to 0.9.0
first. You'll find the upgrade path much easier.

- [Added](https://github.com/jeregrine/jsonapi/pull/170) run Dialyzer on CI
- [Fixed](https://github.com/jeregrine/jsonapi/issues/134) bad includes result in HTTP 500 response
- [Removed](https://github.com/jeregrine/jsonapi/pull/163) all deprecated code
- [Added](https://github.com/jeregrine/jsonapi/pull/158) `camelCase` field support for JSON:API v1.1
- [Added](https://github.com/jeregrine/jsonapi/pull/164) support for arbitrary links
- [Added](https://github.com/jeregrine/jsonapi/pull/161) Elixir 1.8 to the build matrix

## 0.9.0 (2019-01-18)

This is the last release before 1.0. As such this release will feature a number
of deprecations that you'll want to either resolve before upgrading. Should
you have any trouble with these deprecations please file an issue.

- [Added](https://github.com/jeregrine/jsonapi/pull/151) Expand Build Matrix Again
- [Added](https://github.com/jeregrine/jsonapi/pull/155) Refactor String Manipulation Utility Module
- [Internal](https://github.com/jeregrine/jsonapi/pull/152) Move `QueryParser` Test
- [Added](https://github.com/jeregrine/jsonapi/pull/151) Expand Build Matrix
- [Added](https://github.com/jeregrine/jsonapi/pull/149) Add Plug to Transform Parameters
- [Fixed](https://github.com/jeregrine/jsonapi/pull/148) Namespace `Deprecation` module
- [Internal](https://github.com/jeregrine/jsonapi/pull/146) Consolidate Plug Locations
- [Fixed](https://github.com/jeregrine/jsonapi/pull/144) Set `Content-Type` for errors
- [Internal](https://github.com/jeregrine/jsonapi/pull/140) Improve `Application.env` handling in tests
- [Fixed](https://github.com/jeregrine/jsonapi/pull/139) Update regexes for underscore and dash
- [Internal](https://github.com/jeregrine/jsonapi/pull/135) Remove leading `is_` from `is_data_loaded?`
- [Fixed](https://github.com/jeregrine/jsonapi/pull/129) Remove warning about hidden being undefined
- [Added](https://github.com/jeregrine/jsonapi/pull/126) Allows for conditionally hiding fields
- [Fixed](https://github.com/jeregrine/jsonapi/pull/124) Omit non-Object meta

## v0.7.0-0.8.0 (2018-06-13)

(Sorry I missed 0.7.0)

- [Added](https://github.com/jeregrine/jsonapi/pull/117/commits/09faf424f47d46a9f2d24c3057c11c961d345990) Support for configuring your JSON Library, and defaulted to Jason going forward.
- [Fixed](https://github.com/jeregrine/jsonapi/pull/87) Fix nesting for includes
- [Added](https://github.com/jeregrine/jsonapi/pull/88) Removing Top Level if configured
- [Fixed](https://github.com/jeregrine/jsonapi/pull/90) Check headers according to spec
- [Added](https://github.com/jeregrine/jsonapi/pull/92) Add to view custom attribute
- [Added](https://github.com/jeregrine/jsonapi/pull/93) updates plug to allow data with only relationships enhancement
- [Added](https://github.com/jeregrine/jsonapi/pull/97) include meta as top level document member
- [Added](https://github.com/jeregrine/jsonapi/pull/102) Apply optional dash-to-underscore to include keys
- [Fixed](https://github.com/jeregrine/jsonapi/pull/103) Do not build relationships section for not loaded relationships
- [Fixed](https://github.com/jeregrine/jsonapi/pull/105) change try/rescue to function_exported? and update docs
- [Fixed](https://github.com/jeregrine/jsonapi/pull/106) Dasherize keys in relationship urls
- [Added](https://github.com/jeregrine/jsonapi/pull/107) Allows the view to add links
- [Fixed](https://github.com/jeregrine/jsonapi/pull/113) Serialize empty relationship
- [Fixed](https://github.com/jeregrine/jsonapi/pull/114) Handle dashed include for top-level relationship

## v0.6.0 (2017-11-17)

- [Added](https://github.com/jeregrine/jsonapi/commit/44888596461a1891376b937057bb504345cff8dc) Optional Data Links.
- [Added](https://github.com/jeregrine/jsonapi/commit/ba9d9cb84c10ef85a4b8e42df88a9e92f3809651) Paging Support
- [Added](https://github.com/jeregrine/jsonapi/commit/0c50bc60db9b8678f631ac274062150499e4fb8b) Option to replace underscores with dahses

## v0.5.1 (2017-07-07)

- [Added](https://github.com/jeregrine/jsonapi/commit/1f9e45aee4058ca6b3a8a55aaec6eebcada525a6) plug to make verifying requests and their errors easier

## v0.5.0 (2017-07-07)

- [Added](https://github.com/jeregrine/jsonapi/commit/def022b327ac13e5e906a665321969b442048f3b) support for meta fields
- [Added](https://github.com/jeregrine/jsonapi/commit/1bbe4de86baec250d0b8dcc263bb41a94dea8063) support for custom hosts
- [Added](https://github.com/jeregrine/jsonapi/commit/3c73e870651f09ce8e09d4061111487db2e515f5) support for hidden attributes in views
- [Added](https://github.com/jeregrine/jsonapi/commit/45f0d14e9d700d32a8b20dc04a4fa300fa43da37) support conversion of underscore to dashes.
- [Fixed](https://github.com/jeregrine/jsonapi/commit/74b0d1914a3aceb792c753f2292002c10ac93005) issue with index.json
- Now uses Credo

## v0.4.2 (2017-04-17)

- Updated codebase for elixir 1.4
- Updated poison dep to 3.0
- Fixed failing travis tests

## v0.4.0 (2016-12-02)

- Removed PhoenixView

## v0.1.0 (2015-06-?)

- Made params optional

## v0.0.2 (2015-06-22)

- Made paging optional

## v0.0.1 (2015-06-21)

- Support for basic JSONAPI Docs. Links support still missing
