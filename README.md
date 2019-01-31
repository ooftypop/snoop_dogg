# Name
  SnoopDogg



# Description
  SnoopDogg version '0.1.3' adds a powerful inspect-type method to Rails applications (i.e. 'snoop'). The 'snoop' method formats and
  displays Model data in ways that human eyes can more easily digest. Simply put, SnoopDogg version '0.1.3' is a nicer way to see Models.



# Usage
  SnoopDogg is a nicer way to see Models

## Simply call 'snoop' on a Model
  - Call 'snoop' on any Model to view the Model's attributes printed out to the console
  - The Model's attributes will be sorted, color coded, and printed to the console one line at a time
  - The 'snoop' method can be called directly on the Model's class, this will print empty attributes to the console

## Feed 'snoop' arguments to view a Model's associations too
  - 'snoop' can take arguments in the form of keys matching a Model's associations
  - If the association is one-to-one, 'snoop' will find the associated record and print it below it's parent
  - If the association is one-to-many, 'snoop' will print every associated record matching that relationship
  - 'snoop' is powerful, it can print out multiple associations at once | e.g. User.first.snoop(:address, :comments)



# Installation
  Add this line to your application's Gemfile:

```ruby
gem 'snoop_dogg'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install snoop_dogg
```


# Authors
  - Kevin J. Storberg, Ooftypop Inc.



# Contributing
  We welcome collaboration on all of our open source projects.

  <br />
  
  When contributing to SnoopDogg, we ask that you:
  - notify us of your intended contribution so we may provide feedback
  - make a PR on Github with a short description of your changes
  - update any relevant documentation



# License
  The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
