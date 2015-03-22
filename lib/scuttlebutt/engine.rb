module Scuttlebutt
  class Engine < ::Rails::Engine
    isolate_namespace Scuttlebutt

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
