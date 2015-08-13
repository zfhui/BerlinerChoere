case Rails.env
  when "development" || "production"

    if Category.all.empty?
      category_seed_file = "#{Rails.root}/db/seeds/categories.rb"
      if File.exists?(category_seed_file)
        puts "*** Loading #{category_seed_file} seed data for #{Rails.env} evironment(s)."
        require category_seed_file
        puts ">>>>> Seeded #{Category.count} category elements."
      end
    end
end
