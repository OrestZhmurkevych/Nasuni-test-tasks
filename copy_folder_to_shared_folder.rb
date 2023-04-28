require 'fileutils'

class FolderUploader

  def initialize
    @source_directory = Dir.getwd
    @destination_directory = '/Users/ozhmu/Desktop/shared_folder' #insert here your shared folder destination
    # after that just execute 'ruby copy_folder_to_shared_folder.rb' command from the project directory
  end

  def upload_folder(folder_name)
    Dir.mkdir("#{@destination_directory}/#{folder_name}")
    Dir.chdir("#{@source_directory}/#{folder_name}") do
      entries = Dir.entries("#{@source_directory}/#{folder_name}").reject { |el| %w[. .. .DS_Store].include? el }
      entries.each do |entry|
        FileUtils.cp(entry, "#{@destination_directory}/#{folder_name}") if File.file?(entry)
        upload_folder("#{folder_name}/#{entry}") if File.directory?(entry)
      end
    end
  end
end

FolderUploader.new.upload_folder('folder_to_upload')
