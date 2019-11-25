<h1>Metadata format</h1>

In your [data repository](https://open-sdg.readthedocs.io/en/latest/glossary/#data-repository) the metadata is maintained on an indicator-by-indicator basis. This metadata can include any number of custom fields, as defined in a [schema file](https://github.com/open-sdg/open-sdg-data-starter/blob/develop/_prose.yml) (see the "Schema" section below) in your data repository. Some fields, however, are mandatory and/or have specific uses in Open SDG. This page details those fields.

## Note about translation keys

Metadata values can either be filled in with normal text ("My field value") or with [translation keys](https://open-sdg.readthedocs.io/en/latest/glossary/#translation-keys) (my_translations.my_translation). In the examples below, we will try to demonstrate both possibilities.

## Mandatory fields

The following fields are required on all indicators:

* `data_non_statistical` - whether the indicator is statistical (can be charted/graphed) or not. Examples:
    * true (if non-statistical)
    * false (if statistical)
* `indicator_name` - the name for the indicator, which displays at the top of the indicator page. Examples:
    * Proportion of population living below the national poverty line, by sex and age
    * global_indicators.1-2-1-title
* `indicator_number` - the number (or "id") for the indicator. Examples:
    * 1.1.1
    * 1.2.1
* `reporting_status` - the status of the indicator. Examples:
    * complete
    * notstarted

## Mandatory for statistical indicators

If the indicator is going to display a graph, the following fields are required:

* `graph_title` - the title that displays above the graph/chart. Examples:
    * My graph title for 1.1.1
    * my_translations.1-1-1-graph_title
* `graph_type` - what type of graph to use for the indicator. Examples:
    * line
    * bar
* `national_geographical_coverage` - a label used in the absence of any disaggregation. Examples:
    * Australia
    * my_translations.australia

## Recommended special fields

The following fields are not strictly required, but are recommended because they serve special purposes:

* `computation_units` - the unit used in the headline series for this indicator. Examples:
    * Metric tons * my_translations.metric_tons
* `source_active_1` - whether source #1 should be displayed. Examples:
    true
    false
* `source_organisation_1` - the name of the source #1 organisation. Examples:
    * My organisation name
    my_translations.my_organisation
* `source_url_1` - the URL of the source #1 website. Examples:
    * http://example.com
* `source_url_text_1` - the text to display as the link to the source #1 website. Examples:
    * Click here for my organisation's website
    * my_translations.click_here
* `un_designated_tier` - the "tier" for this indicator. Examples:
    * 1
    * 2.
* `un_custodian_agency` - the custodian agency for this indicator. Examples:
    * World Bank
* `goal_meta_link` - URL of the official UN metadata for this indicator. Examples:
    * https://unstats.un.org/sdgs/metadata/files/Metadata-01-01-01a.pdf
* `goal_meta_link_text` - the text to display as the link to the official UN metadata for this indicator. Examples:
    * United Nations Sustainable Development Goals Metadata (pdf 894kB)

## Data Sources Metadata

Metadata about "data sources" must follow a special format. The keys for the metadata fields must start with `source_` and end with a `_#`, where "#" is number like 1, 2, 3, etc. For example:
* source_organisation_1
* source_contact_1
* source_organisation_2
* source_contact_2
* etc.

In this way, all of the source fields ending in "_1" refer to source #1. And all the source fields ending in "_2" refer to source #2, etc.

## Data Info

Some of the metadata are not intended to be displayed on the site. These are put into a "scope" called "data" in the `_prose.yml` file. For example, see [here](https://github.com/open-sdg/open-sdg-data-starter/blob/develop/_prose.yml#L142).

Use this method to hide any fields needed, by putting them into the "data" scope.

## Graph Metadata

The following fields affect the display of graphs. Currently only longitudinal graphs are available but more are planned. These tags are experimental. Graph tags do not show up on the web page as metadata; we will use them in the future for setting how a graphic should render, some extra labels etc.

* `graph_min_value` - the lowest value to be shown on the y-axis. Examples:
    * 1
    * 100
* `graph_max_value` - the highest value to be shown on the y-axis. Examples:
    * 500
    * 1000
* `graph_title` - mentioned above
* `graph_type` - mentioned above

## Footer

The following fields will appear on indicator pages below the graph and the table.

* `computation_units` - mentioned above
* `copyright` - information about the copyright. Examples:
    * Copyright 2019 - My organisation
    * my_translations.copyright_message
* `data_footnote` - additional information on the data. Examples:
    * My additional information
    * my_translations.1-1-1-footnote
* `national_geographical_coverage` - mentioned above

## Embedded Feature Metadata

You may want to add an additional feature which isn't created from data, such as an iframe. You can create an extra tab to display this feature by adding the following tags to the metadata file.

* `embedded_feature_footer` - information about the embedded feature which displays below embed. Examples:
    * This graph provided by "My Organisation"
    * my_translations.info_about_my_organisation
* `embedded_feature_tab_title` - tab title. Examples:
    * Embedded Chart
    * my_translations.embedded_chart
* `embedded_feature_title` - the title to be shown above the embedded feature. Examples:
    * My embedded chart
    * my_translatins.1-1-1-embedded-chart
* `embedded_feature_url` - the URL of feature that you want to embed. Examples:
    * http://example.com/embed-1-1-1.html

## Non-Standard Information

In the Prose editor, you can add free Markdown text in the same file as the metadata. This is the `edit` section in prose and is part of the metadata. In the raw .md file this is the content underneath the yaml header. You can add any content you like in this section and the content will be converted to html and placed above the graph near the top of the screen.

A guide to writing [Markdown is here](https://guides.github.com/features/mastering-markdown/) and you can write your own tables, lists, links, headings, and so on. This is a useful place to add information about an indicator that doesn't fit in with the rest of the metadata.

## Data Notice

You may want to display some very important information which site viewers must keep in mind when using the data provided. To display a notice above the graph in a coloured box, you can use the following fields within the metadata file.

* `data_notice_heading` - title of data notice. Examples:
    * Important Note
    * my_translations.important_note
* `data_notice_text` - text you want to display within the notice. Examples:
    * My note text
    * my_translations.1-1-1-data-notice
* `data_notice_class` - a CSS class to set on the notice. Examples:
    * success (green)
    * warning (amber)
    * danger (red)

## Schema

The actual fields available on each indicator is fully configurable by editing the `_prose.yml` file in your data repository. For a full list of fields available out-of-the-box in the starter repository, see [here](https://github.com/open-sdg/open-sdg-data-starter/blob/develop/_prose.yml). This file also serves to control the behavior of the Prose.io service, which is the usual way that metadata is edited. (For technical information about Prose.io schema, see [here](https://github.com/prose/prose/wiki/Prose-Configuration).)

## Metadata tabs

The metadata fields can be displayed on indicator pages in a tabbed format. For more information, see [here](https://open-sdg.readthedocs.io/en/latest/configuration/#metadata_tabs).
