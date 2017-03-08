# vim: ft=sls
# Manage service for service demo
{%- from "demo/map.jinja" import demo with context %}

'demo-service not configured':
  test.succeed_without_changes

#demo_service:
#  service.running:
#    - name: demo
#    - enable: True
#    - watch:
#        - file: demo_config

