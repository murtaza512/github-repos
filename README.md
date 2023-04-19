# README

# GitHub Repository Search

The application is a simple web app built with Ruby on Rails 7, using the Stimulus and Turbo libraries. The purpose of the application is to display public repositories from GitHub based on a search term provided by the user.

The user can enter a search term into an input field on the top of the page, and the results will be displayed right under the input. The app will send an AJAX request to the GitHub API using the Octokit library to retrieve the relevant repositories based on the user's search term.

The app is designed to be easy to use and maintain, with a clear separation of concerns between the front-end and back-end code. The front-end is built using Stimulus to provide an interactive and responsive user experience, while the back-end is built using Ruby on Rails and the Octokit library to provide robust and reliable API calls to the GitHub API.

Overall, the application is a simple but useful tool for developers who need to search for and access public repositories on GitHub quickly and easily.

## Prerequisites

Before running this application, make sure you have the following software installed on your local machine:

- Ruby 3.1.0
- Node.js 16.0.0 or later
- Yarn 1.22.0 or later
- Bundler 2.2.0 or later

## Installation

1. Clone this repository to your local machine:

`git clone https://github.com/<username>/github-repos.git`

2. Change into the project directory:

`cd github-repos`

3. Install the necessary dependencies using Bundler and Yarn:

`bundle install`
`yarn install`

## Usage

1. Start the Rails server:

`rails server`

2. Navigate to `http://localhost:3000` in your web browser.

3. Type a search term into the search box and press Enter. The search results will be displayed below the search box.

## Testing

The application includes RSpec tests to ensure the backend APIs function as expected. To run the tests, use the following command:

`bundle exec rspec`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<username>/github-repo-search. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<username>/github-repo-search/blob/main/CODE_OF_CONDUCT.md).

## License

The application is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
