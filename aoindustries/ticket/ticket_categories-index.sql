-- top-level categories must also have unique names
create unique index ticket_categories_toplevelparent_name_uni on ticket_categories (
    name
) where parent is null;
-- name unique per parent
create unique index ticket_categories_parent_name_uni on ticket_categories (
  parent,
  name
) where parent is not null;
