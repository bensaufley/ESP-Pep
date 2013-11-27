class Card < ActiveRecord::Base
  VALUES = {
    en: ["Excellence","Teamwork","Service","Talent","Courage","Integrity","Flexibility","Accountability","Respect","Performance","Community","Fun"],
    es: ["Excelencia","Trabajo En Equipo","Servicio","Talento","Valor","Integridad","Flexibilidad","Responsabilidad","Respeto","Rendimiento","Comunidad","Divertido"]
  }
  SERVICESTANDARDS = {
    en: ["Smile & Greet","Use Names","Product Knowledge","Grooming Standards","Safety & Cleanliness","Anticipate Needs","Create Moments of Truth","Resolve Issues & Follow Up","Thank You","Teamwork & Cooperation","Privacy & Security","Be a Club Ambassador"],
    es: ["Sonría Y Salude","Usar Nombres","El Conocimiento Del Producto","Normas De Aseo Personal","Seguridad Y Limpieza","Anticipar Las Necesidades","Crear Momentos De La Verdad","Resolver Problemas Y Seguimiento","Gracias"," Trabajo En Equipo Y Cooperación"," Privacidad Y Seguridad"," Sé Un Embajador Club"]
  }
  has_one :club
  belongs_to :employee, ->(card) { where name: card.name }
  validates :name, :from_name, :club_id, :value, :service_standard, :note, presence: true
  validates_associated :club
end
