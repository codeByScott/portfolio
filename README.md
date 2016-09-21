Developer Portfolio Site
===
Ruby 2.2.3  
Rails 5.0.0.1

## Planning
---
  - What is the application?
  - Who is the application for?
  - User Stories
  - Model the data
  - Think through the pages needed

## Questions
---
  1. What is the application?
     This application is my personal portfolio. A place where I can blog, share my
     work, share a bit about myself (including a resume), and offer a way for
     others to get in touch with me.
  2. Who is the application for?
     This application is for me, and for anyone looking to hire a developer with
     my skills. It is also for other developers interested in my articles.
  3. What features does it need?
        - About Me
            - A brief introduction to me and what I can do for anyone looking for a
        developer for their projects.
        - Articles
            - Create/Edit/Destroy (CRUD)
            - Use Markdown
            - Syntax highlighting
            - Comments using Disqus
        - Projects
            - Create/Edit/Destroy
            - Include Case Study
            - Include Image
                + iPhone, iPad, Desktop images (if applicable)
        - Contact
            - Simple contact form
            - Sendgrid
            - client/server side validation
        - User Authentication
            - Allow the admin to sign in to make changes

## User Stories
---
  * As an *Admin*, I want to be able to create posts so that I can share what I am
    learning on my blog.
  * As an *Admin*, I want to be able to edit & destroy posts, so that I can manage
    my blog.
  * As an *Admin*, I want to be able to write posts in markdown format, so that it
    is easy for me to write posts.
  * As an *Admin*, I want to be able to highlight the various syntax of code
    blocks that I share on my blog.
  * As an *Admin*, I want to show the visitors and potential employers examples of
    my work, or stuff that I've built.
  * As an *Admin*, I want to be able to have visitors contact me through a form on
    my site.
  * As an *Admin*, I want visitors to be able to leave comments on my blog posts.

## Data Model
---
  **Post**  
    title:string  
    content:text  
  **Project**  
    title:string  
    content:text  
    link:string  
  **User**  
  name:string   
  email:string
## Pages Required
---
  - Home
  - About
  - Contact
  - Article#index
  - Article#show
  - Project#index
  - Project#show