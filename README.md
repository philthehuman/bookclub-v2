# Book Club

This app displays books and authors. Currently, books can be added.

Things to add:
- delete book
- edit book
- data validation
  - prevent adding the same book twice
  - more robust logic to prevent adding an author twice (i.e., case of first and last name entered shouldn't matter)
  - model validations for required fields

After these basic things are added, (and after you cover Devise and authentication) try adding:
- users (with Devise)
- user book lists (a user can maintain a list of favourite books)
  - add book to list
  - remove book from list
- users can follow each other
  - can show list of users I am following
  - follow/unfollow a user
  - show book lists for a user