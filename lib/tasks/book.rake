desc "Copy _book files over into repo"
task :book do
  if !Dir.exists? "../bootstrap-sass/_book"
    puts "Couldn't find ../bootstrap-sass/_book"
    return false
  end

  system( "gitbook build ../bootstrap-sass --output=./public/bootstrap-sass" )
end