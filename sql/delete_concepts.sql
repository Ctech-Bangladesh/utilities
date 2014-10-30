SET @cutoff_date = '2014-10-30 00:00:00';
delete from concept_description where date_created >= @cutoff_date;
delete from concept_word where concept_id in (select concept_id from concept where date_created >= @cutoff_date);
delete from concept_stop_word where concept_id in (select concept_id from concept where date_created >= @cutoff_date);
delete from concept_numeric where concept_id in (select concept_id from concept where date_created >= @cutoff_date);
delete from concept_answer where date_created >= @cutoff_date;
delete from concept_name where date_created >= @cutoff_date;
delete from concept where date_created >= @cutoff_date;
delete from concept_set where date_created >= @cutoff_date;
delete from concept_reference_map where date_created >= @cutoff_date;