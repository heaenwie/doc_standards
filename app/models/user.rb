class User < ApplicationRecord
  validates_nip_of :nip, message: 'Incorrect NIP'
  validates_pesel_of :pesel, message: 'Incorrect PESEL'
  validates :name, presence: true
end
