<!DOCTYPE html>
<html lang="{{ config.language }}" {%- if page.type and page.type === 'topic' %}xmlns:wb="http://open.weibo.com/wb"{% endif %}>
<head>
  
  {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
  {% include '_partials/head/head-unique.swig' %}
  {{- next_inject('head') }}
  <title>{% block title %}{% endblock %}</title>
  {{ partial('_third-party/analytics/index.swig', {}, {cache: theme.cache.enable}) }}
  {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>

<body itemscope itemtype="http://schema.org/WebPage">

{% include '_partials/live2d.swig' %}
<script>
var message_Path = '/live2d/';
var talkAPI = "";
</script>
<script type="text/javascript" src="/live2d/js/live2d.js"></script>
<script type="text/javascript" src="/live2d/js/message.js"></script>

  <div class="container{%- if theme.motion.enable %} use-motion{%- endif %}">
    <div class="headband"></div>
    {% include '_partials/sidebar/qplayer.swig' %}
    <header class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner">{% include '_partials/header/index.swig' %}</div>
    </header>

    {{ partial('_partials/widgets.swig', {}, {cache: theme.cache.enable}) }}

    <main class="main">
      <div class="main-inner">
        <div class="content-wrap">
          {% include '_partials/header/sub-menu.swig' %}
          <div class="content">
            {% block content %}{% endblock %}
          </div>
          {####
          {%- if is_post() and page.comments %}
            <div class="comments"><script async src="https://comments.app/js/widget.js?2" data-comments-app-website="8GJ6_DjH" data-limit="5" data-color="343638" data-colorful="1" data-page-id="{{ page.abbrlink }}"></script></div>
          {% endif %}
          ####}
          {% include '_partials/comments.swig' %}
        </div>
        {%- if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {%- endif %}
      </div>
    </main>

    <footer class="footer">
      <div class="footer-inner">
        {{ partial('_partials/footer.swig', {}, {cache: theme.cache.enable}) }}
        {{ partial('_third-party/statistics/index.swig', {}, {cache: theme.cache.enable}) }}
        {% block footer %}{% endblock %}
      </div>
    </footer>
  </div>

  {{ partial('_scripts/index.swig', {}, {cache: theme.cache.enable}) }}
  {{ partial('_third-party/index.swig', {}, {cache: theme.cache.enable}) }}

  {%- if theme.pjax %}
    <div id="pjax">
  {%- endif %}

  {% include '_third-party/math/index.swig' %}
  {% include '_third-party/quicklink.swig' %}

  {{- next_inject('bodyEnd') }}

  {%- if theme.pjax %}
    </div>
  {%- endif %}
</body>
</html>
