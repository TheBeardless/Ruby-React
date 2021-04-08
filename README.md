# FullSnackApp

Rate your favorite snack.

### Technical Requirements

---

:heavy_check_mark: Have at least one database model <br>
:heavy_check_mark: Include wireframes <br>
:heavy_check_mark: Have semantically clean HTML and CSS <br>
Be deployed online  <br>
A working full-stack or **expanded API application** <br>
:heavy_check_mark: built by you <br>
:heavy_check_mark: that has full CRUD functionality <br>

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
rails server -p 4000
```

Running the client - React:

```sh
yarn install
yarn start
```

### Learned along the way: 

---

Some Best Practice
- creating a private method to define what params can be permitted in an API to mitigate some unethical hacking. 
- active record validation helpers. example:"rating": ["17 isn't within 1 and 10"]
- exception handling
- namespace and versioning ie /api/v1/snacks
  
What I couldn't do: 
- "Webpacker now supports react.js 🎉" and you can create a frontend and backend in 1 directory to be hosted on one server (ie. Heroku). - didn't do this as it's a bit of a stretch goal. 