# ff-challenge
Coding Challenge by FlatFair.

The goal of this challenge is to implement a function which calculates the membership fee of tenants. This fixed membership fee is called a flatbond - an alternative to tenancy deposits.

### Contents
  - [Initial set up](#initial-set-up)
  - [Initial approach](#initial-approach)
  - [Folder structure](#folder-structure)
  - [Schema and models](#schema-and-models)
  - [Membership fee function](#membership-fee-function)
  - [Testing](#testing)
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

This project was initially written using Ruby on Rails framework with the intent of including a front-end.

Once the schema and model associations were created, I decided to simplify the project into plain Ruby to focus my attention on the function `calculate_membership_fee`.

## Folder structure

- `/db`: Schema (taken from ruby on rails)
- `/lib`: Folder that holds membership_function that calculates flatbond's fee
- `/models`: All models and their associations (taken from ruby on rails)
- `/spec`: Files for rspec testing

## Schema and models

See schema used below:

![Schema for ff-challenge](/db/ff-schema.png)

To give a basic example of how the schema can be expanded for the future, I have added a `primary_contact` table.

I initially considered creating the following schema for the organisation_unit, but decided against it as as the model I selected was cleaner:

![Disregarded schema for ff-challenge](/db/ff-disregarded-schema.png)

## Membership fee function

Inputs:
- `rent_amount`: Input rent amount in pounds (integer)
- `rent_period`: Month or week (string)
- `organisation_unit_config`: branch instance of organisation unit (currently set to false. See next steps for future changes)

Rules:
- Amount is stored in pence
- VAT is 20%
- Membership fee is one week of rent + VAT
- Minimum membership fee is £120 + VAT
- Mininum rent amount is £25/week or £110/month
- Maximum rent amount is £2000/week or £8660/month

## Testing

Functional testing has been performed.

To execute membership_function_spec unit tests:
```
$ bundle exec rspec
```


## Next steps

- Create a global variable for vat
- Create separate function for validations
- Create logic to recursively check parents until the configuration object is found in `calculate_membership_fee` function
- Create unit test for above step using `organisation_unit_test.json`
- Create Ruby on Rails application and add front-end
- Deploy application in Heroku
  
