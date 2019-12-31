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
      <article class="post-blocks">
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
  <tbody>
    <tr>
    
      <td class="post-item-img-box" valign="top" align="center">
        <img src="https://avatars.dicebear.com/v2/identicon/{{post.abbrlink}}.svg" class="post-img" border="0" align="default">
      </td>
      <td width="10"></td>
    
      <td width="auto" valign="middle">
      <div class="my-tag-0">
        {%- if post.tags and post.tags.length %}
            {%- if theme.tag_icon %}
              {%- set tag_indicate = '<i class="fa fa-tag"></i>' %}
            {% else %}
              {%- set tag_indicate = '#' %}
            {%- endif %}
            {%- for tag in post.tags.toArray() %}
                <a class="post-item-tags" href="{{ url_for(tag.path) }}" rel="tag">{{ tag_indicate }} {{ tag.name }}</a>
              {%- endfor %}
          {%- endif %}
          {%- if not post.tags or not post.tags.length %}
          <a class="post-item-tags"># 无标签</a>
          {%- endif %}
          <span class="post-author">
          {{- post.author or author }}
          </span>
    </div>
        <h2 class="post-item-title">
          <a class="post-link" href="/{{post.path}}">
          {%- if date(post.date, 'MM-DD') == "11-28" %}
          🎂
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "08-15" %}
          🌕
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "01-01" %}
          🎇
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "02-14" %}
          💑
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "12-25" %}
          🎄
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "12-13"
          or date(post.date, 'MM-DD') == "05-12"
          or date(post.date, 'MM-DD') == "12-13"
          or date(post.date, 'MM-DD') == "09-30" %}
          💔
          {% endif %}
          {%- if date(post.date, 'MM-DD') == "10-01" %}
          🇨🇳
          {% endif %}
          「{{ post.title }}」</a>
        </h2>
        <div class="sep5"></div>
        <span class="post-info">
        <span class="my-tag-1">
        {%- if post.tags and post.tags.length %}
            {%- if theme.tag_icon %}
              {%- set tag_indicate = '<i class="fa fa-tag"></i>' %}
            {% else %}
              {%- set tag_indicate = '#' %}
            {%- endif %}
            {%- for tag in post.tags.toArray() %}
                <a class="post-item-tags" href="{{ url_for(tag.path) }}" rel="tag">{{ tag_indicate }} {{ tag.name }}</a>
              {%- endfor %}
          {%- endif %}
          {%- if not post.tags or not post.tags.length %}
          <a class="post-item-tags"># 无标签</a>
          {%- endif %}
          <span class="post-author">
          {{- post.author or author }}
          </span>
          </span>
          <span class="post-time">{{ date(post.date, 'YYYY.MM.DD') }}</span>
          <span class="post-inline-cast">
          {%- if not post.categories or not post.categories.length or not theme.post_meta.categories %}
          <span>未分类</span>
          {% endif %}
          {%- if post.categories and post.categories.length and theme.post_meta.categories %}
              {%- for cat in post.categories.toArray() %}
                <span itemprop="about" itemscope itemtype="http://schema.org/Thing">
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
        </span>
      </td>
      <td class="post-item-cast-box" width="auto" style="text-align:right!important;" valign="middle">
        <div class="post-cast">
        {%- if not post.categories or not post.categories.length or not theme.post_meta.categories %}
          <span>未分类</span>
          {% endif %}
          {%- if post.categories and post.categories.length and theme.post_meta.categories %}
              {%- for cat in post.categories.toArray() %}
                <span itemprop="about" itemscope itemtype="http://schema.org/Thing">
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
        </div></td>
    </tr>
  </tbody>
</table>
      </article>
    {%- endfor %}
  </div>
</div>


{% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
