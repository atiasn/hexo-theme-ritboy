{# Next 主题默认
{%- set ccIcon = '<i class="fab fa-fw fa-creative-commons"></i>' %}
{%- set ccText = theme.creative_commons.license | upper %}

<div>
<ul class="post-copyright">
  <li class="post-copyright-author">
    <strong>{{ __('post.copyright.author') + __('symbol.colon') }} </strong>
    {{- page.author or author }}
  </li>
  <li class="post-copyright-link">
    <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
    {{ next_url(page.permalink, page.permalink, {title: page.title}) }}
  </li>
  <li class="post-copyright-license">
    <strong>{{ __('post.copyright.license_title') + __('symbol.colon') }} </strong>
    {{- __('post.copyright.license_content', next_url(ccURL, ccIcon + ccText)) }}
  </li>
</ul>
</div>
#}

{%- set ccIcon = '<i class="fab fa-fw fa-creative-commons"></i>' %}
{%- set ccText = theme.creative_commons.license | upper %}

<div class="post-copyright">
  <script src="//cdn.bootcss.com/clipboard.js/1.5.10/clipboard.min.js"></script>

  <!-- JS库 sweetalert 可修改路径TODO: 这两个js好像可以不要-->
  <script src="https://cdn.bootcss.com/jquery/2.0.0/jquery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <p>
    <span>{{ __('post.copyright.title') + __('symbol.colon') }}</span>
    <a href="{{ url_for(page.path) }}">{{ page.title }}</a>
  </p>
  <p>
    <span>{{ __('post.copyright.author.content') + __('symbol.colon') }}</span>
    <a href="/" title="{{ __('post.copyright.author.title', theme.author) }}">{{ theme.author }}</a>
  </p>
  <p>
    <span>{{ __('post.copyright.create_time.content') + __('symbol.colon') }}</span>
    {{ page.date.format(__('post.copyright.create_time.time_format')) }}
  </p>
  <p>
    <span>{{ __('post.copyright.update_time.content') + __('symbol.colon') }}</span>
    {{ page.updated.format(__('post.copyright.update_time.time_format')) }}
  </p>
  <p><span>{{ __('post.copyright.link.content') + __('symbol.colon') }}</span>
    <a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a>
    <span class="copy-path"  title="{{ __('post.copyright.link.copy_title') }}">
      <i class="fa fa-clipboard" data-clipboard-text="{{ page.permalink }}"  aria-label="{{ __('post.copyright.link.success') }}"></i>
    </span>
  </p>
  <p>
    <span>{{ __('post.copyright.license_title') + __('symbol.colon') }}</span>
    {{- __('post.copyright.license_content', next_url(ccURL, ccIcon + ccText)) }}
  </p>
</div>
<script>
    var clipboard = new Clipboard('.fa-clipboard');
    $(".fa-clipboard").click(function(){
      clipboard.on('success', function(){
        swal({
          title: "",
          text: '复制成功',
          icon: "success",
          showConfirmButton: true
          });
    });
    });
</script>
