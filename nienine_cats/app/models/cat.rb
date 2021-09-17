# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'date'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    COLORS = ['Red', 'Yellow', 'Brown', 'Black', 'Grey', 'White']
    SEX = ['M', 'F', 'N', 'Q']
    validates :birth_date, :name, :sex, :description, presence: true
    validates :color, inclusion: { in: COLORS }
    validates :sex, inclusion: { in: SEX }

    def age
        ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
    end
end
