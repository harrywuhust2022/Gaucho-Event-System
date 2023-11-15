# README
Creator: Kedai Zuo
Date: 11/14/2023

* Models
User
Event
Comment
Invite
Response

Model relationship details can be seen in models.

* Database 
Sqlite


* Attention
Before running, run rails db:migrate to generate tables.

* Resources
Almost all essential CRUD operations of every model are realized.

Route details can be seen in routes.rb.


* Main Services 
1. Create users
2. User can create posts
3. User can create comments on a specific event(because we don't have authentication, the commenter always is admin, who will be created automatically when a first comment is created)
4. User can invite another user for a specific event
5. User can response to invites and be added to that event




