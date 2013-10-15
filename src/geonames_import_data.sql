LOAD DATA LOCAL INFILE 'data/allCountries.txt'
INTO TABLE geo_geoname
CHARACTER SET 'UTF8'
(geonameid, name, asciiname, alternatenames, latitude, longitude, fclass, fcode, country, cc2, admin1, admin2, admin3, admin4, population, elevation, gtopo30, timezone, moddate);

LOAD DATA LOCAL INFILE 'data/alternateNames.txt'
INTO TABLE geo_alternate_name
CHARACTER SET 'UTF8'
(alternatenameid, geonameid, isoLanguage, alternateName, isPreferredName, isShortName, isColloquial, isHistoric);

LOAD DATA LOCAL INFILE 'data/iso-languagecodes.txt'
INTO TABLE geo_language
CHARACTER SET 'UTF8'
IGNORE 1 LINES
(iso_639_3, iso_639_2, iso_639_1, language_name);

LOAD DATA LOCAL INFILE 'data/admin1CodesASCII.txt'
INTO TABLE geo_admin1
CHARACTER SET 'UTF8'
(code, name, nameAscii, geonameid);

LOAD DATA LOCAL INFILE 'data/admin2Codes.txt'
INTO TABLE geo_admin2
CHARACTER SET 'UTF8'
(code, name, nameAscii, geonameid);

LOAD DATA LOCAL INFILE 'data/hierarchy.txt'
INTO TABLE geo_hierarchy
CHARACTER SET 'UTF8'
(parentId, childId, type);

LOAD DATA LOCAL INFILE 'data/featureCodes_en.txt'
INTO TABLE geo_feature
CHARACTER SET 'UTF8'
(code, name, description);

LOAD DATA LOCAL INFILE 'data/timeZones.txt'
INTO TABLE geo_timezone
CHARACTER SET 'UTF8'
IGNORE 1 LINES
(timeZoneId, GMT_offset, DST_offset);

LOAD DATA LOCAL INFILE 'data/countryInfo.txt'
INTO TABLE geo_country
CHARACTER SET 'UTF8'
IGNORE 51 LINES
(iso_alpha2, iso_alpha3, iso_numeric, fips_code, name, capital, areaInSqKm, population, continent, tld, currency, currencyName, phone, postalCodeFormat, postalCodeRegex, languages, geonameid, neighbours, equivalentFipsCode);

LOAD DATA LOCAL INFILE 'data/continentCodes.txt'
INTO TABLE geo_continent
CHARACTER SET 'UTF8'
FIELDS TERMINATED BY ','
(code, name, geonameId);
