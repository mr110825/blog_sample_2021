namespace :change_state do
  desc "Blogのstateを変更"
  task :change_published => :environment do
    Blog.find_each do |blog|
      if blog.publish_wait?
        blog.published!
      end
    end
  end
end