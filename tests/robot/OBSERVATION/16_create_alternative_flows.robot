# Copyright (c) 2020 Peter Wohlfarth (Appsfactory GmbH), Wladislaw Wagner (Vitasystems GmbH),
# Dave Petzold (Appsfactory GmbH) & Pauline Schulz (Appsfactory GmbH)
#
# This file is part of Project EHRbase
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.



*** Settings ***
Resource                ${EXECDIR}/robot/_resources/suite_settings.robot

Test Setup              generic.prepare new request session    Prefer=return=representation
...															   Authorization=Basic bXl1c2VyOm15UGFzc3dvcmQ0MzI=

Force Tags              observation_create



*** Variables ***




*** Test Cases ***


001 Create Observation Blood Pressure loinc datetime
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_loinc-datetime.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    loinc    datetime

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_loinc-datetime.json
    observation.validate response - 201


002 Create Observation Blood Pressure loinc instant
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_loinc-instant.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative   loinc    instant    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_loinc-instant.json
    observation.validate response - 201



003 Create Observation Blood Pressure loinc period
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_loinc-period.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    loinc    period    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_loinc-period.json
    observation.validate response - 201



004 Create Observation Blood Pressure loinc timing
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_loinc-timing.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    loinc    timing    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_loinc-timing.json
    observation.validate response - 201



005 Create Observation Blood Pressure snomed datetime
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_snomed-datetime.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    snomed    datetime    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_snomed-datetime.json
    observation.validate response - 201



006 Create Observation Blood Pressure snomed instant
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_snomed-instant.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    snomed    instant    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_snomed-instant.json
    observation.validate response - 201



007 Create Observation Blood Pressure snomed period
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_snomed-period.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    snomed    period    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_snomed-period.json
    observation.validate response - 201



008 Create Observation Blood Pressure snomed timing
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-blood-pressure_snomed-timing.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	blood-pressure    valid    alternative    snomed    timing    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create blood pressure  Blood Pressure  create-blood-pressure_snomed-timing.json
    observation.validate response - 201




009 Create Observation Body Height loinc datetime
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_loinc-datetime.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    loinc    datetime

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_loinc-datetime.json
    observation.validate response - 201


010 Create Observation Body Height loinc period
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_loinc-period.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    loinc    period    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_loinc-period.json
    observation.validate response - 201



011 Create Observation Body Height loinc period_2
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_loinc-period_2.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    loinc    period_2    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_loinc-period_2.json
    observation.validate response - 201



012 Create Observation Body Height snomed datetime
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_snomed-datetime.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    snomed    datetime    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_snomed-datetime.json
    observation.validate response - 201



013 Create Observation Body Height snomed period
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_snomed-period.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    snomed    period    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_snomed-period.json
    observation.validate response - 201



014 Create Observation Body Height snomed period_2
	[Documentation]     1. *CREATE* new EHR record\n\n 
	...                 2. *LOAD* _create-body-height_snomed-period_2.json_\n\n
	...                 3. *UPDATE* ``Subject - Identifier - value`` with the _UUID:_ ${subject_id} which was created in EHR record\n\n
    ...                 4. *POST* example JSON to observation endpoint\n\n
	...                 5. *VALIDATE* the response status
	[Tags]             	body-height    valid    alternative    snomed    period_2    not-ready_bug    not-ready

    ehr.create new ehr    000_ehr_status.json
    observation.create body height  Body Height  create-body-height_snomed-period_2.json
    observation.validate response - 201
