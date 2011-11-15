class Smart < ActiveRecord::Base
  #esto es para definir tablas ya existentes
  #set_table_name :dispositivos
  #set_primary_key :code

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    #if line_items.count == 0 ó
    if line_items.first
      # Agrega un mensaje de error a nivel del objeto, no a nivel del atributo
      errors.add(:base, "Existe line item dependiente del smart")
      return false
    else
      return true
    end
  end

  validates :name, :uniqueness => true,
                  :presence => {:message => "Ingresar dato...."}

  validates :descripcion, :length => {:minimum => 10, :message => 'Debe cargar minimo 10 caracteres'}

  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}

  validates :image_url, :format => {
      :with => /\.(gif|jpg|png)/i,
      # /[a-z]+/i,
      :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end
