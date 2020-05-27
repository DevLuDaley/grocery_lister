
many to many to many
session joins all 3
nested route =  studios/id/session/new (associates that session to that studio and itself, will also need an artist)
form for new session (CRUD for session can be reused) need show/ index for :session 
artist (use a dropdown)

(need neew/show/index)
engineer = user
(name)

has_many sessions
has_many artists through sessions
has_many studios through sessions

artist
(name/has account) 
artist has_many sessions
artist has_many engineeers through sessions
has_many studios through sessions

session 
(date/time(maybe string as a placeholder), status, engineer,
artist, studio)
belongs_to artist
belongs_to engineer
belongs_to studio



studio (location)
has_many sessions
has_many artists through sessions
has_many engineers through sessions
