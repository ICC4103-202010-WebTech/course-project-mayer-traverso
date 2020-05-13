# README
•Summary of implemented features:

  The user can:
  
  - see the people with whom he has a conversation
  
  - see the chats he has with different people
  
  - see the organizations and through it the events and users that belong to that organization
  
  - see the upcoming events as well as the guests and comments of the event
  
  - either see his own profile or see the profiles of different users

• Summary of features required in the assignment but pending.

  - We want to implement a more pleasant stylesheet
  
  - We want to add images to different profiles and chat icons
  
  - We want to see if the chat has already seen or responded to a message
  
  - We want to implement a more intuitive way to see the location of an event 
  
  - We want to implement functional forms for the different CRUD operations


Postman: https://www.getpostman.com/collections/fe0c339a95654a7120cc


Explanations:

13. If an event is deleted and a guest has already cast votes, the votes should be deleted as well, as it will be no longer valuable information. Our model implements this correctly by using dependencies-destroy associations.

14. If an organization is deleted and events have already been created within the organization, the events will be deleted in our model.

15. If a user is deleted and the user has already created organizations, the organization will not be destroyed but the administrator role will be substituted by a random member of the organization (this is accomplished through a callback). if the user has already created an event or comment these will also be deleted.
