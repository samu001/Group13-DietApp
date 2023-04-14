Original App Design Project - README Template
===

# PlatePal

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)å
2. [Schema](#Schema)

## Overview
### Description
This application will allow the users to search for food recipes according to different diets.

**Submitted by Harry James Hocker**

Team:
* Cesar Borroto
* Samuel Perez
* Saily Hernandez
* Harry James Hocker

**Time spent: 55 hours spent in total**

## Video Walkthrough
### Account Creation
<img src="https://user-images.githubusercontent.com/62515928/232084076-660a7e85-65d4-4e0e-b50e-0475eab3d637.gif" width="182" height="383"/>

### Diets and Recipes
![1](https://user-images.githubusercontent.com/62515928/232083909-7c79256f-2fcf-4040-8d9f-5fac7546f117.gif)





### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Recipe and Diet app
- **Mobile:** The app will have a responsive layout for all mobile phones.
- **Story:** The app is not overly complicated allowing a good user experience
- **Market:** People interested in nutrition or cooking
- **Habit:** The user interface would be easy to access. User may be able to track recipies
- **Scope:** 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* #1 Diet Selection: User should be able to select a diet type.
* #2 Recipe List: User should see a list of recipes for the current diet.
* #3 Recipe Steps:User should see a step by step process of the recipe.
* #4 User should be able to log in
* #5 User should be able to log out

**Optional Nice-to-have Stories**

* Users should be able to log in their accounts.
* Users should be able to like recipes and save them for easy access.

### 2. Screen Archetypes
* Log in/Create account screen
   * #1 Account Screen
* Diet selection screen
   * #2 Diet Selection
* Recipe list screen
   * #3 Recipe List
* Recipe detail screen
   * #4 Recipe Steps

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* User Account
* Diets 
* Recipes
* Detailed Recipe

**Flow Navigation** (Screen to Screen)

* Account Log in 
   * Takes to Diets list view
* Diets 
   * Recipes list for that diet
* Recipes list
   * Recipe details/steps for respective recipe
* Account log out
   * Returns to Account Log in Screen

## Wireframes
<img src="https://i.imgur.com/99pPXe4.jpeg" width=600>

## Schema 
Using FireBase Database, the data fields stored are:
- Identifier (Email)
- Created (Date when user was created)
- Signed in (Date user last log in)
- User UID (User ID provided by firebasae)

### Models
User:
username
password
profileImage
email

Recipe:
title
dietType
recipeDescription
recipeSteps
recipeImage

Diet:
name
description
recipeList

### Networking
- Diets Screen: Spoonacular API
- Recipes Screen: Spoonacular API
