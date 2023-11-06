---
title: Initiatives
layout: page
---

<ul>
    {% for initiative in site.initiatives %}
        <h3>{{ initiative.name }}</h3>
        {%- if initiative.image -%}<img src="/assets/images/initiatives/{{ initiative.image }}" alt="{{ initiative.image_alt }}"> {%- endif -%}
        <p>{{ initiative.content | markdownify }}</p>
    {% endfor %}
</ul>