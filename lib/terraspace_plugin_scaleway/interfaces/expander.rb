require "scaleway_data"

module TerraspacePluginScaleway::Interfaces
  class Expander
    include Terraspace::Plugin::Expander::Interface

    delegate :organization, :project, :region, :zone, to: :scaleway_data
    alias_method :namespace, :project
    alias_method :location, :region

    def scaleway_data
      ScalewayData
    end
  end
end
