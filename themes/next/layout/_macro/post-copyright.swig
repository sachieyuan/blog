{% if page.author or page.copyright %}
  <hr/>
  <ul class="post-copyright">
    {% if page.author %}
      <li class="post-copyright-author">
        <strong>{{ __('post.copyright.author') + __('symbol.colon') }}</strong>
        {% if page.author.name and  page.author.link %}
          <a href="{{page.author.link}}">{{ page.author.name }}</a>
        {% elseif page.author.name %}
          {{ page.author.name }}
        {% endif %}
      </li>
    {% endif %}

    {% if page.copyright %}
      <li class="post-copyright-link">
        <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
        <a href="{{ post.permalink }}" title="{{ post.title }}">{{ post.permalink }}</a>
      </li>
      <li class="post-copyright-license">
        <strong>{{ __('post.copyright.license_title') + __('symbol.colon') }} </strong>
        {{ __('post.copyright.license_content', theme.post_copyright.license_url, theme.post_copyright.license) }}
      </li>
    {% endif %}
  </ul>
{% endif %}
