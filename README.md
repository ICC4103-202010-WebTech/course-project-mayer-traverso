# README
•Summary of implemented features:
  The user can:
  - see the people with whom he has a conversation
  - see the chats he has with different people
  - see the organizations and through it de events and users that beolong to that organization
  - see the upcoming events aswell as the guests an coments of that event
  - either see his own profile or see the profiles of different users

• Summary of features required in the assignment but pending.
  - We want to implement a more pleasant stylesheet
  - We want to add images to the the different profiles and chat icons
  - we want to see if a chat has already seen or respond a message
  - we want to implement a more intuitive way of see the location of an event 
  - we want to implement funtional forms for the different CRUD operations


Postman: https://www.getpostman.com/collections/fe0c339a95654a7120cc




Explanations:

13. If an event is deleted and a guest have already cast votes, the votes should be deleted aswell, as it will be no longer a valuable information. Our model implement this correctly by using dependencies-destroy associations.

14. If an organization is deleted and events have already been created within the organization, the events will be deleted in our model.

15. If a user is deleted and the user has already created organizations, the organization will not be destroyed but the administator role will be sustituted by a random memember of the organization (this is accomplished through a callback). if the user has already created an event or comment theese will also be deleted.

