# vim: ft=sls
# How to install demo
{%- from "demo/map.jinja" import demo with context %}

demo_pkg:
  pkg.installed:
    - name: {{ demo.pkg }}

