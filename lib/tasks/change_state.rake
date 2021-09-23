namespace :change_state do
  desc "Blogのstateを変更"
  task :change_published => :environment do
    Blog.where(state:2).find_each do |blog|
      blog.published!
    end
  end
end