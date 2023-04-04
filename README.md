# README
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/prince475/Phase-4-project/phase-4-project-blog-post-backend/graphs/commit-activity)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)
[![Open Source Love svg1](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)

# BLOGIFY Blog post api
This api has been used to build a single page application that allows with a creative acumen
to put down their imaginations into prolific words and post their reflections and ideas for everyone to see.

## Entity Relationship Diagram(ERD)
The ERD has been attached below to show and demonstrate the relationships between the different model entities.

<img src="images/BlogifyAPIERD.png" width="1000">

## Pre-Requisites
In order to use this repository you will need the following:



- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![sqlite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![JWT](https://img.shields.io/badge/JWT-black?style=for-the-badge&logo=JSON%20web%20tokens)

- **Ruby `v2.7.4`**
- **Rails `v7.0.4`**
- **SQlite3 `v1.4`**
- **ActiveRecord `v7.0.4`**
- **Puma `v6.1`**
- **Faker `v0.14`**
- **Bcrypt `v3.1.7`**

## Topics Covered
The following are the concepts covered in this practice session

- Active Record Migrations.
- Active Record Associations.
- Working with a database.
- DB routing.
- Performing CRUD operations.
- Serialization.
- Api creation.

## A deployed live link to this project:
This is the deployed link
       https://blog-post-api.onrender.com


## Installation

To use this repo on your machine requires some simple steps

### Alternative One

- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone https://github.com/Phase-4-project/phase-4-project-blog-post-backend

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd Phase-4-project/phase-4-project-blog-post-backend

- (Optional) Open it in ``Visual Studio Code``

        code .

- (Alternate Option) Open it in any editor of your choice.
- Hurray! You are one step closer to being as intelligent as Einstein.

### Alternative Two

- On the top right corner of this page there is a button labelled ``Fork``.
- Click on that button to fork the repo to your own account.
- Take on the process in ``Alternative One`` above.
- Remember to replace your username when cloning.

        git clone https://github.com/your-username-here/Phase-4-project/phase-4-project-blog-post-backend

## Running the application
Running the application is very straight forward. You can use the following steps to run the app.

1. Ensure the ruby gems are setup in your machine
    ```{shell}
   bundle install
   ```
2. Perform any pending database migrations  and seeding
   ```{shell}
   rails db:migrate db:seed
   ```
3. Run the application
    ```{shell}
    rails server
    ```
4. Open the application from your browser
    ```
   http://localhost:3000
   ```

## Application
This application is a simple web API that allows users to:
## user end points
- Register a new user account.
- Log in to existing/created user account.
- verify login was successful and if user is authorized

## Post/article
- Create a post/article.
- View all post/article.
## User_post/ user_article
- Create a user-post/user-article.
- Delete a user-post/user-article.
- Like/Unlike a user-post/user-article.
- Create a user-post/user-article and select a category.
## Commnets/ user_reviews
- View comments/reviews.
- Edit comments/reviews.
- Delete comments/reviews.

### MODELS
Database schema definitions.

#### user
| COLUMN          | DATA TYPE | DESCRIPTION                           |
|-----------------|-----------|---------------------------------------|
| id              | Integer   | Unique Identifier.                    |
| username        | String    | User's Name.                          |
| email           | String    | User's Email                          |
| password_digest | String    | User's Password hashed with `BCrypt`. |
| updated_at      | Date      | The date the user was updated.        |
| createdAt       | Date      | The date the user was created.        |


#### posts
| DATA TYPE    | COLUMN     | DESCRIPTION                   |
|--------------|------------|-------------------------------|
| t.string     |title       | title of the post             |
| t.string     |description | description of the post       |
| t.string     |image_url   | image url of the post         |
| t.integer    |user_id     | user id of the post           |
| t.datetime   |created_at  | the date the post was created |
| t.datetime   |updated_at  | the date the post was updated |

#### user_post

| DATA TYPE    | COLUMN     | DESCRIPTION                        |
|--------------|------------|------------------------------------|
| t.string     |title       | title of the post                  |
| t.string     |content     | content of the post                |
| t.string     |image_url   | image url of the post              |
| t.integer    |user_id     | user id of the user_post           |
| t.integer    |post_id     | post id of the user_post           |
| t.datetime   |created_at  | the date the user_post was created |
| t.datetime   |updated_at  | the date the user_post was updated |

#### comments

| DATA TYPE    | COLUMN     | DESCRIPTION                         |
|--------------|------------|-------------------------------------|
| t.text       |description | title of the comment                |
| t.integer    |user_id     | user_id relating to the comment     |
| t.integer    |user_post_id| user_post_id relating to the comment|
| t.datetime   |created_at  | the date the comment was created    |
| t.datetime   |updated_at  | the date the comment was updated    |

#### profiles

| DATA TYPE    | COLUMN        | DESCRIPTION                           |
|--------------|---------------|---------------------------------------|
| t.string     |username       | username for the profile              |
| t.string     |email          | email for the profile                 |
| t.string     |bio            | profile bio                           |
| t.integer    |user_id        | user id of the belonging to a profile |
| t.datetime   |created_at     | the date the profile was created      |
| t.datetime   |updated_at     | the date the profile was updated      |
# Authors
This project was contributed to by:
- [Prince Daniel](https://github.com/prince475/)
- [Daryl](https://github.com/Wattima)
- [Duncan](https://github.com/dancun616)
- [Edna](https://github.com/Edna1996)


# License
The project is licensed under Mozilla Public License Version 2.0
