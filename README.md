# Terraspace scaleway Cloud Plugin

scaleway Cloud support for [terraspace](https://terraspace.cloud/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'terraspace_plugin_scaleway'
```

## Configure

Optionally configure the plugin. Here's an example `scaleway.rb` for your terraspace project.

config/plugins/scaleway.rb

```ruby
TerraspacePluginscaleway.configure do |config|
  config.resource.property = "value"
end
```

By default:

* Item 1
* Item 2

The settings generally only apply if the resource does not yet exist yet and is created for the first time.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/USERNAME/terraspace_plugin_scaleway.
