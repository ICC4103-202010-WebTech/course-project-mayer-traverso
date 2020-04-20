# README

Explainations:

13. If an event is deleted and guest have already cast votes, the votes should be deleted as this is not a valuable information, our model implement this correctly by using dependencies destroy associations.

14. If an organization is deleted and events have been already created within the organization, the events will be deleted in our model.

15. If a user is deleted and the user has already created organizations, the organization will not be destroyed but the administator role will be sustituted by a random memember of the organization (this is accomplished through a callback). if the user has already created an event or comment theese will also be deleted.
