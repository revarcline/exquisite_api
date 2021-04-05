json.array! @corpses do |corpse|
  json.id corpse.id
  json.title corpse.title
  json.created_at corpse.created_at.strftime('%B %d, %Y')
end
