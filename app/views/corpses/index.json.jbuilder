json.array! @corpses do |corpse|
  json.id corpse.id
  json.title corpse.title
  json.created_at corpse.create_date
end
