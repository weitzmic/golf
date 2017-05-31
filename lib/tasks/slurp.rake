namespace :slurp do
  desc "TODO"
  task test: :environment do

    require "csv"


csv_text = File.read(Rails.root.join("lib", "csvs", "Book1.csv"))
csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")

puts csv_text

  end

end
