class Interview < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '対面' },
    { id: 3, name: 'オンライン' },
  ]

  include ActiveHash::Associations
  has_many :schedules

end