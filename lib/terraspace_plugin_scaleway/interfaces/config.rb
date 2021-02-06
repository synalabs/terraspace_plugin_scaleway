module TerraspacePluginScaleway::Interfaces
  class Config
    include Terraspace::Plugin::Config::Interface
    include Singleton # Config class must be a Singleton with the class .instance method

    def provider
      "scaleway"
    end

    # interface method
    # must return an ActiveSupport::OrderedOptions
    def defaults
      c = ActiveSupport::OrderedOptions.new
      # c.some_default = "value"
      c
    end
  end
end
