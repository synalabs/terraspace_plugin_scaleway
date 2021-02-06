require "memoist"
require "terraspace" # for interface

require "terraspace_plugin_scaleway/version"
require "terraspace_plugin_scaleway/autoloader"
TerraspacePluginScaleway::Autoloader.setup

module TerraspacePluginScaleway
  class Error < StandardError; end

  # Friendlier method for config/plugins/scaleway.rb. Example:
  #
  #     TerraspacePluginScaleway.configure do |config|
  #       config.resource.property = "value"
  #     end
  #
  def configure(&block)
    Interfaces::Config.instance.configure(&block)
  end

  def config
    Interfaces::Config.instance.config
  end

  @@logger = nil
  def logger
    @@logger ||= Terraspace.logger
  end

  def logger=(v)
    @@logger = v
  end

  extend self
end

Terraspace::Plugin.register("scaleway",
  backend: "s3",
  config_class: TerraspacePluginScaleway::Interfaces::Config,
  layer_class: TerraspacePluginScaleway::Interfaces::Layer,
  root: File.dirname(__dir__),
)
