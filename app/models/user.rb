class User < ApplicationRecord
    validates :nombre, presence: true
    validates :dni, presence: true
    validates :type_person, presence: true
    validates :fecha_emision, presence: true
    validates :fecha_vencimiento, presence: true
    validates :email, presence: true
    validates :telefono_p, presence: true


end
