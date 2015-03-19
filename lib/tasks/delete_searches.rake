desc "Delete all search records older than 1 month"

namespace :delete_searches do

	task :delete_old_searches => :environment do
		Search.delete_all ["created_at < ?", 1.month.ago]
	end

	task :delete_all_searches => :environment do
		Search.delete_all
	end

end