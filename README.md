# Kinship

Kinship is an open-source, self-hosted genealogy app. *It is very much still a work in progress*

## Table of Contents

- [Stack](#stack)
- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Usage](#usage)

## Stack

- Rails - ~> 6.0.3
- Ruby - 2.7.0
- PostgreSQL

## Getting Started

### Prerequisites

If you haven't installed ruby, bundler, and postgresql do that first.

### Installation
Then, do the following to set up this app:

```sh
git clone git@github.com:dkniffin/kinship.git
cd kinship
bundle install
bundle exec rails db:setup create_dummy_data
```

### Usage

To run the app locally (using [overmind](https://github.com/DarthSim/overmind)):

```sh
bundle exec overmind start
```

Or run two sepearate processes for `bundle exec rails s` and `bin/webpack-dev-server`

Then navigate to http://localhost:3000
