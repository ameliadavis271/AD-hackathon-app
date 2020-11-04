# INTERACTIONS

## Accounts
  - As a user I can create an account
  - As a user I can sign in, sign out etc
  - As a user I can see all posts regardless of login status

## Posts
  - As a user I must have an account to make a post
  - As a current_user I can make a post
  - As a current_user only I can edit and delete my own posts
  - As a user I can't delete a post by another user

## Comments
  - As a user I can make a comment on another users post
    - If user_signed_in? -> username
    - else -> anonymous

## Categories
  - As a user I can set a category for my post

# MODELS
1. Users
    - has_many Posts
    - has_many Comments
2. Posts
    - belongs_to Users, Post_Categories
    - has_many Comments
3. Post_Categories
4. Comments
    - belongs_to User, Posts
    - has_many Posts

# ROUTES
## Resources:
1. Users
    - All
2. Posts
    - All
3. Post_Categories
    - only: [Index, Show]
4. Comments
    - All except: [Index, Show]

# ERD
![ERD for hack-a-thon](/public/hackathon_ERD.png)