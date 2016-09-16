# We want to make a program that takes the images in a USB an paste them in an specific folder in the computer

def download
  # Require a library to manage files
  require 'fileutils'

  # We decide where we want the photos to be paste
  Dir.chdir('/Users/FALCON_PC/Dropbox/FOTOS')

  puts "What's the name of your USB?"
  usb_name = gets.chomp

  # Now we find all the .img files in the USB
  # This save an Array of names
  pic_names = Dir["/Volumes/#{usb_name}/**/*.jpg"]

  puts "What would you like to call this batch?"
  batch_name = gets.chomp
  puts
  print "Downloading #{pic_names.length} files: "

  # Counter
  pic_number = 1

  pic_names.each do |name|
    print '.'  #Progress bar

    new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end

    # "name" has a big long path on it, and "new_name" doesn't so it moves the file to the
    # current working directory
    # Also eliminates the file from the USB
    # File.rename name, new_name  => We can't use it to move a file

    FileUtils.cp(name, new_name)
    FileUtils.rm(name)


    pic_number += 1

  end

  puts
  puts "Everything done!"

end

download