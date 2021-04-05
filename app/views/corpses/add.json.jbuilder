json.corpse_id @corpse.id
json.title @corpse.title
json.created_at @corpse.created_at.strftime('%B %d, %Y')
json.preview @last_entry.preview
