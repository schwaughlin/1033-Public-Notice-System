namespace :import_equipment do
  desc 'Imports equipment data'
  task first_import: :environment do
    require 'csv'
    spreadsheet = CSV.read('eqpt.csv')

    spreadsheet.each do |row|
      eqpt = Equipment.create(department: row[1], code: row[2], name: row[3], cost: row[6], date_acquired: row[9], records_shown: false)
    end
  end

  task clearout_lincoln: :environment do
    @equipment = Equipment.where("date_acquired IS NULL")
    @equipment.each do |piece|
      piece.date_acquired = "N/A"
      piece.save
    end
    @equipment = Equipment.where("date_acquired = ?", "N/A")
    @equipment.each do |piece|
      piece.date_acquired = Date.today - 10000
      piece.save
    end
  end
end
