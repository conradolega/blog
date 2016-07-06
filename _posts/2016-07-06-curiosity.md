---
layout: post
title: "Curiosity"
date: 2016-07-06 21:00:00 +0800
categories: curiosity code libraries
---

Frameworks and libraries are godsends for a developer. Good ones make your work much easier. One especially tasty feature is code generation, like this example from the [Rails documentation](http://guides.rubyonrails.org/command_line.html):

```
$ bin/rails generate scaffold HighScore game:string score:integer
    invoke  active_record
    create    db/migrate/20130717151933_create_high_scores.rb
    create    app/models/high_score.rb
    invoke    test_unit
    create      test/models/high_score_test.rb
    create      test/fixtures/high_scores.yml
    invoke  resource_route
     route    resources :high_scores
    invoke  scaffold_controller
    create    app/controllers/high_scores_controller.rb
    invoke    erb
    create      app/views/high_scores
    create      app/views/high_scores/index.html.erb
    create      app/views/high_scores/edit.html.erb
    create      app/views/high_scores/show.html.erb
    create      app/views/high_scores/new.html.erb
    create      app/views/high_scores/_form.html.erb
    invoke    test_unit
    create      test/controllers/high_scores_controller_test.rb
    invoke    helper
    create      app/helpers/high_scores_helper.rb
    invoke    jbuilder
    create      app/views/high_scores/index.json.jbuilder
    create      app/views/high_scores/show.json.jbuilder
    invoke  assets
    invoke    coffee
    create      app/assets/javascripts/high_scores.coffee
    invoke    scss
    create      app/assets/stylesheets/high_scores.scss
    invoke  scss
   identical    app/assets/stylesheets/scaffolds.scss
```

With just one command, you already have a model, controller, database migration, route configuration, front end templates, unit tests, etc. A nice starting point. However, this generated code may not be the best. (It could be worse, though. See Dreamweaver. Or Microsoft Publisher.) And others would argue that this makes development too easy. Well, there is still business logic to put in those controllers, and that will be much more difficult :) But I digress.

Have you ever wondered how these things work?  I wanted to see how, so I spent maybe an hour digging through the Rails source to find out. Rails uses [`thor`](https://github.com/erikhuda/thor/), a gem for creating CLIs, to define the commands that can be used. `thor` already has an option for generating text based on templates, and Rails extends this for all its different kinds of generators. I even wrote a bit of my own for "fun".

In my [last post](http://www.conradolega.xyz/2016/04/05/technical-updates) I wrote about moving this blog to S3 instead of GitHub pages, and promised to talk about why. How does that relate to code generators? I'm talking about the curiosity I have for both. The desire to know more about the tools I'm using, and understanding _why they were built in the first place_. We have these frameworks because developers want to automate things they've implemented thousands of times before. It's interesting to see how they did so.

Instead of, say, just using an ORM, I want to know how it generates SQL. How does it connect to a database? Or maybe, I'm checking a class in our code that someone else wrote, and I `grep` for it and see that it's not being used anymore. I'll check the Git logs to see if it ever was. Before I forget, I make a change to remove that dead code first. Et cetera, et cetera. Suddenly, the day is half over, and I haven't finished my actual task yet.

So, there's the downside - I'm not as fast a developer as a job would usually require. It took me hours to do the things I described in my last post, as I kind of stumbled around while setting up the necessary stuff.

But hey! At the very least, I'm not doing things blindly. I'm learning from the community, or from my coworkers. I can have lively discussions with them regarding the things we're doing. I can even give back. It's important to have this quality in an industry like this where technology evolves really quickly. It's very easy to get stuck in a comfort zone at one job, then suddenly when you have to find another, you don't know what's out there anymore.

Besides your career, it also makes you more human - able to gather information and make informed decisions, or gain inspiration for creative endeavors. You may be content with what you have, but never be content with what you know. Be curious about everything!
