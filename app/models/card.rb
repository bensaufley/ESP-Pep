class Card < ActiveRecord::Base
  VALUES = ["Excellence","Teamwork","Service","Talent","Courage","Integrity","Flexibility","Accountability","Respect","Performance","Community","Fun"]
  SERVICESTANDARDS = [ "Smile & Greet","Use Names","Product Knowledge","Grooming Standards","Safety & Cleanliness","Anticipate Needs","Create Moments of Truth","Resolve Issues & Follow Up","Thank You","Teamwork & Cooperation","Privacy & Security","Be a Club Ambassador" ]
  has_one :club
end
