module Spree
  module Background
    class Engine < ::Rails::Engine
      engine_name "spree-background"

      isolate_namespace Spree::Background

      initializer "spree.spree-background.async" do |app|
        Product.handle_asynchronously :duplicate
      end
    end
  end
end
