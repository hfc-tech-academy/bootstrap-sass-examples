#!/usr/bin/env ruby -wU

require 'fileutils'
require 'pathname'

bootstrap_path = `gem which bootstrap-sass`.gsub( /\/lib\/bootstrap-sass.rb/, "" ).gsub( /\n/, "")
mixins_path = "#{bootstrap_path}/assets/stylesheets/bootstrap"

puts mixins_path

outdir = "bootstrap_reference"

def is_comment( line )
  line =~ /^\/\//
end

def is_seperator( line )
  line =~ /^\/\/ ---/
end

def uncommented_line( line )
  line.gsub( /\/\/\s*/, "" ).gsub( /\s*$/, "" )
end

def is_blank_comment( line )
  uncommented_line( line ) == ""
end

def is_top_level( line )
  line =~ /^[^\s]/
end

def is_comment_text( line )
  uncommented_line(line) != ""
end

reference = File.open( "#{outdir}//README.md", "w" )
mixin = File.open( "#{outdir}/mixins.md", "w" )

Dir.glob( "#{mixins_path}/**/_*scss" ).each do |file|
  outfile_base = file.gsub( /.*\/bootstrap\//, '' )

  outfile = outfile_base.gsub( /^_/, "" ).gsub( /\/_/, "\/" )
  puts outfile

  FileUtils.mkdir_p( Pathname.new( "#{outdir}/#{outfile}").dirname )

  # File.open( "#{outdir}/#{outfile}.md", "w" ) do |out|

  out = reference
  if outfile =~ /mixins/
    out = mixin
  end

  out.puts "# #{outfile}"
  out.puts "https://github.com/twbs/bootstrap-sass/tree/master/assets/stylesheets/bootstrap/#{outfile_base}"
  out.puts

  out_lines = []
  File.readlines( file ).each do |line|
    if line =~ /^\/\//
      out_lines << line
    elsif line =~ /^[^\s]/
      line.gsub!( /[{}]/, "" )
      out_lines << line
    end
  end


  out_lines.each_with_index do |line,idx|
    ## Comment lines
    if is_comment( line )
      if is_seperator( out_lines[idx+1] )
        out.puts "# #{uncommented_line( line )}"
      elsif is_blank_comment( out_lines[idx+1] ) && !is_comment_text( out_lines[idx-1] )
        out.puts "## #{uncommented_line( line )}"
      elsif !is_seperator(line)
        text = uncommented_line(line)
        # Call 3 words a header
        if( text.gsub( /[^\s]/, "" ).length <= 3 && text != "" && !is_comment_text( out_lines[idx-1] ) )
          out.puts "### #{text}"
        else
          out.puts text
        end
      else
        out.puts
      end
    elsif is_top_level( line )
      out.puts
      out.puts "`#{uncommented_line(line).gsub( /,$/, "" )}`"
      out.puts
    end
  end
end


#     out_lines.each_with_index do |line,idx|
#       if line =~ /^\/\//
#         output_line = line.gsub( /\/\/\s*/, "" ).gsub( /\s*$/, "" )
#         if out_lines[idx+1] =~ /^\/\/ ----/
#           out.puts "# #{output_line}"
#         elsif out_lines[idx+1] == "//\n"# && (out_lines[idx-1] == "" || out_lines[idx-1] =~ /^----/)
#           out.puts "## #{output_line}"

#           puts "---prev"
#           puts out_lines[idx-1]
#           puts "--current"
#           puts out_lines[idx]
#           puts "--next"
#           puts out_lines[idx+1]
#           puts "....."
#           puts
#         elsif output_line =~ /^-----/
#         else
#           out.puts output_line
#         end
#       elsif output_line != ""
#         out.puts
#         out.puts "`#{output_line}`"
#       else
#         out.puts
#       end
#     end
#   end
# end