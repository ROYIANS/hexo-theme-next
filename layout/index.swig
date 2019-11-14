{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block content %}
  {########
  <div class="posts-expand">
    {%- for post in page.posts.toArray() %}
      {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
    {%- endfor %}
  </div>
  ########}

<div class="posts-expand">
  <div class="posts-list">
    {%- for post in page.posts.toArray() %}
      <article class="post-block post-card" onclick="window.location.href='/{{post.path}}'">
        <span class="post-block-tag">
          {{ date(post.date, 'MM-DD') }}
          {%- if post.categories and post.categories.length and theme.post_meta.categories %}
              {%- for cat in post.categories.toArray() %}
                <span itemprop="about" itemscope itemtype="http://schema.org/Thing">/
                  <a href="{{ url_for(cat.path) }}" itemprop="url" rel="index">
                    <span itemprop="name">{{ cat.name }}</span>
                  </a>
                </span>

                {%- set cat_length = post.categories.length %}
                {%- if cat_length > 1 and loop.index !== cat_length %}
                  {{ __('symbol.comma') }}
                {%- endif %}
              {%- endfor %}
            </span>
          {% endif %}  
        </span>
        <h2>{{ post.title }}</h2>
        <div class="post-block-content">
            {%- if post.description and theme.excerpt_description %}
              {{ post.description }}
            {% elif post.excerpt %}
              {{ post.excerpt }}
            {% else %}
              {{ post.content }}
            {%- endif %}
        </div>
        <div class="post-block-content-tags">
          {%- if post.tags and post.tags.length %}
            {%- if theme.tag_icon %}
              {%- set tag_indicate = '<i class="fa fa-tag"></i>' %}
            {% else %}
              {%- set tag_indicate = '#' %}
            {%- endif %}
            <div class="post-tags">
              {%- for tag in post.tags.toArray() %}
                <a href="{{ url_for(tag.path) }}" rel="tag">{{ tag_indicate }} {{ tag.name }}</a>
              {%- endfor %}
            </div>
          {%- endif %}
        </div>
      </article>
    {%- endfor %}
  </div>
</div>


  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
