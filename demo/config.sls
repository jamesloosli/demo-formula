# vim: ft=sls
# How to configure demo
{%- from "demo/map.jinja" import demo with context %}

demo_config:
  file.managed:
    - name: '{{ demo.config }}'
    - source: salt://demo/files/config.conf
    - user: root
    - group: root
    - mode: 0600
    - template: jinja

