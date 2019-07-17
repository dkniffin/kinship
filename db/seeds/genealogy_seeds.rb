# frozen_string_literal: true

class GenealogySeeds
  class << self
    def run
      got = Source.create(name: "A Game Of Thrones")
      ned_stark = Individual.create(
        first_name: "Eddard",
        last_name: "Stark",
        sex: :male,
        sources: [got]
      )
      catelyn_tully = Individual.create(
        first_name: "Catelyn",
        last_name: "Tully",
        sex: :female,
        sources: [got]
      )
      Relationship.create(
        individual_one: ned_stark,
        individual_two: catelyn_tully,
        sources: [got]
      )

      robb_stark = Individual.create(
        first_name: "Robb",
        last_name: "Stark",
        sex: :male,
        sources: [got]
      )
      Birth.create(
        individual: robb_stark,
        mother: catelyn_tully,
        father: ned_stark,
        sources: [got]
      )

      sansa_stark = Individual.create(
        first_name: "Sansa",
        last_name: "Stark",
        sex: :female,
        sources: [got]
      )
      Birth.create(
        individual: sansa_stark,
        mother: catelyn_tully,
        father: ned_stark,
        sources: [got]
      )

      arya_stark = Individual.create(
        first_name: "Arya",
        last_name: "Stark",
        sex: :female,
        sources: [got]
      )
      Birth.create(
        individual: arya_stark,
        mother: catelyn_tully,
        father: ned_stark,
        sources: [got]
      )

      brandon_stark = Individual.create(
        first_name: "Brandon",
        last_name: "Stark",
        sex: :male,
        sources: [got]
      )
      Birth.create(
        individual: brandon_stark,
        mother: catelyn_tully,
        father: ned_stark,
        sources: [got]
      )

      rickon_stark = Individual.create(
        first_name: "Rickon",
        last_name: "Stark",
        sex: :male,
        sources: [got]
      )
      Birth.create(
        individual: rickon_stark,
        mother: catelyn_tully,
        father: ned_stark,
        sources: [got]
      )
    end
  end
end
