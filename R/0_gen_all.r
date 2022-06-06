# Creates the norway_locations, norway_municip_merging, and norway_population data.table
# @param base_loc Folder where data will be saved
gen_data_all <- function(base_loc) {
  # base_loc = file.path(getwd(),"data")
  # old_wd <- getwd()
  # on.exit(setwd(old_wd))
  # setwd(base_loc)
  # base_loc <- getwd()
  . <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL

  # 2020 ----
  # 2020 maps default county
  norway_nuts3_map_b2020_default_sf <- gen_norway_nuts3_map(x_year_end=2020, return_sf = T)
  save(norway_nuts3_map_b2020_default_sf, file=file.path(base_loc,"norway_nuts3_map_b2020_default_sf.rda"), compress = "xz")
  norway_nuts3_map_b2020_default_dt <- gen_norway_nuts3_map(x_year_end=2020)
  save(norway_nuts3_map_b2020_default_dt, file=file.path(base_loc,"norway_nuts3_map_b2020_default_dt.rda"), compress = "xz")

  # 2020 map default municip
  norway_lau2_map_b2020_default_sf <-  gen_norway_lau2_map(x_year_end=2020, return_sf = T)
  save(norway_lau2_map_b2020_default_sf, file=file.path(base_loc,"norway_lau2_map_b2020_default_sf.rda"), compress = "xz")
  norway_lau2_map_b2020_default_dt <-  gen_norway_lau2_map(x_year_end=2020)
  save(norway_lau2_map_b2020_default_dt, file=file.path(base_loc,"norway_lau2_map_b2020_default_dt.rda"), compress = "xz")

  # 2020 map split county
  norway_nuts3_map_b2020_split_dt <- gen_norway_nuts3_map(x_year_end=2020, split=T)
  save(norway_nuts3_map_b2020_split_dt, file=file.path(base_loc,"norway_nuts3_map_b2020_split_dt.rda"), compress = "xz")

  norway_lau2_map_b2020_split_dt <-  gen_norway_lau2_map(x_year_end=2020, split=T)
  save(norway_lau2_map_b2020_split_dt, file=file.path(base_loc,"norway_lau2_map_b2020_split_dt.rda"), compress = "xz")

  # 2020 map insert
  norway_nuts3_map_b2020_insert_oslo_dt <- gen_norway_nuts3_map(x_year_end=2020, insert = T)
  save(norway_nuts3_map_b2020_insert_oslo_dt, file=file.path(base_loc,"norway_nuts3_map_b2020_insert_oslo_dt.rda"), compress = "xz")

  norway_lau2_map_b2020_insert_oslo_dt <-  gen_norway_lau2_map(x_year_end=2020, insert = T)
  save(norway_lau2_map_b2020_insert_oslo_dt, file=file.path(base_loc,"norway_lau2_map_b2020_insert_oslo_dt.rda"), compress = "xz")

  # 2020 map labels -----
  norway_nuts3_position_geolabels_b2020_default_dt <- gen_norway_nuts3_position_geolabels(x_year_end = 2020)
  save(norway_nuts3_position_geolabels_b2020_default_dt, file = file.path(base_loc, "norway_nuts3_position_geolabels_b2020_default_dt.rda"), compress = "xz")

  norway_lau2_position_geolabels_b2020_default_dt <- norway_lau2_map_b2020_default_dt[,.(
    long = mean(long),
    lat = mean(lat)
  ), keyby = .(location_code)]
  save(norway_lau2_position_geolabels_b2020_default_dt, file = file.path(base_loc, "norway_lau2_position_geolabels_b2020_default_dt.rda"), compress = "xz")

  norway_nuts3_position_geolabels_b2020_insert_oslo_dt <- gen_norway_nuts3_position_geolabels(x_year_end = 2020, insert = T)
  save(norway_nuts3_position_geolabels_b2020_insert_oslo_dt, file = file.path(base_loc, "norway_nuts3_position_geolabels_b2020_insert_oslo_dt.rda"), compress = "xz")

  norway_lau2_position_geolabels_b2020_insert_oslo_dt <- norway_lau2_map_b2020_insert_oslo_dt[,.(
    long = mean(long),
    lat = mean(lat)
  ), keyby = .(location_code)]
  save(norway_lau2_position_geolabels_b2020_insert_oslo_dt, file = file.path(base_loc, "norway_lau2_position_geolabels_b2020_insert_oslo_dt.rda"), compress = "xz")

  # 2020 insert label
  norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt <- gen_norway_xxx_position_title_insert_oslo(x_year_end = 2020)
  save(norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt, file = file.path(base_loc, "norway_xxx_position_title_insert_oslo_b2020_insert_oslo_dt.rda"), compress = "xz")


  # ward oslo ----
  oslo_ward_map_b2020_default_sf <- gen_oslo_ward_map(return_sf = T)
  save(oslo_ward_map_b2020_default_sf, file=file.path(base_loc,"oslo_ward_map_b2020_default_sf.rda"), compress = "xz")

  oslo_ward_map_b2020_default_dt <- gen_oslo_ward_map()
  save(oslo_ward_map_b2020_default_dt, file=file.path(base_loc,"oslo_ward_map_b2020_default_dt.rda"), compress = "xz")

  oslo_ward_position_geolabels_b2020_default_dt <- gen_oslo_ward_position_geolabels(x_year_end = 2020)
  save(oslo_ward_position_geolabels_b2020_default_dt, file = file.path(base_loc,"oslo_ward_position_geolabels_b2020_default_dt.rda"), compress = "xz")

  # 2019 ----
  # county geolabel
  norway_nuts3_position_geolabels_b2019_default_dt <- gen_norway_nuts3_position_geolabels(x_year_end = 2019)
  save(norway_nuts3_position_geolabels_b2019_default_dt, file = file.path(base_loc, "norway_nuts3_position_geolabels_b2019_default_dt.rda"), compress = "xz")

  # oslo label (insert)
  norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt <- gen_norway_xxx_position_title_insert_oslo(x_year_end = 2019)
  save(norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt, file = file.path(base_loc, "norway_xxx_position_title_insert_oslo_b2019_insert_oslo_dt.rda"), compress = "xz")

  # norway 2017 ----
  # default county
  norway_nuts3_map_b2017_default_sf <- gen_norway_nuts3_map(x_year_end=2017, return_sf = T)
  save(norway_nuts3_map_b2017_default_sf, file=file.path(base_loc,"norway_nuts3_map_b2017_default_sf.rda"), compress = "xz")
  norway_nuts3_map_b2017_default_dt <- gen_norway_nuts3_map(x_year_end=2017)
  save(norway_nuts3_map_b2017_default_dt, file=file.path(base_loc,"norway_nuts3_map_b2017_default_dt.rda"), compress = "xz")

  # norway 2019 ----
  # default county
  norway_nuts3_map_b2019_default_sf <- gen_norway_nuts3_map(x_year_end=2019, return_sf = TRUE)
  save(norway_nuts3_map_b2019_default_sf, file=file.path(base_loc,"norway_nuts3_map_b2019_default_sf.rda"), compress = "xz")
  norway_nuts3_map_b2019_default_dt <- gen_norway_nuts3_map(x_year_end=2019)
  save(norway_nuts3_map_b2019_default_dt, file=file.path(base_loc,"norway_nuts3_map_b2019_default_dt.rda"), compress = "xz")

  # default municip
  norway_lau2_map_b2019_default_sf <- gen_norway_lau2_map(x_year_end=2019, return_sf = TRUE)
  save(norway_lau2_map_b2019_default_sf, file=file.path(base_loc,"norway_lau2_map_b2019_default_sf.rda"), compress = "xz")
  norway_lau2_map_b2019_default_dt <-  gen_norway_lau2_map(x_year_end=2019)
  save(norway_lau2_map_b2019_default_dt, file=file.path(base_loc,"norway_lau2_map_b2019_default_dt.rda"), compress = "xz")

  # insert
  norway_nuts3_map_b2019_insert_oslo_dt <- gen_norway_nuts3_map(x_year_end=2019, insert = T)
  save(norway_nuts3_map_b2019_insert_oslo_dt, file=file.path(base_loc,"norway_nuts3_map_b2019_insert_oslo_dt.rda"), compress = "xz")
  norway_lau2_map_b2019_insert_oslo_dt <-  gen_norway_lau2_map(x_year_end=2019, insert = T)
  save(norway_lau2_map_b2019_insert_oslo_dt, file=file.path(base_loc,"norway_lau2_map_b2019_insert_oslo_dt.rda"), compress = "xz")


  # 2017 ----
  # insert county
  norway_nuts3_map_b2017_insert_oslo_dt <- gen_norway_nuts3_map(x_year_end=2017, insert = T)
  save(norway_nuts3_map_b2017_insert_oslo_dt, file=file.path(base_loc,"norway_nuts3_map_b2017_insert_oslo_dt.rda"), compress = "xz")

  norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt <- gen_norway_xxx_position_title_insert_oslo(x_year_end = 2017)
  save(norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt, file = file.path(base_loc, "norway_xxx_position_title_insert_oslo_b2017_insert_oslo_dt.rda"), compress = "xz")

  norway_nuts3_position_geolabels_b2017_default_dt <- gen_norway_nuts3_position_geolabels(x_year_end = 2017)
  save(norway_nuts3_position_geolabels_b2017_default_dt, file = file.path(base_loc, "norway_nuts3_position_geolabels_b2017_default_dt.rda"), compress = "xz")


  # # senorge 2019 ----
  # load(file.path(base_loc,"norway_level_lau2_map_b2019.rda"))
  # senorge_b2019 <- gen_senorge(norway_locations_current = fhidata::norway_locations_b2019, norway_level_lau2_maps = norway_level_lau2_map_b2019)
  # save(senorge_b2019, file=file.path(base_loc,"senorge_b2019.rda"), compress = "xz")
  #
  # # senorge 2020 ----
  # load(file.path(base_loc,"norway_level_lau2_map_b2020.rda"))
  # senorge_b2020 <- gen_senorge(fhidata::norway_locations_b2020, norway_level_lau2_map_b2020)
  # save(senorge_b2020, file=file.path(base_loc,"senorge_b2020.rda"), compress = "xz")
}
