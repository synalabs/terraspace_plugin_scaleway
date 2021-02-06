require "scaleway_data"

module TerraspacePluginScaleway::Interfaces
  class Layer
    extend Memoist

    # interface method
    def namespace
      ScalewayData.project
    end

    # interface method
    def region
      ScalewayData.region
    end

    # interface method
    def zone
      ScalewayData.zone
    end

    # interface method
    def provider
      "scaleway"
    end
  end
end
