class Hour < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10時' }, { id: 3, name: '11時' }, { id: 4, name: '12時' },
    { id: 5, name: '13時' }, { id: 6, name: '14時' }, { id: 7, name: '15時' },
    { id: 8, name: '16時' }, { id: 9, name: '17時' }, { id: 10, name: '18時' },
    { id: 11, name: '19時' }, { id: 12, name: '20時' }, { id: 13, name: '21時' },
    { id: 14, name: '22時' }
  ]
  include ActiveHash::Associations
  has_many :tenant
  has_many :reserve
end