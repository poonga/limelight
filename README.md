## Limelight

*limelight* aims to streamline the end-to-end recruiting process so that recruiters and hiring managers can focus on what truly matters: their candidates.  

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c3ef08af97274f06b198b063c64432ad)](https://www.codacy.com/app/hdao61/limelight?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=S1v4/limelight&amp;utm_campaign=Badge_Grade) 
[![Build Status](http://img.shields.io/travis/S1v4/limelight/master.svg)](https://travis-ci.org/S1v4/limelight)

## Synopsis

**Current Standard**

Any company starting out will quickly understand how overwhelming resume submissions can be.  Job seekers will apply to all available positions regardless of their qualifications. Hiring managers have to look through and read  hundreds of resumes that are being submitted for multiple positions. They have to manually organize and sort all the resumes that they read through to determine the most qualified applicants. This makes sorting through resumes and finding the right candidate that much harder.

**Goals**

- Eliminate the stress of the hiring processes for all parties involved and bring together talented individuals.
- Give applicants an easy and pleasant experience when submitting resumes.
- Provide an easy platform for hiring managers to screen applicants.
- Connect employers with great candidates that would best match their company.

**Functional Requirements**

- Create a company profile
- Create a job posting
- Ranking Applicants
- Screen/Approve/Reject Applications
- Submitting an application
- Notifications

**Non-Functional Requirements**

- Performance: the system should be quick and dynamic so when a user chooses to view applicants for a position, they should load quickly and in order.
- Error Handling: the system should provide error handling and necessary validations for all use cases.
- Accessibility: The system must be accessible from all common web browsers, operating systems, and mobile devices.
- Help: They system should provide useful tips and hints on major functionalities.
- Data Storage: all applications should be stored in a database and maintain old application for archiving purposes.
- Security: the system should maintain a high level of data security due to the nature of handing a large amount of personal data on applicants.

## Tools

We are using [Ruby on Rails](http://rubyonrails.org/) with [Bootstrap](http://getbootstrap.com/).

**Necessary Technologies:**
- HTML
- CSS 
- Javascript
- Ruby

**Integration & Services:**
- Codacy
- Travis
- AccessLint
- Slack/Github Webhooks

**Project Management Tools:**
- [Waffle](https://waffle.io/S1v4/limelight) for agile project management.
- [Slack](https://project-491.slack.com) for team communication.

## Architecture

Our website uses a Model-View-Controller (MVC) architecture pattern in accordance to the pattern in Ruby on Rails.

![Imgur](http://i.imgur.com/cIpNG8s.png)

## Development

**How to develop**

In order to run the application locally, you need to install:

* C Compiler (on OS X, type: `xcode-select --install`)
* Ruby 2.5.0 (on OS X with [rbenv](http://rbenv.org), type: `brew update; brew upgrade ruby-build; rbenv install 2.5.0`)
* PostgreSQL 10.1 (on OS X with [brew](http://brew.sh), type: `brew install postgresql` and follow the instructions to run PostgreSQL locally)
* Redis (on OS X with [brew](http://brew.sh), type: `brew install redis` and follow the instructions on `brew info redis` to run Redis locally)

Then type `bundle install`, then `rails db:setup` and run the server with `rails server`.

**How to contribute**

Push your branch to the project and open a pull request against master.

Heroku will magically create an instance of the application with your code so
you (and your co-workers) can test your changes live! :sparkles: :sparkles: :sparkles:

Once your PR is accepted and merged into master, the code will be automatically
deployed to production and will show up on production.

**How to write code**

Follow some common-sense rules for maintainability and readability:

- keep lines below 80 characters
- keep files below 100 lines
- keep the Gemfile short and documented
- keep commits short and documented
- keep the main gems up to date
- keep the user interface consistent
- use modules/subfolders to distinguish features
- don’t use [flash messages](http://guides.rubyonrails.org/action_controller_overview.html#the-flash), create a proper page instead
- don’t write production API/secret keys in your code
- don’t write code you wouldn’t want to read

## Documentation

Full documentation of the application:
- [Request for Proposal](https://drive.google.com/open?id=1gfWF-hIA7cWpPeto_5CmzXvHLuS-ebqWurhl2rDKSLg)
- [Requirement Analysis Document](https://drive.google.com/open?id=1z1Bhjw_iBcqYWrJ9i_2jJirrJhyBVuyzADsUaAVlGd0)
- [Scenarios](https://drive.google.com/open?id=1CNyGhnhYdBRB9XoIr9iq-_4uHzP3nXDp_-_ghKDxXfs)
- [Use Cases](https://drive.google.com/open?id=1za0cWdcWJQMoXDnpoKI38PWMnbvfM-ayhLBJHMN4dKA)
- [Database Schema](https://drive.google.com/open?id=1Y_fJbmyRlgubg_vBZdHB5G_mQBxo0Erc)
- [List of Methods](https://drive.google.com/open?id=1z_0Kqm8dZIwbtaEul0W5jYEWNJ4oqMXCWPvlWAfCICw)
- [List of Objects](https://drive.google.com/open?id=1_lHIKZryzYZHmoOBlbgdM6auNmD1JzhITa_R2Beh9mg)
- [Class Diagram](https://drive.google.com/open?id=0BzKBAk7TnY51T3B0bEFLSnV6WGs)
- [Sequence Diagrams](https://drive.google.com/open?id=1bka5h04PDC5tquk8aXdfK-gmIJP-Q7cuePe34qrDRjM)

## Contributors

- [Aaron Dao](https://github.com/S1v4)
- [Sergey Ganous](https://github.com/Sganous)
- [Minh Huynh](https://github.com/MHuynhT)
- [Doreen Farfan](https://github.com/doreen321)

## License

Limelight's license and user policy will be available soon.

**[⬆ back to top](#limelight)**

# };
