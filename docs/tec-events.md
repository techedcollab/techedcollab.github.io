---
title: TEC Events
layout: page
---
<div class="events-list">
    {% for event in site.tec-events %}
    <div class="event-item">
        <h2 class="event-title"><a href="{{ event.url }}">{{ event.title }}</a></h2>
        {%- if event.image -%}
        <div class="event-image">
            <img src="{{ event.image }}" alt="Event image">
        </div>
        {%- endif -%}
        <div class="event-info">
            <p class="date">{{ event.date | date: "%b %-d, %Y" }}</p>
        </div>
    </div>
    {% endfor %}
</div>
