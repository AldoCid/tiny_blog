# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )

Paperclip::Attachment.default_options[:default_url] = "/images/:style/empty-profile.jpg"
