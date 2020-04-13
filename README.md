<div align="right">
  Language:
  🇺🇸
  <a title="Chinese" href="docs/zh-CN/README.md">🇨🇳</a>
  <a title="Russian" href="docs/ru/README.md">🇷🇺</a>
</div>

# <div align="center"><a title="NexT website repository" href="https://github.com/theme-next/theme-next.org"><img align="center" width="56" height="56" src="https://raw.githubusercontent.com/theme-next/hexo-theme-next/master/source/images/logo.svg?sanitize=true"></a> e x T</div>

<p align="center">
  «NexT» is a high quality elegant <a href="https://hexo.io">Hexo</a> theme. It is crafted from scratch with love.
<br>
<br>
  <a href="https://www.npmjs.com/package/hexo-theme-next"><img src="https://img.shields.io/github/package-json/v/theme-next/hexo-theme-next?style=flat-square"></a>
  <a href="https://nodejs.org"><img src="https://img.shields.io/badge/node-%3E=10.9.0-green?style=flat-square"></a>
  <a href="https://hexo.io"><img src="https://img.shields.io/badge/hexo-%3E=4.0.0-blue?style=flat-square&logo=hexo"></a>
  <a href="https://github.com/theme-next/hexo-theme-next/blob/master/LICENSE.md"><img src="https://img.shields.io/badge/license-%20AGPL-orange?style=flat-square&logo=gnu"></a>
<br>
  <a href="https://bestpractices.coreinfrastructure.org/projects/2625"><img src="https://img.shields.io/cii/level/2625?style=flat-square" title="Core Infrastructure Initiative Best Practices"></a>
  <a href="https://travis-ci.org/theme-next/hexo-theme-next?branch=master"><img src="https://img.shields.io/travis/theme-next/hexo-theme-next/master?style=flat-square&logo=travis%20ci" title="Travis CI [Linux]"></a>
  <a href="https://app.codacy.com/manual/theme-next/hexo-theme-next/dashboard"><img src="https://img.shields.io/codacy/grade/72f7fe7609c2438a92069f448e5a341a/master?style=flat-square&logo=codacy" title="Project Grade"></a>
  <img src="https://img.shields.io/snyk/vulnerabilities/github/theme-next/hexo-theme-next?style=flat-square" title="Vulnerabilities">
<br>
  <img src="https://user-images.githubusercontent.com/16272760/63487983-da41b080-c4df-11e9-951c-64883a8a5e9b.png">
</p>

## Live Preview

<p align="center">
  💟 <a href="https://muse.theme-next.org">Muse</a> | 🔯 <a href="https://mist.theme-next.org">Mist</a> | ♓️ <a href="https://pisces.theme-next.org">Pisces</a> | ♊️ <a href="https://theme-next.org">Gemini</a>
<br>
<br>
  More «NexT» examples <a href="https://github.com/theme-next/awesome-next#live-preview">here</a>.
</p>

## Installation

The simplest way to install is to clone the entire repository:

```sh
$ cd hexo
$ git clone https://github.com/theme-next/hexo-theme-next themes/next
```

Or you can see [detailed installation instructions][docs-installation-url] if you want any other variant.

## Plugins

NexT supports a large number of third-party plugins, which can be easily configured.

For example, if you want to enable `pjax` on your site, just set `pjax` to `true` in NexT config file:

```yml
# Easily enable fast Ajax navigation on your website.
# Dependencies: https://github.com/theme-next/theme-next-pjax
pjax: true
```

Then visit the «Dependencies» link to get the installation instructions of this module.

### Configure CDN

If you want to specify a CDN link for any plugins, you need to set / update the CDN link.

For example, if you want to use `mediumzoom` and load the plugin via CDN, go to NexT config and see:

```yml
vendors:
  # ...
  # Some contents...
  # ...
  mediumzoom: # Set or update mediumzoom CDN URL.
```

## Update

NexT releases new versions every month. You can update to latest master branch by the following command:

```sh
$ cd themes/next
$ git pull
```

And if you see any error message during update (something like **«Commit your changes or stash them before you can merge»**), recommended to learn [Hexo data files][docs-data-files-url] feature.\
However, you can bypass update errors by using the `Commit`, `Stash` or `Reset` commands for local changes. See [here](https://stackoverflow.com/a/15745424/5861495) how to do it.

**If you want to update from v5.1.x to the latest version, read [this][docs-update-5-1-x-url].**

## Feedback

* Visit the [Awesome NexT][awesome-next-url] list to share plugins and tutorials with other users.
* Join our [Telegram][t-chat-url] / [Gitter][gitter-url] / [Riot][riot-url] chats.
* [Add or improve translation][i18n-url] in few seconds.
* Report a bug in [GitHub Issues][issues-bug-url].
* Request a new feature on [GitHub][issues-feat-url].
* Vote for [popular feature requests][feat-req-vote-url].

## Contributing

We welcome you to join the development of NexT. Please see [contributing document][contributing-document-url]. 🤗

Also, we welcome Issue or PR to our [official-plugins][official-plugins-url].





# swig引擎

1. 从zh_CN.yml文件中引用变量：{{ __('post.copyright.link.success') }}
2. 在方法中引用zh_CN.yml文件中的值：page.date.format(__('post.copyright.create_time.time_format'))