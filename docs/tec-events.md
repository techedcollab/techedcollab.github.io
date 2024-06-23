---
title: TEC Events
layout: page
---
<div class="events-list">
    {% for event in site.tec-events reversed %}
    <div class="event-item">
        <a href="{{ event.url }}">
            <h2 class="event-title">{{ event.title }}</h2>
            <div class="event-info">
                <p class="date">{{ event.date | date: "%b %-d, %Y" }}</p>
            </div>
            {%- if event.image -%}
            <div class="event-image">
                <img class="tec-event-img" src="{{ event.image }}" alt="Event image">
            </div>
            {%- endif -%}
        </a>
            {% if event.summary %}
                <p>{{ event.summary }}</p>
            {% endif %}
    </div>
    {% endfor %}
</div>
