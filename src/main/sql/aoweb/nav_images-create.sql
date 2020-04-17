/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoindustries.com.
 *
 * aoindustries.com is non-exclusive, non-transferable, non-redistributable.
 *
 * aoindustries.com is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**********************************************************************
 *
 * The nav_images table stores the attributes of GIF images
 * of text inside nav images.
 *
 * imageid       a unique identifier for the image
 * hostname      the host name of the machine the image file is on
 * family        the name of the font family
 * weight        the weight of the font
 * font_width    the width of the font
 * posture       the angle of the font
 * size          the point size of the font
 * foreground    the foreground color
 * word          the word or words that are contained in the GIF image
 * suffix        an optional suffix that must be shown if it exists
 * highlighted   have the highlighted look
 *
 *********************************************************************/
create sequence nav_images_imageid_seq cycle;
grant all            on nav_images_imageid_seq to aoadmin;
grant select, update on nav_images_imageid_seq to aoweb_app;

create table nav_images (
  imageid integer
    default nextval('nav_images_imageid_seq')
    primary key,
  hostname text
    not null,
  family text
    not null,
  weight real
    not null,
  font_width real
    not null,
  posture real
    not null,
  "size" real
    not null,
  foreground integer
    not null,
  word text
    not null,
  suffix text,
  highlighted boolean
    not null
);
grant all            on nav_images to aoadmin;
grant select, insert on nav_images to aoweb_app;
