namespace :konacha do
  task :tests do
    Rails.env = 'test'
    Rake::Task['konacha:run'].invoke
  end
end
