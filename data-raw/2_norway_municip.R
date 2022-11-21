library(data.table)
# geojsonio
# broom
# rmapshaper
# sp
gen_nor_municip_map <- function(
    x_year_end,
    insert = FALSE,
    split = FALSE,
    return_sf=FALSE
) {
  stopifnot(x_year_end %in% c("2019", "2020"))

  . <- NULL
  id <- NULL
  location_code <- NULL
  long <- NULL
  lat <- NULL
  long_center <- NULL
  lat_center <- NULL
  group <- NULL
  hole <- NULL
  piece <- NULL
  long_diff <- NULL
  lat_diff <- NULL

  if(return_sf){
    tol <- 1300
  } else {
    tol <- 500
  }

  if (x_year_end == 2019) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Kommuner19.geojson"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  } else if (x_year_end == 2020) {
    spdf <- geojsonio::geojson_read(
      fs::path("data-raw", "files", "Kommuner20.geojson"),
      what = "sp"
    )
    spdf_simple <- rgeos::gSimplify(spdf, tol=tol, topologyPreserve = F)
    # pryr::object_size(spdf_simple)
  }

  if(return_sf){
    spgeo <- sp::spTransform(spdf_simple, sp::CRS("+proj=longlat +datum=WGS84"))
    x <- sf::st_as_sf(spgeo)
    x$location_code <- sprintf("municip%s", formatC(as.numeric(spdf$kommunenummer), width = 4, flag = "0"))
    return(x)
  }

  spdf_simple$kommunenummer <- spdf$kommunenummer
  spdf_fortified <- broom::tidy(spdf_simple, region = "kommunenummer")

  setDT(spdf_fortified)
  spdf_fortified[, location_code := sprintf("municip_nor%s", formatC(as.numeric(id), width = 4, flag = "0"))]

  # convert from UTM to latlong
  utm <- spdf_fortified[, c("long", "lat")]
  sputm <- sp::SpatialPoints(utm, proj4string = sp::CRS("+proj=utm +zone=33 +datum=WGS84"))
  spgeo <- sp::spTransform(sputm, sp::CRS("+proj=longlat +datum=WGS84"))
  spgeo <- as.data.table(spgeo)

  spdf_fortified[, long := spgeo$long]
  spdf_fortified[, lat := spgeo$lat]

  if (insert) {
    extra <- spdf_fortified[stringr::str_detect(location_code, "municip_nor0[3]")]
    extra[, long_center := mean(long), by = .(location_code)]
    extra[, lat_center := mean(lat), by = .(location_code)]
    extra[, long := long + 10 + (long - long_center) * 10]
    extra[, lat := lat + 2 + (lat - lat_center) * 10]
    extra[, long_center := NULL]
    extra[, lat_center := NULL]
    extra[, group := paste0("x", group)]

    spdf_fortified <- rbind(spdf_fortified, extra)
  }

  if (split) {
    locations <- c(
      stringr::str_subset(spdf_fortified$location_code, "municip_nor18"),
      stringr::str_subset(spdf_fortified$location_code, "municip_nor19"),
      stringr::str_subset(spdf_fortified$location_code, "municip_nor20"),
      stringr::str_subset(spdf_fortified$location_code, "municip_nor54")
    )
    spdf_fortified[location_code %in% locations, long := (long - mean(long)) * 0.60 + mean(long) - 17]
    spdf_fortified[location_code %in% locations, lat := (lat - mean(lat)) * 0.70 + mean(lat) - 5.5]

    spdf_fortified[location_code %in% locations, long_center := mean(long)]
    spdf_fortified[location_code %in% locations, lat_center := mean(lat)]

    spdf_fortified[location_code %in% locations, long_diff := long - long_center]
    spdf_fortified[location_code %in% locations, lat_diff := lat - lat_center]

    spdf_fortified[location_code %in% locations, long_diff := long_diff * cos(-0.05 * pi) + lat_diff * sin(-0.05 * pi)]
    spdf_fortified[location_code %in% locations, lat_diff := -1 * long_diff * sin(-0.05 * pi) + lat_diff * cos(-0.05 * pi)]

    spdf_fortified[location_code %in% locations, long := long_diff + long_center]
    spdf_fortified[location_code %in% locations, lat := lat_diff + lat_center]

    spdf_fortified[, long_center := NULL]
    spdf_fortified[, lat_center := NULL]
    spdf_fortified[, long_diff := NULL]
    spdf_fortified[, lat_diff := NULL]
  }

  spdf_fortified[, hole := NULL]
  spdf_fortified[, piece := NULL]
  spdf_fortified[, id := NULL]

  return(invisible(spdf_fortified))
}

# ***************************** #
# map default ----

## 2020 ----
nor_municip_map_b2020_default_dt <-  gen_nor_municip_map(x_year_end=2020)
usethis::use_data(nor_municip_map_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_municip_map_b2020_default_sf <-  gen_nor_municip_map(x_year_end=2020, return_sf = T)
usethis::use_data(nor_municip_map_b2020_default_sf, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_municip_map_b2019_default_dt <-  gen_nor_municip_map(x_year_end=2019)
usethis::use_data(nor_municip_map_b2019_default_dt, overwrite = TRUE, version = 3, compress = "xz")
nor_municip_map_b2019_default_sf <-  gen_nor_municip_map(x_year_end=2019, return_sf = T)
usethis::use_data(nor_municip_map_b2019_default_sf, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# map insert oslo ----

## 2020 ----
nor_municip_map_b2020_insert_oslo_dt <- gen_nor_municip_map(x_year_end=2020, insert = T)
usethis::use_data(nor_municip_map_b2020_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_municip_map_b2019_insert_oslo_dt <- gen_nor_municip_map(x_year_end=2019, insert = T)
usethis::use_data(nor_municip_map_b2019_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# map split ----

## 2020 ----
nor_municip_map_b2020_split_dt <-  gen_nor_municip_map(x_year_end=2020, split=T)
usethis::use_data(nor_municip_map_b2020_split_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels default ----

## 2020 ----
nor_municip_position_geolabels_b2020_default_dt <- nor_municip_map_b2020_default_dt[,.(
  long = mean(long),
  lat = mean(lat)
), keyby = .(location_code)]
usethis::use_data(nor_municip_position_geolabels_b2020_default_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_municip_position_geolabels_b2019_default_dt <- nor_municip_map_b2019_default_dt[,.(
  long = mean(long),
  lat = mean(lat)
), keyby = .(location_code)]
usethis::use_data(nor_municip_position_geolabels_b2019_default_dt, overwrite = TRUE, version = 3, compress = "xz")

# ***************************** #
# labels insert oslo ----

## 2020 ----
nor_municip_position_geolabels_b2020_insert_oslo_dt <- nor_municip_map_b2020_insert_oslo_dt[,.(
  long = mean(long),
  lat = mean(lat)
), keyby = .(location_code)]
usethis::use_data(nor_municip_position_geolabels_b2020_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")

## 2019 ----
nor_municip_position_geolabels_b2019_insert_oslo_dt <- nor_municip_map_b2019_insert_oslo_dt[,.(
  long = mean(long),
  lat = mean(lat)
), keyby = .(location_code)]
usethis::use_data(nor_municip_position_geolabels_b2019_insert_oslo_dt, overwrite = TRUE, version = 3, compress = "xz")


