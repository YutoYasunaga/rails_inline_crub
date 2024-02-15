# frozen_string_literal: true

# == Schema Information
#
# Table name: staffs
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Staff < ApplicationRecord
  validates :name, presence: true, length: { in: 2..40 }
  validates :age, presence: true, numericality: { in: 18..70 }
end
