class Genero < ApplicationRecord

    validates :nome, uniqueness:true
    validates :nome, presence:true

end
