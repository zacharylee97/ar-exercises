class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3, }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :at_least_mens_or_womens_apparel
  before_destroy :check_for_empty_store

  private
  def at_least_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "at least one must be true")
      errors.add(:womens_apparel, "at least one must be true")
    end
  end

  def check_for_empty_store
    @employees = Employee.select(:store_id).where(store_id: self.id)
    if @employees.length != 0
      errors.add(:base, "Cannot destroy store with employees")
      throw :abort
    end
  end
end


