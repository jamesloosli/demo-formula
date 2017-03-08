# vim: ft=sls
# Init demo
{%- from "demo/map.jinja" import demo with context %}
{# Below is an example of having a toggle for the state #}

{% if demo.enabled %}
include:
  - demo.install
  - demo.config
  - demo.service
{% else %}
'demo-formula disabled':
  test.succeed_without_changes
{% endif %}

