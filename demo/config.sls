# vim: ft=sls
# How to configure demo
{%- from "demo/map.jinja" import demo with context %}

demo_config:
  file.managed:
    - name: '/tmp/config.conf'
    - source: salt://demo/files/config.conf
    - user: root
    - group: root
    - mode: 0600
    - template: jinja
    - local_string: 'test string please ignore'

