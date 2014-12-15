class FileController < ApplicationController  
  include FileMethods #In controllers/concerns/file_methods.rb

  class Dog
    attr_reader :name

    def initialize(name)
      @name = name
    end
  end


  def file_dir
    @files = %w[ a b c].map

    render :partial => 'list_files', :locals => { file_names: @files }
  end 
    
  def test
    @dogs = [
      Dog.new("Sam"),
      Dog.new("Betty"),
      Dog.new("Pete"),
    ]

    @dog_names = @dogs.map {|dog| dog.name }
    #p options_for_select(@dogs)

    #dogs.each {|dog| puts dog}
    #dog_names.each {|dog_name| puts dog_name}


    session[:val] = Dog.new("Sam")
    #puts "****#{do_calculation(1, 2)}"
    @radio_button_value = "miniprod" 
    #Do stuff with 'miniprod to get the list of dirs'
    @dir_list = [
      'dir1_miniprod',
      'dir2_miniprod'
    ]
  end

  def some_action
    puts "*****#{session[:val].name}"
  end

  def index
    if request.xhr?
      #Use params[:server] and params[:dir] to retrieve whatever files you want
      server = params[:server]
      dir = params[:dir]
      puts "***#{server}" #Will be output to server window
      puts "***#{dir}"  

      retrieved_file_names = [
        "a (#{server}/#{dir})", 
        "b (#{server}/#{dir})", 
        "c (#{server}/#{dir})",
      ]

      render partial: 'select', locals: {file_names: retrieved_file_names}
    else
      @servers = %w[ miniprod watch archive local ].each
      @radio_labels =  [
        "MiniProd Watch Folder",
        "Prod Watch Folder",
        "Prod Archive Folder",
        "Local Test",
      ].each

      @miniprod_dirs = ['miniprod_dir1', 'miniproddir2']
      @watch_dirs = ['watch_dir1', 'watch_dir2', 'watch_dir3']
      @archive_dirs = ['archive_dir1', 'archive_dir2', 'archive_dir3']
      @local_dirs = ['local_dir1', 'local_dir2', 'local_dir3']
    end
    
    #By default, renders 'views/file/index.html.erb'
  end
=begin
  def index
    if request.xhr?
      case params[:select_id]
        when 'server'
          @id_attr = 'directory'
          server_name = params[:selection]
          server = Server.find_by(name: server_name)
          @option_objs = server.directories
          render partial: "select", locals: {id_attr: @id_attr, option_objs: @option_objs}
        when 'directory'
          @id_attr = 'file_alias'
          directory_name = params[:selection]
          directory = Directory.find_by(name: directory_name)
          @option_objs = directory.file_aliases
          render partial: "select", locals: {id_attr: @id_attr, option_objs: @option_objs}
      end
    else
      @id_attr = 'server'
      @next_select = 'directory'
      @option_objs = Server.all
    end

  end
=end

end
