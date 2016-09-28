namespace :import_equipment do
  desc 'Imports equipment data'
  task first_import: :environment do
    require 'csv'
    spreadsheet = CSV.read('eqpt.csv')

    spreadsheet.each do |row|
      eqpt = Equipment.create(department: row[1], code: row[2], name: row[3], cost: row[6], date_acquired: row[9], records_shown: false)
    end
  end
end
