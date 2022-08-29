class OrganisationUnit < ApplicationRecord
  belongs_to :parent_organisation_unit_id, class_name: :Group, optional: true
  has_many :organisation_units, foreign_key: :parent_organisation_unit_id
  has_many :primary_contacts
  has_many :configs
end
