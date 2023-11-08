# TEC Website

Welcome to the repository for the TEC Website.
This site is built using Jekyll and hosted on GitHub Pages.
Below you'll find instructions for setting up a local development environment, as well as guidelines for contributing to
the project.

## Table of Contents

- [Testing Changes Locally](#testing-changes-locally)
- [Contribution Guidelines](#contribution-guidelines)
- [Deployment](#deployment)
- [License](#license)
- [Contact](#contact)

## Testing Changes Locally

When working on the website, it is essential to test changes locally before pushing them to the live site.
This way, you can ensure everything is working as expected.
We use Jekyll to build the website, and you can follow these steps to run a local instance of the site:

### Prerequisites

- Ensure you have Ruby installed. Jekyll requires a Ruby version greater than or equal to 2.5.0.
- Install Bundler by running `gem install bundler`.
- Install Jekyll and other dependencies from the GitHub Pages gem by running `bundle install`.

### Running the Local Server

To run the site locally with live reloading and strict front matter checking, use the following command:

```bash
bundle exec jekyll serve --livereload --strict_front_matter --source docs --open
```

* `--livereload` will automatically refresh the page when changes are detected
* `--strict_front_matter` will throw an error if there are any issues with the front matter in your markdown
files
* `--source docs` will use the `docs` directory as the source directory for the site
* `--open` will automatically open the site in your default web browser

### Viewing the Site

Once the local server is running, you can view the site by opening a web browser and navigating
to [`http://localhost:4000`](http://localhost:4000).

### Troubleshooting

If you run into any issues while running the local server, make sure all the prerequisites are properly installed and
that you are running the command from the root directory of the repository.

Feel free to consult the [Jekyll documentation](https://jekyllrb.com/docs/) for more detailed information or open an
issue if you need further assistance.

## Contribution Guidelines

We welcome contributions to the TEC Website! Before submitting a pull request, please review
our [contribution guidelines](CONTRIBUTING.md) and ensure that your changes align with our coding standards and project
goals.

## Deployment

The TEC Website is automatically deployed to GitHub Pages upon merging to the main branch.
Changes should be thoroughly
tested locally before being submitted as a pull request.

## Contact

If you have any questions, concerns, or suggestions, please feel free to open an issue or contact the project
maintainers directly.

Thank you for your interest in the TEC Website, and happy coding!
