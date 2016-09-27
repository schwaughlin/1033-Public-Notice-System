namespace :import_equipment do
  desc 'Imports equipment data'
  task first_import: :environment do
    Equipment.all.each do |piece|
      if piece.updated_at == Date.today
        #trigger action
      end
    end
  end
end
