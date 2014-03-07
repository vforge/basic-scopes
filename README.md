## basic-scopes
[![Build Status](https://travis-ci.org/vforge/basic-scopes.png)](https://travis-ci.org/vforge/basic-scopes)
[![Dependency Status](https://gemnasium.com/vforge/basic-scopes.png)](https://gemnasium.com/vforge/basic-scopes)
[![Code Climate](https://codeclimate.com/github/vforge/basic-scopes.png)](https://codeclimate.com/github/vforge/basic-scopes)

ActiveRecord basic scopes.

## Usage

You can use basic-scopes just as normal ActiveRecord methods.

### Filtering
* `except_ids(ids)` - all records without matching `ID` field
* `filter_ids(ids)` - all recorth with matching `ID` field
* `filter_updated_since(time)` - all records that have `UPDATED_AT` field greater than `time`
* `filter_updated_till(time)` - all records that have `UPDATED_AT` field lesser than `time`
* `filter_created_since(time)` - all records that have `CREATED_AT` field greater than `time`
* `filter_created_till(time)` - all records that have `CREATED_AT` field lesser than `time`


**NOTE**: `ids` param can be single `ID` or Array of `ID`s

### Sorting / OrderBy
* `by_id` - order by `ID` descending
* `by_id_reversed` - order by `ID` ascending
* `by_created_at` - order by `CREATED_AT` descending
* `by_created_at_reversed` - order by `CREATED_AT` ascending
* `by_updated_at` - order by `UPDATED_AT` descending
* `by_updated_at_reversed` - order by `UPDATED_AT` ascending

## Example

`User.filter_last_update(1.day).by_updated_at` - All users updated in the last one day, ordered by time


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/vforge/basic-scopes/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

