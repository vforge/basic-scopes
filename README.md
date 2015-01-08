## basic-scopes
[![Gem Version](https://badge.fury.io/rb/basic-scopes.svg)](http://badge.fury.io/rb/basic-scopes)
[![Build Status](https://travis-ci.org/vforge/basic-scopes.svg)](https://travis-ci.org/vforge/basic-scopes)
[![Dependency Status](https://gemnasium.com/vforge/basic-scopes.svg)](https://gemnasium.com/vforge/basic-scopes)
[![Code Climate](https://codeclimate.com/github/vforge/basic-scopes/badges/gpa.svg)](https://codeclimate.com/github/vforge/basic-scopes)

ActiveRecord basic scopes.

## Usage

You can use basic-scopes just as normal ActiveRecord methods.

### Filtering
* `except_id(id)` - all records without matching `ID` field
* `filter_id(id)` - all records with matching `ID` field
* `except_ids(ids)` - all records without matching `ID` field
* `filter_ids(ids)` - all records with matching `ID` field
* `filter_updated_since(time)` - all records that have `UPDATED_AT` field greater than `time`
* `filter_updated_till(time)` - all records that have `UPDATED_AT` field lesser than `time`
* `filter_created_since(time)` - all records that have `CREATED_AT` field greater than `time`
* `filter_created_till(time)` - all records that have `CREATED_AT` field lesser than `time`


**NOTE**: `ids` param is an Array of `ID`s; `id` is single value


### Sorting / OrderBy
* `by_id` - order by `ID` descending
* `by_id_reversed` - order by `ID` ascending
* `by_created_at` - order by `CREATED_AT` descending
* `by_created_at_reversed` - order by `CREATED_AT` ascending
* `by_updated_at` - order by `UPDATED_AT` descending
* `by_updated_at_reversed` - order by `UPDATED_AT` ascending

## Examples

`Account.except_id(1)` - All Accounts except ID == 1.
`User.filter_updated_since(1.day).by_updated_at` - All Users updated in the last one day, ordered by time



