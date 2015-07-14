[Rails.env].each do |seed|

  if Category.all.empty?
    category_seed_file = "#{Rails.root}/db/seeds/categories.rb"
    if File.exists?(category_seed_file)
      puts "*** Loading #{category_seed_file} seed data for #{seed} evironment(s)."
      require category_seed_file
      puts ">>>>> Seeded #{Category.count} category elements."
    end
  end
end
