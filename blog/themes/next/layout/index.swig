{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}

{% block page_class %}
  {% if is_home() %}page-home{% endif -%}
{% endblock %}

{% block content %}
  <p style="background-color: #000; color: #fff;font-weight: 800;font-size: 15px; width: 60px;text-align: center;" >
	    <标签>
  </p>
  <div class="tag-cloud">
      <div class="tag-cloud-tags" align="left">
      {{ tagcloud({min_font: 14, max_font: 14, amount: 300, color: true, start_color: '#888', end_color: '#888'}) }}            </div>
  </div>
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
