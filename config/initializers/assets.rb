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
Rails.application.config.assets.precompile += %w( dashboard.js dashboard.css
                                                  authentication.js authentication.css 
                                                  vacancies.css vacancies.js )

Rails.application.config.assets.precompile += %w( custom.js custom.css 
                                                  main.css nav-bg.js 
                                                  instor.png boot.png 
                                                  logo.png h-logo.png 
                                                  hero.png footer.png 
                                                  instor-logo.png )

Rails.application.config.assets.precompile += %w( jquery-2.2.3/dist/jquery.js )
