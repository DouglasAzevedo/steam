class Biblioteca < ApplicationRecord
  has_many :jogos_na_biblioteca, class_name: "Biblioteca"
  belongs_to :usuario
  belongs_to :jogo

  delegate :titulo, to: :jogo, prefix: false;

  validates :jogo_id, uniqueness: { scpope: :usuario_id }
end
