require 'html-proofer'

options = {
  :checks => %w[Favicon Images Links OpenGraph Scripts],
  :ignore_status_codes => [400, 401, 403, 999],
  :ignore_urls => [
    # Check with Christina if any of these can be removed
    /^https:\/\/senryu\.pub/, # Domain is dead,
    /https:\/\/www.fakefake.news/, # Domain squatter
    /https:\/\/www.learnpythonwithrune.org/, # Inactive domain
  ],
}

HTMLProofer.check_directory('./_site', options).run
