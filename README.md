# README
Models:
User
Event
Comment
Invite
RSVP

Model variables:
* User
username: string
email:string
password:string
event:EventId has_many
comment:CommentId has_many
invite:InviteId has_many
rsvp: RsvpId has_many

* Event
title: string
content: string
host: UserId
member: UserId has_many
comment: Comment has_many
date: Time
location: String
category: String

* Comment
commenter: userId
content: string
Event: EventId
time: Time

* Invite
host: UserId
guest: UserId
event: EventId
status: int
time: Time

* RSVP
responser: UserId
receiver: UserId
event: EventId
result: boolean
time: Time
invite: InviteId
message: string

Routes
User: all resources, such as /users, /users/:id



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


