class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: (40..200) }
  validates :store_id, presence: true
  after_create :generate_password
  private
  def generate_password
    if password.nil?
      chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
      password = ''
      8.times { password << chars[rand(chars.size)] }
      self.update(password: password)
    end
  end
end
