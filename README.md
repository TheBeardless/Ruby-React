# FullSnackApp

Rate your favorite snack.

### Technical Requirements

---

:heavy_check_mark: Have at least one database model <br>
:heavy_check_mark: Include wireframes <br>
:heavy_check_mark: Have semantically clean HTML and CSS <br>
:heavy_check_mark: Be deployed online  
:heavy_check_mark: A working full-stack or expanded API application, built by you, that has full CRUD functionality

### The Stack

---

- [`Ruby on Rails`]
- [`React`]
- [`Postgres`]


### Usage

---

Running the server side - Ruby on Rails:

```sh
rails install
rails server
```

Running the client - React:

```sh
yarn install
yarn start
```
Wireframes go here. 

User stories go here. 

### Learned along the way: 

---

Some Best Practice
- creating a private method to define what params can be permitted in an API to mitigate some unethical hacking. 
- active record validation helpers. example:"rating": ["17 isn't within 1 and 10"]
- exception handling
- namespace and versioning ie /api/v1/snacks
  
What I couldn't do: 
- "Webpacker now supports react.js 🎉" and you can create a frontend and backend in 1 directory to be hosted on one server (ie. Heroku). - didn't do this as it's a bit of a stretch goal. 
- render json: {message: something}, new record, status: :ok