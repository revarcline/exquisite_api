this is the rails backend for the [exquisite](https://exquisite.buckar.ooo/) single-page-application.
it serves up json objects from a postgresql database. frontend code available [here](https://github.com/revarcline/exquisite_page)

routes:

`GET /corpses`: index of all corpse entries, showing title and id
`GET /corpses/:id`: shows title and full content (concatenated entries) of corpse by id
`GET /corpses/:id/add`: shows preview of last entry in corpse
`GET /corpses/random`: same as `:id/add` but returns a random corpse
`POST /corpses`: create a new corpse
`POST /corpses/:id/entries`: create a new entry for corpse id
