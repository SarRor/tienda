class Producto < ApplicationRecord
  has_many :articulos_agregados
  has_many :pedidos, through: :articulos_agregados
  before_destroy :ensure_not_referenced_by_any_articulo

  mount_uploader :imagen, ImagenUploader

  validates :nombre, :descripcion, :imagen, presence: true
  validates :precio, numericality: {greater_than_or_equal_to: 0.01}
  validates :nombre, uniqueness: true
  validates :imagen, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png|jpeg)\Z}i,
    message: 'Debe ser un archivo con extención GIF, JPG, JPEG o PNG'
  }
  validates :nombre, length: {minimum: 3}

  private

    # ensure that there are no line items referencing this producto
    def ensure_not_referenced_by_any_articulo
      unless articulos_agregados.empty?
        errors.add(:base, 'Articulo agregado en carrito')
        throw :abort
      end
    end
end
