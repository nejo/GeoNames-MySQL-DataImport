LOAD DATA LOCAL INFILE 'data/allCountries.txt'
INTO TABLE geo_geoname
CHARACTER SET 'UTF8'
(id, name, name_ascii, alternate_names, latitude, longitude, feature_class, feature_code, country, cc2, admin1, admin2, admin3, admin4, population, elevation, gtopo30, timezone, mod_date);

LOAD DATA LOCAL INFILE 'data/alternateNames.txt'
INTO TABLE geo_alternate_name
CHARACTER SET 'UTF8'
(id, geoname_id, iso_language, name, is_preferred, is_short, is_colloquial, is_historic);

LOAD DATA LOCAL INFILE 'data/iso-languagecodes.txt'
INTO TABLE geo_language
CHARACTER SET 'UTF8'
IGNORE 1 LINES
(iso_639_3, iso_639_2, iso_639_1, name);

LOAD DATA LOCAL INFILE 'data/admin1CodesASCII.txt'
INTO TABLE geo_admin1
CHARACTER SET 'UTF8'
(code, name, name_ascii, geoname_id);

LOAD DATA LOCAL INFILE 'data/admin2Codes.txt'
INTO TABLE geo_admin2
CHARACTER SET 'UTF8'
(code, name, name_ascii, geoname_id);

LOAD DATA LOCAL INFILE 'data/hierarchy.txt'
INTO TABLE geo_hierarchy
CHARACTER SET 'UTF8'
(parent_id, child_id, type);

LOAD DATA LOCAL INFILE 'data/featureCodes_en.txt'
INTO TABLE geo_feature
CHARACTER SET 'UTF8'
(code, name, description);

LOAD DATA LOCAL INFILE 'data/timeZones.txt'
INTO TABLE geo_timezone
CHARACTER SET 'UTF8'
IGNORE 1 LINES
(country_code, id, gmt_offset, dst_offset, raw_offset);

LOAD DATA LOCAL INFILE 'data/countryInfo.txt'
INTO TABLE geo_country
CHARACTER SET 'UTF8'
IGNORE 51 LINES
(iso_alpha2, iso_alpha3, iso_numeric, fips_code, name, capital, area, population, continent, tld, currency, currency_name, phone, postal_code_format, postal_code_regex, languages, geoname_id, neighbours, equivalent_fips_code);

LOAD DATA LOCAL INFILE 'data/continentCodes.txt'
INTO TABLE geo_continent
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ','
(code, name, geoname_id);
