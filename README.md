<h1>Portal</h1>
<p>
  <i>A customizable, barebones, blog/note taking application written with Rails</i>
</p>
<a href="https://circleci.com/gh/AndrewMcBurney/portal">
  <img src="https://circleci.com/gh/AndrewMcBurney/portal.svg?style=shield" alt="Build Status">
</a>
<a href="https://codeclimate.com/github/AndrewMcBurney/portal">
  <img src="https://codeclimate.com/github/AndrewMcBurney/portal/badges/gpa.svg" />
</a>
<a href="https://codeclimate.com/github/AndrewMcBurney/portal">
  <img src="https://codeclimate.com/github/AndrewMcBurney/portal/badges/coverage.svg" />
</a>
<a href="https://codeclimate.com/github/AndrewMcBurney/portal">
  <img src="https://codeclimate.com/github/AndrewMcBurney/portal/badges/issue_count.svg" />
</a>
<a href="https://opensource.org/licenses/MIT">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
</a>

## Overview
- Write articles/notes in Markdown, with inline support for [MathJax](https://www.mathjax.org/) and [Highlight.js](https://github.com/isagalaev/highlight.js)
- Fully customizable visual application settings (`admin/settings`)

## Setup

1. Clone the repository
```bash
git clone https://github.com/AndrewMcBurney/portal.git
```

2. Install the Ruby & JavaScript dependencies
```bash
# Install ruby dependencies
bundle install

# Install node dependencies
yarn install
```

3. Create the development database
```
rake db:create
```

4. Migrate the development database
```
rake db:migrate
```

## Running 

### Development

1. Start webpack-dev-server
```bash
foreman start
```

2. Go to [http://localhost:5000/](http://localhost:5000/)

## Customization

### Settings

![Settings Demo](https://media.giphy.com/media/3o7bu2jualq3JCFdU4/giphy.gif)
