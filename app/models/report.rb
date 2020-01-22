class Report < ApplicationRecord
    belongs_to :user

    accepts_nested_attributes_for :cow
    accepts_nested_attributes_for :field

    def cow_attributes=(cow_attributes)
        cow_attributes.values.each do |cow_attribute|
          cow = Cow.find_or_create_by(cow_attribute)
          self.cows << cow
        end
    end

    def field_attributes=(field_attributes)
        fields_attributes.values.each do |field_attribute|
          field = Field.find_or_create_by(field_attribute)
          self.fields << field
        end
    end
end
