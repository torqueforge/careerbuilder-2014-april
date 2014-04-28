# Object-Oriented Design Class

## Dependencies

You will need:

* git ([windows](http://msysgit.github.com/), [mac os x: using brew](http://brew.sh/), linux: probably apt-get or yum git-core)
* a modern version of Ruby (1.9.3 or greater)

## Setup

Clone this repository:

```bash
$ git clone https://github.com/torqueforge/careerbuilder-2014-april.git
```

Change directories so that you are in the project:

```bash
$ cd careerbuilder-2014-april
```

Install the dependencies:

```bash
$ gem install bundler # if you don't have it
$ bundle install
```

## Sanity Check Setup

To verify that everything is set up so that we can get off to a flying start, run the following command:

```bash
$ ruby sanity_test.rb
```

You should get an error complaining that **cannot load such file -- sanity (LoadError)**.

For example:

```bash
/Users/you/.rubies/ruby-2.1.1/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require': cannot load such file -- sanity (LoadError)
  from /Users/you/.rubies/ruby-2.1.1/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
  from sanity_test.rb:3:in `<main>'
```

## Exercises

As the class progresses we will add exercises and solutions to
the master branch.

Each exercise is in its own subdirectory, and has its own README.

## Working on the exercises

Start on master.

```bash
$ git checkout master
```

Create a new branch:

```bash
$ git checkout -b my-new-branch
```

When you've gotten your test suite to pass stage all the changes:

```bash
$ git add . # notice the dot
```

Then commit the changes:

```bash
$ git commit -m "Explain your change here"
```

When we start working on a new section, switch back to master:

```bash
$ git checkout master
```

Then pull the latest version from GitHub:

```bash
$ git pull origin
```

Then create a new branch. Wash. Rinse. Repeat.

## Git: Troubleshooting / Recovery

### Throw it all away?

You can throw all your code away like this:

First, make sure that git knows all about the files you have:

```bash
$ git add .
```

Then throw the changes away:

```bash
$ git reset --hard
```

### Did your master diverge?

Go ahead and create a new branch with all your changes:

```bash
$ git checkout -b my-backup-branch
```

Then go back to master:

```bash
$ git checkout master
```

Make sure you have the most recent changes from GitHub:

```bash
$ git fetch origin
```

Then tell git to create a new copy of master, throwing away the old one:

```bash
$ git reset --hard origin/master
```

## Resources

* [String Mutation Exercises](https://github.com/JumpstartLab/ruby-exercises/tree/master/mutation) start with the file `mutating_strings.rb`, then do `sparkly_test.rb` and `reading_list_test.rb`
