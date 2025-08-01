create or replace view public.verkenner_verblijfsobjecten_verblijfsobjecten_v1 WITH (security_barrier) as
select
bag_verblijfsobjecten_v1.identificatie as "identificatie",
bag_verblijfsobjecten_v1.id as "id",
bag_verblijfsobjecten_v1.volgnummer as "volgnummer",
bag_verblijfsobjecten_v1.registratiedatum as "registratiedatum",
bag_verblijfsobjecten_v1.cbs_nummer as "cbs_nummer",
bag_verblijfsobjecten_v1.indicatie_woningvoorraad as "indicatie_woningvoorraad",
bag_verblijfsobjecten_v1.financieringscode_code as "financieringscode_code",
bag_verblijfsobjecten_v1.financieringscode_omschrijving as "financieringscode_omschrijving",
bag_verblijfsobjecten_v1.geconstateerd as "geconstateerd",
bag_verblijfsobjecten_v1.heeft_hoofdadres_id as "heeft_hoofdadres_id",
bag_verblijfsobjecten_v1.heeft_hoofdadres_identificatie as "heeft_hoofdadres_identificatie",
bag_verblijfsobjecten_v1.heeft_hoofdadres_volgnummer as "heeft_hoofdadres_volgnummer",
bag_verblijfsobjecten_v1.geometrie as "geometrie",
bag_verblijfsobjecten_v1.oppervlakte as "oppervlakte",
bag_verblijfsobjecten_v1.status_code as "status_code",
bag_verblijfsobjecten_v1.status_omschrijving as "status_omschrijving",
bag_verblijfsobjecten_v1.begin_geldigheid as "begin_geldigheid",
bag_verblijfsobjecten_v1.eind_geldigheid as "eind_geldigheid",
bag_verblijfsobjecten_v1.documentdatum as "documentdatum",
bag_verblijfsobjecten_v1.documentnummer as "documentnummer",
bag_verblijfsobjecten_v1.gebruiksdoel_woonfunctie_code as "gebruiksdoel_woonfunctie_code",
bag_verblijfsobjecten_v1.gebruiksdoel_woonfunctie_omschrijving as "gebruiksdoel_woonfunctie_omschrijving",
bag_verblijfsobjecten_v1.gebruiksdoel_gezondheidszorgfunctie_code as "gebruiksdoel_gezondheidszorgfunctie_code",
bag_verblijfsobjecten_v1.gebruiksdoel_gezondheidszorgfunctie_omschrijving as "gebruiksdoel_gezondheidszorgfunctie_omschrijving",
bag_verblijfsobjecten_v1.aantal_eenheden_complex as "aantal_eenheden_complex",
bag_verblijfsobjecten_v1.verdieping_toegang as "verdieping_toegang",
bag_verblijfsobjecten_v1.aantal_bouwlagen as "aantal_bouwlagen",
bag_verblijfsobjecten_v1.hoogste_bouwlaag as "hoogste_bouwlaag",
bag_verblijfsobjecten_v1.laagste_bouwlaag as "laagste_bouwlaag",
bag_verblijfsobjecten_v1.aantal_kamers as "aantal_kamers",
bag_verblijfsobjecten_v1.eigendomsverhouding_code as "eigendomsverhouding_code",
bag_verblijfsobjecten_v1.eigendomsverhouding_omschrijving as "eigendomsverhouding_omschrijving",
bag_verblijfsobjecten_v1.feitelijk_gebruik_code as "feitelijk_gebruik_code",
bag_verblijfsobjecten_v1.feitelijk_gebruik_omschrijving as "feitelijk_gebruik_omschrijving",
bag_verblijfsobjecten_v1.redenopvoer_code as "redenopvoer_code",
bag_verblijfsobjecten_v1.redenopvoer_omschrijving as "redenopvoer_omschrijving",
bag_verblijfsobjecten_v1.redenafvoer_code as "redenafvoer_code",
bag_verblijfsobjecten_v1.redenafvoer_omschrijving as "redenafvoer_omschrijving",
bag_verblijfsobjecten_v1.ligt_in_buurt_id as "ligt_in_buurt_id",
bag_verblijfsobjecten_v1.ligt_in_buurt_identificatie as "ligt_in_buurt_identificatie",
bag_verblijfsobjecten_v1.ligt_in_buurt_volgnummer as "ligt_in_buurt_volgnummer",
bag_verblijfsobjecten_v1.heeft_dossier_id as "heeft_dossier_id",
bag_verblijfsobjecten_v1.bagproces_code as "bagproces_code",
bag_verblijfsobjecten_v1.bagproces_omschrijving as "bagproces_omschrijving",
bag_panden_v1.id as "bag_panden_id",
bag_panden_v1.identificatie as "bag_panden_identificatie",
bag_panden_v1.volgnummer as "bag_panden_volgnummer",
bag_panden_v1.registratiedatum as "bag_panden_registratiedatum",
bag_panden_v1.geconstateerd as "bag_panden_geconstateerd",
bag_panden_v1.geometrie as "bag_panden_geometrie",
bag_panden_v1.oorspronkelijk_bouwjaar as "bag_panden_oorspronkelijk_bouwjaar",
bag_panden_v1.status_code as "bag_panden_status_code",
bag_panden_v1.status_omschrijving as "bag_panden_status_omschrijving",
bag_panden_v1.begin_geldigheid as "bag_panden_begin_geldigheid",
bag_panden_v1.eind_geldigheid as "bag_panden_eind_geldigheid",
bag_panden_v1.documentdatum as "bag_panden_documentdatum",
bag_panden_v1.documentnummer as "bag_panden_documentnummer",
bag_panden_v1.naam as "bag_panden_naam",
bag_panden_v1.ligging_code as "bag_panden_ligging_code",
bag_panden_v1.ligging_omschrijving as "bag_panden_ligging_omschrijving",
bag_panden_v1.type_woonobject as "bag_panden_type_woonobject",
bag_panden_v1.ligt_in_bouwblok_id as "bag_panden_ligt_in_bouwblok_id",
bag_panden_v1.ligt_in_bouwblok_identificatie as "bag_panden_ligt_in_bouwblok_identificatie",
bag_panden_v1.ligt_in_bouwblok_volgnummer as "bag_panden_ligt_in_bouwblok_volgnummer",
bag_panden_v1.ligt_in_buurt_id as "bag_panden_ligt_in_buurt_id",
bag_panden_v1.ligt_in_buurt_identificatie as "bag_panden_ligt_in_buurt_identificatie",
bag_panden_v1.ligt_in_buurt_volgnummer as "bag_panden_ligt_in_buurt_volgnummer",
bag_panden_v1.aantal_bouwlagen as "bag_panden_aantal_bouwlagen",
bag_panden_v1.hoogste_bouwlaag as "bag_panden_hoogste_bouwlaag",
bag_panden_v1.laagste_bouwlaag as "bag_panden_laagste_bouwlaag",
bag_panden_v1.heeft_dossier_id as "bag_panden_heeft_dossier_id",
bag_panden_v1.bagproces_code as "bag_panden_bagproces_code",
bag_panden_v1.bagproces_omschrijving as "bag_panden_bagproces_omschrijving"
from bag_verblijfsobjecten_v1
left join bag_verblijfsobjecten_ligt_in_panden_v1 on bag_verblijfsobjecten_v1.id = bag_verblijfsobjecten_ligt_in_panden_v1.verblijfsobjecten_id
left join bag_panden_v1 on bag_panden_v1.id = bag_verblijfsobjecten_ligt_in_panden_v1.ligt_in_panden_id
