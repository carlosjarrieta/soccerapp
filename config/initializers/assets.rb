# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )


# CSS CUSTOMS
Rails.application.config.assets.precompile += %w( custom-card.css )

# SCRIPTS CUSTOM
Rails.application.config.assets.precompile += %w( js/d3.min.js )
Rails.application.config.assets.precompile += %w( js/getmdl-select.min.js )
Rails.application.config.assets.precompile += %w( js/material.min.js )
Rails.application.config.assets.precompile += %w( js/mdl-modal.js )
Rails.application.config.assets.precompile += %w( js/nv.d3.min.js )
Rails.application.config.assets.precompile += %w( js/layout/layout.min.js )
Rails.application.config.assets.precompile += %w( js/scroll/scroll.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/charts/discreteBarChart.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/charts/linePlusBarChart.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/charts/stackedBarChart.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/line-chart/line-charts-nvd3.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/map/maps.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/pie-chart/pie-charts-nvd3.min.js )
Rails.application.config.assets.precompile += %w( js/widgets/table/table.min.js )
Rails.application.config.assets.precompile += %w( js/material-modal.min.js )
Rails.application.config.assets.precompile += %w( js/jquery.loading-indicator.js )
