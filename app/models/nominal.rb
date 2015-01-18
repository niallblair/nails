class Nominal < ActiveRecord::Base
  require 'csv'
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      
      nominal_hash = row.to_hash
      nominal = Nominal.where(id: nominal_hash["id"])
      
      if nominal.count == 1
        nominal.first.update_attributes(nominal_hash)
      else
        Nominal.create!(nominal_hash)
      end #if
    end #CSV.foreach
  end #self.import
end
