SELECT AName, Animal.PickupTime, SName, CName, PickupDate 
FROM Animal, AnimalPickup, Shelter, Client
WHERE Animal.SPhone = Shelter.Sphone
 AND Animal.CPhone = Client.CPhone
 AND Animal.PickupTime = AnimalPickup.PickupTime;