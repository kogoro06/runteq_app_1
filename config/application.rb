require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
  
    # 中略
	  
    # ここから下5行を追記
    config.generators do |g|
      g.helper false             # helper ファイルを作成しない
      g.test_framework false     # test ファイルを作成しない
      g.skip_routes true         # ルーティングの記述を作成しない
    end
	  # ここまで追記
  end
end