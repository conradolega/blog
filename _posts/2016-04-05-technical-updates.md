---
layout: post
title: "Technical updates"
date: 2016-04-05 21:00:00 +0800
categories: aws s3 design dns
---

This post is about some things I've done on and around the blog.

- First, I tweaked the design a bit. This blog is using the default Jekyll layout, but I changed it to use the [Hind font](https://www.google.com/fonts/specimen/Hind). I also lightened the text color to make it a little less jarring. Many sites nowadays don't have pure black text on white backgrounds - it's usually some kind of dark gray.
- Second, this site is now served over Amazon S3 instead of an EC2 instance. I used the [s3_website gem](https://github.com/laurilehmijoki/s3_website) to accomplish this. Also, I learned a few things about AWS along the way, like configuring buckets and access management (or IAM). Also, I don't need it now, but I can use CloudFront to serve static assets later.
- However, it took me a few tries before I got the DNS records to work. Even then, this blog currently doesn't use the naked domain - it uses the `www` subdomain. The reason is that you cannot use a CNAME for naked domains, and in this case you can't use an A record because S3 does not have a static IP. I believe you can accomplish this with Route 53, though that will cost a little extra. Maybe I can change the subdomain to `blog` later.
- Last is automating the deployment process. Before, I just logged in to the EC2 instance and wrote my post there, then ran `jekyll build`. (If that instance went down then my blog would disappear as well.) Then I tried writing locally, and just running `rsync` on the built site. I wanted to try CI though, so I used [Travis](https://travis-ci.org/). I've set it up so that a push to the repository on GitHub would trigger a build, then deploy to S3. I followed [this tutorial](http://cloudcannon.com/tutorial/2016/01/21/deploy-jekyll-sites-to-s3-using-travis-ci/). You can view builds [here](https://travis-ci.org/conradolega/blog)!

You may wonder why I didn't just use GitHub Pages. With that, I don't have to worry about CI, DNS, and some other things. Well, I like to do things the not-so-easy way. More on that in a future post!
