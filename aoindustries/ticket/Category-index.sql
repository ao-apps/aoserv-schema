-- top-level categories must also have unique names
create unique index "Category_toplevelparent_name_uni" on ticket."Category" (
  "name"
) where parent is null;
-- name unique per parent
create unique index "Category_parent_name_uni" on ticket."Category" (
  parent,
  "name"
) where parent is not null;
