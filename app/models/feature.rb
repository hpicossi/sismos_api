class Feature < ApplicationRecord
    # Validaciones básicas
    validates :external_id, presence: true, uniqueness: true
    validates :magnitude, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :place, presence: true
  
    # Validación del formato de fecha y hora
    validates :time, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\z/ }
  
    # Validación condicional para el campo tsunami
    validates :tsunami, presence: true, if: -> { magnitude.present? && magnitude > 7 }
  
    # Validación de longitud para el campo place
    validates :place, length: { maximum: 255 }
  end
  
  