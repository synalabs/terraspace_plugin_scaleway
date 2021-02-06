module TerraspacePluginScaleway::Interfaces
  class Backend
    include Terraspace::Plugin::Backend::Interface
    include TerraspacePluginScaleway::Clients

    # interface method
    def call
      # @info hash is available from the interface module
      # It contains the backend struture.
    end
  end
end
