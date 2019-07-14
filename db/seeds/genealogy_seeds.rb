# frozen_string_literal: true

class GenealogySeeds
  class << self
    def run
      ned_stark = Individual.create(first_name: "Eddard", last_name: "Stark", sex: :male)
      catelyn_tully = Individual.create(first_name: "Catelyn", last_name: "Tully", sex: :female)
      # Relationship.create(
      #   individual_one: ned_stark,
      #   individual_two: catelyn_tully,
      #   relationship_type: RelationshipType.marriage
      # )

      robb_stark = Individual.create(first_name: "Robb", last_name: "Stark", sex: :male)
      Birth.create(individual: robb_stark, mother: catelyn_tully, father: ned_stark)

      sansa_stark = Individual.create(first_name: "Sansa", last_name: "Stark", sex: :female)
      Birth.create(individual: sansa_stark, mother: catelyn_tully, father: ned_stark)

      arya_stark = Individual.create(first_name: "Arya", last_name: "Stark", sex: :female)
      Birth.create(individual: arya_stark, mother: catelyn_tully, father: ned_stark)

      brandon_stark = Individual.create(first_name: "Brandon", last_name: "Stark", sex: :male)
      Birth.create(individual: brandon_stark, mother: catelyn_tully, father: ned_stark)

      rickon_stark = Individual.create(first_name: "Rickon", last_name: "Stark", sex: :male)
      Birth.create(individual: rickon_stark, mother: catelyn_tully, father: ned_stark)
    end
  end
end
