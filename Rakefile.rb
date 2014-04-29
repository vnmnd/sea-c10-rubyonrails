desc 'print the names in names file'
task :print_names do
  puts File.open('names').readlines
end

task :mk_cls_dir do
  dir_name = 'class'
  Dir.mkdir dir_name unless Dir.exists? dir_name
end

task :crt_students_dirs => [:mk_cls_dir] do
  File.open 'names' do |f|
    Dir.chdir 'class'
    f.each do |name|
      fl_name = name.chomp
      Dir.mkdir fl_name unless Dir.exists? fl_name
    end
  end
  Dir.chdir '..'
  Rake::Task['print_names'].invoke
  helpr_meth
end

def helpr_meth
  puts "Hello world!"
end







task :default => :hello

desc 'Outputs hello'
task :hello do
  puts "hello"
end

desc 'Outputs there'
task :there do
  puts "there"
end

desc 'Outputs world'
task :world do
  puts "world"
end

task :say_hi_to, [:first_name, :last_name] => [:hello, :there] do |task, args|
  puts args.first_name
  puts args.last_name
end

desc 'Outputs hello, there, world'
task :hello_world => [:hello, :there, :world]


