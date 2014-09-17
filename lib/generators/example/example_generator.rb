class ExampleGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def add_action
    puts "Creating example #{name}"
    controller, action = name.split( /\// )
    puts "Controller: #{controller}"
    puts "Action    : #{action}"

    if action.blank?
      puts "specify controller/action as parameter"
      exit
    end

    controller_filename = "app/controllers/#{controller}_controller.rb"
    
    # Deal with the controller
    if !File.exists? controller_filename
      generate "controller #{controller}"
    end

    insert_into_file controller_filename, "\n  def #{action}\n  end\n", :before => "\nend\n"

    route "get '#{controller}/#{action}'"

    copy_file "sass.css.scss", "app/assets/stylesheets/#{controller}/#{action}.css.scss"

    copy_file "example.html", "app/views/#{controller}/#{action}.html"

    append_to_file "config/initializers/assets.rb", "Rails.application.config.assets.precompile += %w( #{controller}/#{action}.css )\n"
  end
end
