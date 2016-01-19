Remove permalink from Jekyll posts
===============================

When transitioning from Wordpress to Jekyll, I used [an exporter from Ben Balter](https://github.com/benbalter/wordpress-to-jekyll-exporter), which worked perfectly... except it added a permalink to the YAML front matter for every Jekyll post. This broke the pagination in the Jekyll plugin. So I wrote up a quick Ruby script to remove the permalink from every post.

Usage
-----
Run it from the Jekyll site root; it'll loop through anything with a .md extension, look for the 'permalink:' line in the post, and remove it. (Hopefully) simple. 
