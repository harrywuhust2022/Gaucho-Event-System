# README

Creator: Kedai Zuo

Date: 12/3/2023

* Models

User
Event
Comment
Invite
Response

Model relationship details can be seen in models.

* Database

PostgreSQL


* Attention

Before running:

Configure postgreSQL to make the database used correspond to config/database.yml

Run rails db:create and rails db:migrate to generate database and tables.



* Resources

Almost all essential CRUD operations of every model are realized.

Route details can be seen in routes.rb.

Authentication and authorization are realized both in backend and frontend to make it safe.


* Main Services 

1. Login, logout and register

2. User can create posts, view friends and all events published.

3. User can create comments on a specific event

4. User can invite another user for a specific event

5. User can response to invites and be added to that event





