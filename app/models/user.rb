class User < ApplicationRecord
  validates_nip_of :nip, message: 'Incorrect NIP'
  validates_pesel_of :pesel, message: 'Incorrect PESEL'
  validates :nip, uniqueness: true
  validates :pesel, uniqueness: true
  validates :name, presence: true

  def self.to_csv
    attributes = %w{name nip pesel}
    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << user.attributes.values_at(*attributes)
      end
    end
  end

end
