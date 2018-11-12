/**********************************************************************
 *
 * The text_images table stores the attributes of GIF images of text
 * strings.  The actual image data is stored in the filesystem.
 *
 * imageid           a unique identifier for the image
 * hostname          the hostname of the machine the image file is on
 * family            the name of the font family
 * weight            the weight of the font
 * font_width        the width of the font
 * posture           the angle of the font
 * size              the point size of the font
 * superscript       the superscript mode of the font
 * foreground        the foreground color
 * background        the background color
 * underline         the underline attribute
 * strikethrough     the strikethrough attribute
 * run_direction     the runDirection
 * is_transparent    the transparency attribute
 * use_antialiasing  the antialiasing attribute
 * word              the word or words that are contained in the GIF image
 * image_width       the width of the image
 * image_height      the height of the image
 *
 *********************************************************************/
create sequence text_images_imageid_seq cycle;
grant all            on text_images_imageid_seq to aoadmin;
grant select, update on text_images_imageid_seq to aoweb_app;

create table text_images (
  imageid integer
    default nextval('text_images_imageid_seq')
    constraint text_images_pkey
      primary key,
  hostname text
    not null,
  family text
    not null,
  weight float(6)
    not null,
  font_width float(6)
    not null,
  posture float(6)
    not null,
  size float(6)
    not null,
  superscript smallint
    not null,
  foreground integer
    not null,
  background integer
    not null,
  underline bool
    not null,
  strikethrough bool
    not null,
  run_direction bool
    not null,
  is_transparent bool
    not null,
  use_antialiasing bool
    not null,
  word text
    not null,
  image_width integer
    not null,
  image_height integer
    not null
);
grant all                            on text_images to aoadmin;
grant select, insert, update, delete on text_images to aoweb_app;
