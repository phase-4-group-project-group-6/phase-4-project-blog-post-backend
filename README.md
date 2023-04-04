# Blog API
This is a Rails API that provides CRUD functionalities for a blog, including users, posts, comments, and author profiles.

## Setup
To run the API locally, follow these steps:

1. Clone the repository.
2. Run bundle install to install the required dependencies.
3. Run rails db:migrate to run the migrations.
4. Run rails s to start the server.

## Endpoints
The API provides the following endpoints:

### Users
* POST /users: Create a new user.
* POST /users/login: Log in a user.
* DELETE /users/logout: Log out a user.
* GET /user/login/check: Check if a user is logged in.

### User Posts
* GET /user_posts: Get all user posts.
* GET /user_posts/:id: Get a user post by ID.
* POST /user_posts: Create a new user post.
* PATCH /user_posts/:id: Update a user post.
* DELETE /user_posts/:id: Delete a user post.

### Comments
* GET /comments: Get all comments.
* GET /comments/:id: Get a comment by ID.
* POST /comments: Create a new comment.
* PATCH /comments/:id: Update a comment.
* DELETE /comments/:id: Delete a comment.

### Profiles
* GET /profiles: Get all profiles.
* GET /profiles/:id: Get a profile by ID.
* POST /profiles: Create a new profile.
* DELETE /profiles/:id: Delete a profile.

### Authors
* GET /authors: Get all authors.
* GET /authors/:id: Get an author by ID.

### Posts
* GET /posts: Get all posts.
* GET /posts/:id: Get a post by ID.


## Schema
The database schema includes the following tables:

* users: Contains information about users.
* user_posts: Contains information about user-generated posts.
* comments: Contains information about comments.
* user_profiles: Contains information about user profiles.
* authors: Contains information about authors.
* posts: Contains information about posts.


The tables are linked together through foreign keys, as follows:

* comments belongs to users and user_posts.
* user_posts belongs to users and posts.
* user_profiles belongs to users.
* posts belongs to authors.

## License
This project is licensed under the terms of the MIT license.






