
User/salesperon
Company/vendor
List
Item
Location
    :join table needs fk(foreign key) of user and list
walmart = location has fk(foreign key) of user and list
though list to create a new location

1 many_many = airplane has many airports through flights(join table)
2 has-many_through
aka
1 has_many/belongs_to
1 many_to_many relationship (with has_many through)
------------------------------------------------------
#flights = join table for airplanes and airports

flights belong_to airplanes
flights belong_to airports
*flights belong_to company?

#airport

#airplane
airplane has many :flights
airplane belongs_to company

#company
company has_many airplanes
*company has many flights?
------------------------------------------------------
Lu's RECORDING STUDIO

artist(name/has account) (artist has many locations through sessions)
has_many engineers through sessions

engineer = user (name)
has_many artist through sessions

session (date/time(maybe string as a placeholder), status, engineer,
artist, studio)
belongs_to artist/engineer

studio (location) (has many engineers)

Create an Artist account
CRUD that account
Create a recording session
CRUD a recording session
Create an Engineer/equipment
CRUD a recording session
Create a Studio(location)
CRUD studio

SQL/AR query method to show 'where'

player
team/organization
contract = join - (duration/length, worth/salary)
Jersey's - - - 
player/contract

music 
or 
sports