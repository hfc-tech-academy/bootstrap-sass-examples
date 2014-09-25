# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( navbars/fixed.css )
Rails.application.config.assets.precompile += %w( dropdowns/basic.css )
Rails.application.config.assets.precompile += %w( dropdowns/rounded.css )
Rails.application.config.assets.precompile += %w( carousel/basic.css )
Rails.application.config.assets.precompile += %w( carousel/full_width.css )
Rails.application.config.assets.precompile += %w( carousel/controls.css )
Rails.application.config.assets.precompile += %w( pagination/basic.css )
Rails.application.config.assets.precompile += %w( pagination/spaced_styled.css )
Rails.application.config.assets.precompile += %w( navbars/sidebar.css )
Rails.application.config.assets.precompile += %w( navbars/affixed.css )
Rails.application.config.assets.precompile += %w( navbars/offcanvas.css )
Rails.application.config.assets.precompile += %w( navbars/sidebottom.css )
Rails.application.config.assets.precompile += %w( breadcrumbs/basic.css )
Rails.application.config.assets.precompile += %w( breadcrumbs/styled.css )
Rails.application.config.assets.precompile += %w( badges/basic.css )
Rails.application.config.assets.precompile += %w( badges/cornered.css )
Rails.application.config.assets.precompile += %w( welcome/index.css )
