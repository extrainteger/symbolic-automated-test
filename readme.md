# Symbolic automated test

Example set of automated test that's compatible for both of Symbolic's staging and production environment.

# Dependency
- Ruby 2.6.3
- Rspec
- Watir

# Installation

- Clone the repository `git clone https://github.com/extrainteger/symbolic-automated-test.git`
- Install dependency `bundle install`
- Create file `.env` in the root directory. Copy its content from `env.example`
- Change your ENV variables in `.env` in order to run the test against different environment

# Run scenario

Execute `rspec`