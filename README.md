# README
Instructions for getting started:

Clone the repo and ensure that you can start a rails server (You'll need to do this w/ https).

Create a pull request with your name (ie. John-Smith)

Complete a many steps as you can below.

Commit to the PR branch and push to the repo


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Please complete as many steps as you can in the allotted timeframe.  If any step or sub-step is unknown to you, skip to the next one.  The goal is to show what you know without getting stuck on any step.  If any steps are unclear, feel free to ask questions.

1.  Create an "invitation" model.

2.  Your model should require each of the following:  code (8 characters), first_name (string), last_name (string), email (string), activated_at (datetime).

3.  Require that the email be a valid email address.

4.  Require that there are no duplicate email addresses.
  
5.  Create routes for invitation that allow display of all invitations, a detailed view of an invitation, and the ability to update an invitation.

6.  Create controllers and views for the above functions.

7.  On your index page, add a search filter that allows you to search for invitations based on first_name, last_name, or email.

8.  Create a method that loads invitations.csv into your model.

9.  Create a method that plots the number of invitations activated each day using the (line, pie, bar) graph of your choice.
