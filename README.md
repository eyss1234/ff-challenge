# ff-challenge
Coding Challenge by FlatFair

The goal of this challenge is to implement a function which calculates the membership fee of tenants. This fixed membership fee is called a flatbond - an alternative to tenancy deposits.

### Contents
  - [Initial set up](#initial-set-up)
  - [Initial approach](#initial-approach)
  - [Folder structure](#folder-structure)
  - [Schema and models](#schema-and-models)
  - [Membership fee function](#membership-fee-function)
  - [Testing](#testing)
  - [Challenges](#challenges)
  - [Next steps](#next-steps)

## Initial set up

Set up bundler for tracking and installing gems
```
$ gem install bundler
```
Install all of the required gems from Gemfile
```
$ bundle install
```
## Initial approach

This project was initially writen using Ruby on Rails framework with the intent of including a front-end.

Once the schema and model associations were created, I decided to simplify and focus my attention to the function `calculate_membership_fee`.

## Folder structure

`/db`: Schema (taken from ruby on rails)
`/lib`: Folder that holds membership_function that calculates flatbond's fee
`/models`: All models and their associations (taken from ruby on rails)
`/spec`: Files for rspec testing

## Schema and models


## Membership fee function


## Testing

Functional testing has been performed.

To execute membership_function_spec unit tests:
```
$ bundle exec rspec
```

## Challenges



## Next steps

- Create logic to recursively check parents until the configuration object is found in `calculate_membership_fee` function
- Create unit test for above step using `organisation_unit_test.json`
- Create Ruby on Rails application and add front-end
- Deploy application in Heroku
  
