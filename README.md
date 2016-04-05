# CGTest

This repository contains a cheerfulghost.com testing framework.

## Requirements

Ruby 2.3.0

Firefox 34.0.5 (This is the version of Firefox that this was tested against. Your mileage may vary with other versions.

You can use Chrome. If you wish to use chrome, you need to install the appropriate webdriver found here: https://sites.google.com/a/chromium.org/chromedriver/home Setting up chrome webdriver is beyond the scope of this document. Chrome 49.0.2623.87 was used during testing.

## Installation

1. Clone this repository
2. Change into the local repository diretory
3. Execute from the command line:

        gem install bundler
4. Execute from the command line:

        bundle install

## Usage

NOTE: If you wish to use chrome set the environment variable TEST_BROWSER to "chrome".

From the command line, execute:

    bundle exec rake navbar
    
Test reports can be found under 'spec/reports'. Failure screenshots can be found under 'failure_pics'.
