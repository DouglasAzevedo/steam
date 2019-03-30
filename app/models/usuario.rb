class Usuario < ApplicationRecord

    validates :nome,:email, :nascimento, presence: true
    validates :email, uniqueness:true

end
