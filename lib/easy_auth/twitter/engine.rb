module EasyAuth::Twitter
  class Engine < ::Rails::Engine
    isolate_namespace EasyAuth::Twitter

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end
  end
end
