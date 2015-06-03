---
layout: default
title: OMPL Blog
---
<div class="row">
<div class="col-md-3">
<ul>
  {% for post in site.posts %}
  <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
</div>

<div class="col-md-9">
  {% for post in site.posts limit:20 %}
  <h2>
    <a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
    <small>{{ post.date | date_to_string }}</small>
  </h2>

  {{ post.content }}
  {% endfor %}
</div>
</div>