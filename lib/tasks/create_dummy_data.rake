# frozen_string_literal: true

task create_dummy_data: :environment do
  puts "Creating dummy data..."
  edward_iv = Individual.create(
    first_name: "Edward",
    last_name: "Plantagenet",
    birth_attributes: { occurred_at: "28 April 1442" }
  )
  elizabeth = Individual.create(
    first_name: "Elizabeth",
    last_name: "Woodville",
    birth_attributes: { occurred_at: "1437" }
  )
  Relationship.create(individual_one: edward_iv, individual_two: elizabeth)

  richard = Individual.create(
    first_name: "Richard",
    last_name: "Plantagenet",
    birth_attributes: { occurred_at: "21 September 1411" }
  )
  cecily = Individual.create(
    first_name: "Cecily",
    last_name: "Neville",
    birth_attributes: { occurred_at: "3 May 1415" }
  )

  edward_iv.update(father: richard, mother: cecily)
  Relationship.create(individual_one: richard, individual_two: cecily)

  _george = Individual.create(
    first_name: "George",
    last_name: "Plantagenet",
    father: richard,
    mother: cecily,
    birth_attributes: { occurred_at: "21 October 1449" }
  )
  _richard = Individual.create(
    first_name: "Richard",
    last_name: "Plantagenet",
    father: richard,
    mother: cecily,
    birth_attributes: { occurred_at: "2 October 1452" }
  )

  _edward_v = Individual.create(
    first_name: "Edward",
    last_name: "Plantagenet",
    father: edward_iv,
    mother: elizabeth,
    birth_attributes: { occurred_at: "2 November 1470" }
  )
  _elizabeth_of_york = Individual.create(
    first_name: "Elizabeth",
    last_name: "Plantagenet",
    father: edward_iv,
    mother: elizabeth,
    birth_attributes: { occurred_at: "11 February 1466" }
  )

  puts "Done!"
end
