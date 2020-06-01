dfc = df.dropna(axis=0, subset=['chronic_disease'])
symptoms = set(dfs['symptoms'])
chronic_disease = set(dfc['chronic_disease'])
chronic_disease_temp = []
symptoms_lista_temp = []
for a in symptoms:
    symptoms_lista_temp.append(a.split(','))
for a in chronic_disease:
    chronic_disease_temp.append(a.split(','))
symptoms_lista = []
chronic_disease_lista = []
for a in symptoms_lista_temp:
    for i in a:
        symptoms_lista.append(i.strip().lower())
for a in chronic_disease_temp:
    for i in a:
        chronic_disease_lista.append(i.strip().lower())
symptoms_lista = set(symptoms_lista)
chronic_disease_lista = set(chronic_disease_lista)
for a in symptoms_lista:
    print(a)
print('---')
for a in chronic_disease_lista:
    print(a)

/** ======================================= **/

/** Script do comando SelectTopNRows de SSMS  **/
SELECT outcome
    , ID
    , age
    , sex
    , city
    , province
    , country
    , latitude
    , longitude
    , date_onset_symptoms
    , date_admission_hospital
    , date_confirmation
    , symptoms
    , lives_in_Wuhan
    , travel_history_dates
    , travel_history_location
    , chronic_disease_binary
    , chronic_disease
    , date_death_or_discharge
    , travel_history_binary
	, CASE WHEN symptoms like '%eye irritation%' THEN 1 ELSE 0 END AS 'symptom eye irritation'
	, CASE WHEN symptoms like '%shortness of breath%' THEN 1 ELSE 0 END AS 'symptom shortness of breath'
	, CASE WHEN symptoms like '%runny nose%' THEN 1 ELSE 0 END AS 'symptom runny nose'
	, CASE WHEN symptoms like '%myalgia%' THEN 1 ELSE 0 END AS 'symptom myalgia'
	, CASE WHEN symptoms like '%fever%' THEN 1 ELSE 0 END AS 'symptom fever'
	, CASE WHEN symptoms like '%myalgias%' THEN 1 ELSE 0 END AS 'symptom myalgias'
	, CASE WHEN symptoms like '%chills%' THEN 1 ELSE 0 END AS 'symptom chills'
	, CASE WHEN symptoms like '%respiratory symptoms%' THEN 1 ELSE 0 END AS 'symptom respiratory symptoms'
	, CASE WHEN symptoms like '%diarrhea%' THEN 1 ELSE 0 END AS 'symptom diarrhea'
	, CASE WHEN symptoms like '%sputum%' THEN 1 ELSE 0 END AS 'symptom sputum'
	, CASE WHEN symptoms like '%cough%' THEN 1 ELSE 0 END AS 'symptom cough'
	, CASE WHEN symptoms like '%fatigue%' THEN 1 ELSE 0 END AS 'symptom fatigue'
	, CASE WHEN symptoms like '%headache%' THEN 1 ELSE 0 END AS 'symptom headache'
	, CASE WHEN symptoms like '%transient fatigue%' THEN 1 ELSE 0 END AS 'symptom transient fatigue'
	, CASE WHEN symptoms like '%systemic weakness%' THEN 1 ELSE 0 END AS 'symptom systemic weakness'
	, CASE WHEN symptoms like '%conjunctivitis%' THEN 1 ELSE 0 END AS 'symptom conjunctivitis'
	, CASE WHEN symptoms like '%discomfort%' THEN 1 ELSE 0 END AS 'symptom discomfort'
	, CASE WHEN symptoms like '%malaise%' THEN 1 ELSE 0 END AS 'symptom malaise'
	, CASE WHEN symptoms like '%anorexia%' THEN 1 ELSE 0 END AS 'symptom anorexia'
	, CASE WHEN symptoms like '%lesions on chest radiographs%' THEN 1 ELSE 0 END AS 'symptom lesions on chest radiographs'
	, CASE WHEN symptoms like '%pneumonia%' THEN 1 ELSE 0 END AS 'symptom pneumonia'
    , CASE WHEN symptoms like '%sore throat%' THEN 1 ELSE 0 END AS 'symptom sore throat'
    , CASE WHEN chronic_disease LIKE '%history of hypertension%' THEN 1 ELSE 0 END AS 'cd history of hypertension'
    , CASE WHEN chronic_disease LIKE '%and lung cancer%' THEN 1 ELSE 0 END AS 'cd and lung cancer'
    , CASE WHEN chronic_disease LIKE '%type 2 diabetes%' THEN 1 ELSE 0 END AS 'cd type 2 diabetes'
    , CASE WHEN chronic_disease LIKE '%thought to have had other pre-existing conditions%' THEN 1 ELSE 0 END AS 'cd thought to have had other pre-existing conditions'
    , CASE WHEN chronic_disease LIKE '%coronary heart disease for which a stent had been implanted%' THEN 1 ELSE 0 END AS 'cd coronary heart disease for which a stent had been implanted'
    , CASE WHEN chronic_disease LIKE '%hepatitis b%' THEN 1 ELSE 0 END AS 'cd hepatitis b'
    , CASE WHEN chronic_disease LIKE '%prostate hypertrophy%' THEN 1 ELSE 0 END AS 'cd prostate hypertrophy'
    , CASE WHEN chronic_disease LIKE '%diabetes%' THEN 1 ELSE 0 END AS 'cd diabetes'
    , CASE WHEN chronic_disease LIKE '%hiv positive%' THEN 1 ELSE 0 END AS 'cd hiv positive'
    , CASE WHEN chronic_disease LIKE '%copd%' THEN 1 ELSE 0 END AS 'cd copd'
    , CASE WHEN chronic_disease LIKE '%hypertension%' THEN 1 ELSE 0 END AS 'cd hypertension'
FROM resultato
