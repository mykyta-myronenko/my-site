---
date: {{ .Date }}
draft: true
title: {{ replace .File.ContentBaseName "-" " " | title }}
---
{{ partial "content-wikilinks" . }}

{{ $backlinks := partial "funcs/backlinks.html" . }}
{{ range $backlinks }}
{{ end }}
