class Blgarticle < ApplicationRecord
    validates :atitle, presence: true,length:{minimum: 5,maximum: 80}
    validates :acontent, presence: true,length:{minimum: 10,maximum: 5000}
    validates :aimg, presence: true
end