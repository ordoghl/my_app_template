def rename_files(files, from, to)
  files.each do |file|
    puts "  Updating #{file}"
    
    input = IO.read(file)
    
    output = File.new file, 'w'
    output << input.gsub(from, to)
    output.close
  end  
end


namespace :app do
  desc "Renames the application"
  task :rename, [:app_name] do |t, args|
    args.with_defaults(app_name: 'my_app_template') 

    new_name = args.app_name.camelize
    #current_name = IO.readlines('config/routes.rb').first.split('::')[0]
    current_name = "MyAppTemplate"

    puts "Renaming #{current_name} to #{new_name}"

    camelcase_files = [ 'app/views/layouts/application.html.haml',
              'Rakefile',
              'config.ru',
              'config/application.rb',
              'config/environment.rb',
              'config/routes.rb',
              'config/environments/development.rb',
              'config/environments/test.rb',
              'config/environments/production.rb',
              'config/initializers/secret_token.rb',
              'config/initializers/session_store.rb' ]

    rename_files(camelcase_files, current_name, new_name)
        
    underscore_files = [ '.rvmrc', 'config/initializers/session_store.rb']

    rename_files(underscore_files, current_name.underscore, new_name.underscore)

  end
end