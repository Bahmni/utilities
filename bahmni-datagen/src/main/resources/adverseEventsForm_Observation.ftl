{
  "locationUuid": "371df356-3f5a-11e5-b380-0050568236ae",
  "patientUuid": "${patientUuid}",
  "encounterUuid": "${encounterUuid}",
  "visitUuid": "${visitUuid}",
  "providers": [
    {
      "uuid": "36b6ea1f-3f5a-11e5-b380-0050568236ae"
    }
  ],
  "encounterDateTime": "${encounterDateTime}",
  "extensions": {},
  "context": {
    "patientProgramUuid": "${patientProgramUuid}"
  },
  "visitType": "General",
  "bahmniDiagnoses": [],
  "orders": [],
  "drugOrders": [],
  "disposition": null,
  "observations": [
    {
      "concept": {
        "uuid": "64f0a647-441e-443a-a2a7-1b34df71302d",
        "name": "Adverse Events Template",
        "dataType": "N/A"
      },
      "units": null,
      "label": "Adverse Events",
      "possibleAnswers": [],
      "groupMembers": [
        {
          "concept": {
            "uuid": "6f419e98-72a8-4ff2-bf39-ae582202295b",
            "name": "AE Form, Date of AE onset",
            "dataType": "Date"
          },
          "units": null,
          "label": "Date of AE onset",
          "possibleAnswers": [],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_607",
          "erroneousValue": null,
          "value": "2016-06-15",
          "autocompleteValue": "2016-06-15",
          "disabled": false,
          "_value": "2016-06-15",
          "voided": false
        },
        {
          "concept": {
            "uuid": "2caadb20-9193-4a6e-9ec9-0730686defaa",
            "name": "AE Form, Date of AE report",
            "dataType": "Date"
          },
          "units": null,
          "label": "Date of AE report",
          "possibleAnswers": [],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": {
            "required": true
          },
          "uniqueId": "observation_608",
          "erroneousValue": null,
          "value": "2016-06-15",
          "autocompleteValue": "2016-06-15",
          "disabled": false,
          "_value": "2016-06-15",
          "voided": false
        },
        {
          "concept": {
            "uuid": "67bfe0cf-ad74-4724-918d-41135ad6cb9d",
            "name": "AE Form, AE ID number",
            "dataType": "Text"
          },
          "units": null,
          "label": "AE ID number",
          "possibleAnswers": [],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_609",
          "erroneousValue": null,
          "value": "1234",
          "autocompleteValue": "1234",
          "disabled": false,
          "_value": "1234",
          "voided": false
        },
        {
          "concept": {
            "uuid": "fed9950c-9eac-4ba9-b232-7ad556842135",
            "name": "AE Form, TB drugs suspended due to this AE",
            "dataType": "Boolean"
          },
          "units": null,
          "label": "All drugs suspended?",
          "possibleAnswers": [],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": {
            "Baseline, Date of baseline": {
              "required": true
            },
            "Baseline, Other Marital Status": {
              "conciseText": true
            },
            "Baseline, Last DSTB Registration ID": {
              "conciseText": true
            },
            "Baseline, Last DRTB Registration ID": {
              "conciseText": true
            },
            "TI, Did the patient start treatment": {
              "required": true
            },
            "TUBERCULOSIS DRUG TREATMENT START DATE": {
              "required": true
            },
            "Consent scan copy": {
              "allowAddMore": true
            },
            "Baseline, Past TB treatment table": {
              "allowAddMore": true
            },
            "Baseline, List of drugs taken for more than a month": {
              "multiSelect": true
            },
            "Baseline, Disease site": {
              "multiSelect": true
            },
            "TI, Patients for whom the construction of a regimen with four likely effective second-line drugs is not possible": {
              "multiSelect": true
            },
            "TI, Other patients who have high risk of unfavorable outcome but who do not fit the above categories": {
              "multiSelect": true
            },
            "Estimated date of confinement": {
              "allowFutureDates": true
            },
            "PRF, Estimated date of delivery": {
              "allowFutureDates": true
            },
            "Baseline, Method of MDR-TB confirmation": {
              "multiSelect": true
            },
            "Baseline, Past TB treatment drug regimen": {
              "multiSelect": true
            },
            "Baseline, Most recent previous TB treatment registration number": {
              "conciseText": true
            },
            "Baseline, Cancer type": {
              "conciseText": true
            },
            "Baseline, Psychiatric illness type": {
              "conciseText": true
            },
            "Baseline, Smear result": {
              "conciseText": true
            },
            "Baseline, Culture result": {
              "conciseText": true
            },
            "Baseline, Xpert MTB RIF result": {
              "conciseText": true
            },
            "Baseline, DST results": {
              "conciseText": true
            },
            "Baseline, Exact extrapulmonary site": {
              "conciseText": true
            },
            "Baseline, Other drug taken for more than a month": {
              "conciseText": true,
              "allowAddMore": true
            },
            "Baseline, HIV program registration number": {
              "conciseText": true
            },
            "Baseline, Drugs used in ARV treatment": {
              "multiSelect": true
            },
            "Baseline, Other employment": {
              "conciseText": true
            },
            "Baseline, Registration number of past TB treatment": {
              "conciseText": true
            },
            "Baseline, Place treatment started": {
              "conciseText": true
            },
            "Baseline, Type of heart disease": {
              "conciseText": true
            },
            "Baseline, Other pre-existing disease": {
              "allowAddMore": true
            },
            "Baseline, Other method of MDR-TB confirmation": {
              "conciseText": true
            },
            "Followup Template": {
              "allowAddMore": true
            },
            "Followup, Visit Date": {
              "required": true
            },
            "Followup, Pregnancy form case ID number": {
              "conciseText": true
            },
            "Followup, New serious AE reference number": {
              "conciseText": true
            },
            "Followup, New AE reference number": {
              "conciseText": true
            },
            "Followup, Brief Peripheral Neuropathy Screen": {
              "isTabular": true
            },
            "Followup, Vibration Perception in Left": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Ankle reflexes in left": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Vibration Perception in Right": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Ankle reflexes in right": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Visual Acuity": {
              "isTabular": true
            },
            "Followup, Pain Aching or Buring in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Pins and Needles in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Numbness in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Pain Aching or Buring in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Pins and Needles in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Followup, Numbness in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Visual acuity, left eye": {
              "disableAddNotes": true
            },
            "Visual acuity, right eye": {
              "disableAddNotes": true
            },
            "EOT, Outcome": {
              "required": true
            },
            "EOT, Reasons for treatment interrruption": {
              "multiSelect": true
            },
            "EOT, Reasons for failure definition": {
              "multiSelect": true
            },
            "EOT, Type of surgery related to death": {
              "conciseText": true
            },
            "EOT, Non TB cause of death": {
              "conciseText": true
            },
            "EOT, Transferred to where": {
              "conciseText": true
            },
            "6m PTO, Reasons for no post treatment followup": {
              "multiSelect": true
            },
            "6m PTO, Type of surgery related to post treatment death": {
              "conciseText": true
            },
            "6m PTO, Non TB cause of post treatment death": {
              "conciseText": true
            },
            "6m PTO, Other reasons for no post treatment followup": {
              "conciseText": true
            },
            "6m PTO, Transferred to where post treatment": {
              "conciseText": true
            },
            "6m PTO, Other reasons for no post treatment outcome": {
              "conciseText": true
            },
            "AE Form, Date of AE report": {
              "required": true
            },
            "Adverse Events Template": {
              "allowAddMore": true
            },
            "AE Form, AE term comprehensive list": {
              "autocomplete": true,
              "required": true
            },
            "AE Form, Other AE term": {
              "conciseText": true
            },
            "AE Form, Related Test Result": {
              "allowAddMore": true
            },
            "AE Form, AE related test": {
              "autocomplete": true
            },
            "AE Form, AE related test ID": {
              "conciseText": true
            },
            "AE Form, AE severity review": {
              "allowAddMore": true
            },
            "AE Form, TB drug treatment": {
              "allowAddMore": true
            },
            "AE Form, Other causal factors related to AE": {
              "multiSelect": true
            },
            "AE Form, Non TB drug of other causal factor": {
              "allowAddMore": true,
              "conciseText": true
            },
            "AE Form, Comorbidity of other causal factor": {
              "allowAddMore": true,
              "conciseText": true
            },
            "AE Form, Other causal factor": {
              "allowAddMore": true,
              "conciseText": true
            },
            "AE Form, TB drug name": {
              "dropdown": true
            },
            "Serious Adverse Events Template": {
              "allowAddMore": true
            },
            "SAE Form, Date of SAE report": {
              "required": true
            },
            "SAE Form, TB drug treatment": {
              "allowAddMore": true
            },
            "SAE Form, Other causal factors related to SAE": {
              "multiSelect": true
            },
            "SAE Form, TB drug name": {
              "dropdown": true
            },
            "SAE Form, Related tests (data from PV unit summary)": {
              "allowAddMore": true
            },
            "SAE Form, Related test": {
              "autocomplete": true
            },
            "SAE Form, SAE term comprehensive AE list": {
              "autocomplete": true,
              "required": true
            },
            "SAE Form, SAE severity review": {
              "allowAddMore": true
            },
            "SAE Form, Non TB drug of other causal factors": {
              "allowAddMore": true,
              "conciseText": true
            },
            "SAE Form, Comorbidity of other causal factors": {
              "allowAddMore": true,
              "conciseText": true
            },
            "SAE Form, Other causal factor": {
              "allowAddMore": true,
              "conciseText": true
            },
            "PRF, Partners initials": {
              "conciseText": true
            },
            "PRF, Pregnancy report case ID": {
              "required": false,
              "conciseText": true
            },
            "PRF, TB drug name": {
              "dropdown": true
            },
            "PRF, Non-TB drug name": {
              "conciseText": true
            },
            "PRF, TB drug exposure": {
              "allowAddMore": true
            },
            "PRF, Non-TB drug exposure": {
              "allowAddMore": true
            },
            "PRF, Infant details": {
              "allowAddMore": true
            },
            "HAN, Hospital admission date": {
              "required": true
            },
            "HDS, Hospital admission date": {
              "required": true
            },
            "HDS, Hospital discharge date": {
              "required": true
            },
            "HDS, Principal AE/SAE ID number": {
              "conciseText": true
            },
            "HDS, New AE/SAE ID number": {
              "conciseText": true
            },
            "HDS, Other type of TB related surgery": {
              "conciseText": true
            },
            "HDS, Type of TB related surgery": {
              "multiSelect": true
            },
            "Lab, Month of scheduled visit": {
              "conciseText": true
            },
            "Lab, Lab ID": {
              "conciseText": true
            },
            "Lab, Sample ID": {
              "conciseText": true
            },
            "Lab, Other test name": {
              "conciseText": true
            },
            "Lab, Other test result": {
              "conciseText": true
            },
            "Lab, Other test unit": {
              "conciseText": true
            },
            "Specimen Collection Date": {
              "required": true
            },
            "Xray Template": {
              "allowAddMore": true
            },
            "Xray, Chest Xray Date": {
              "required": true
            },
            "Xray, Other Radiological Tests": {
              "allowAddMore": true
            },
            "Xray, Additional details": {
              "isTabular": true
            },
            "Xray, Cavity left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Maximum cavity size left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Fibrosis left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Infiltrate left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Tuberculoma left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Disseminated left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Nodule left side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Pleural effusion left side": {
              "disableAddNotes": true
            },
            "Xray, Lymphadenopathy left side": {
              "disableAddNotes": true
            },
            "Xray, Pneumothorax left side": {
              "disableAddNotes": true
            },
            "Xray, Cavity right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Maximum cavity size right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Fibrosis right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Infiltrate right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Tuberculoma right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Disseminated right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Nodule right side": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Xray, Pleural effusion right side": {
              "disableAddNotes": true
            },
            "Xray, Lymphadenopathy right side": {
              "disableAddNotes": true
            },
            "Xray, Pneumothorax right side": {
              "disableAddNotes": true
            },
            "Audiometry, Audiometry template details": {
              "allowAddMore": true
            },
            "Audiometry Template": {
              "allowAddMore": true
            },
            "Audiometry, Month of scheduled visit": {
              "conciseText": true
            },
            "Audiometry, Audiometry date": {
              "required": true
            },
            "Audiometry, Audiometry details": {
              "isTabular": true
            },
            "Audiometry, Left ear at 250Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 500Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 1000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 2000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 4000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 6000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Left ear at 8000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 250Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 500Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 1000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 2000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 4000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 6000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Audiometry, Right ear at 8000Hz": {
              "disableAddNotes": true,
              "dropdown": true
            },
            "Electrocardiogram Template": {
              "allowAddMore": true
            },
            "EKG, Date of EKG": {
              "required": true
            },
            "EKG, Other Rhythm": {
              "conciseText": true
            },
            "Monthly Treatment Completeness Template": {
              "allowAddMore": true
            },
            "MTC, Month and year of treatment period": {
              "required": true,
              "minYear": 2000,
              "maxYear": 2020,
              "allowFutureDates": true,
              "displayMonthAndYear": true
            },
            "MTC, Other treatment delivery method": {
              "conciseText": true
            },
            "MTC, Additional contributing reasons for less than 100% completeness": {
              "multiSelect": true
            },
            "MTC, Additional contributing program related reasons": {
              "multiSelect": true
            },
            "MTC, Additional contributing medical or treatment related reasons": {
              "multiSelect": true
            },
            "MTC, Additional contributing patient related reasons": {
              "multiSelect": true
            },
            "MTC, DOT rate details": {
              "allowAddMore": true
            },
            "Performance Status Template": {
              "allowAddMore": true
            },
            "Performance Status, Assessment date": {
              "required": true
            },
            "6m PTO, 6 month post treatment outcome": {
              "required": true
            },
            "ECOG Performance Status": {
              "dropdown": true
            },
            "BACTERIOLOGY_SAMPLE_ID": {
              "conciseText": true
            },
            "BACTERIOLOGY_SAMPLE_TYPE": {
              "conciseText": true
            },
            "BACTERIOLOGY_SAMPLE_APPEARANCE": {
              "conciseText": true
            },
            "Bacteriology, Sequencing": {
              "allowAddMore": true
            },
            "Bacteriology, Other drug name": {
              "conciseText": true
            },
            "Bacteriology, Other culture medium": {
              "conciseText": true
            },
            "Bacteriology, DST with MIC drug name": {
              "conciseText": true
            },
            "Bacteriology, MIC technique/medium": {
              "conciseText": true
            },
            "Bacteriology, Minimum inhibitory concentration": {
              "conciseText": true
            },
            "Bacteriology, Rifampicin result details": {
              "isTabular": true
            },
            "Bacteriology, Other drug details": {
              "isTabular": true,
              "allowAddMore": true
            },
            "Baseline, Visual Acuity": {
              "isTabular": true
            },
            "Bacteriology, DST with MIC": {
              "isTabular": false,
              "allowAddMore": true
            },
            "Baseline, Brief Peripheral Neuropathy Screen": {
              "isTabular": true
            },
            "Baseline, Pain Aching or Buring in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Pins and Needles in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Numbness in Left Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Pain Aching or Buring in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Pins and Needles in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Numbness in Right Feet and Leg": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Vibration Perception in Left": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Ankle reflexes in left": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Vibration Perception in Right": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Baseline, Ankle reflexes in right": {
              "dropdown": true,
              "disableAddNotes": true
            },
            "Lab, Hemoglobin": {
              "isTabular": true
            },
            "RETURN VISIT DATE": {
              "allowFutureDates": true
            },
            "Lab, Hematocrit": {
              "isTabular": true
            },
            "Lab, Platelet count": {
              "isTabular": true
            },
            "Lab, RBC count": {
              "isTabular": true
            },
            "Lab, WBC": {
              "isTabular": true
            },
            "Lab, Absolute neutrophil count": {
              "isTabular": true
            },
            "Lab, Neutrophils": {
              "isTabular": true
            },
            "Lab, Potassium": {
              "isTabular": true
            },
            "Lab, Magnesium": {
              "isTabular": true
            },
            "Lab, Ionized Calcium": {
              "isTabular": true
            },
            "Lab, Urea": {
              "isTabular": true
            },
            "Lab, Creatinine": {
              "isTabular": true
            },
            "Lab, Glucose": {
              "isTabular": true
            },
            "Lab, Glucose (Fasting)": {
              "isTabular": true
            },
            "Lab, HbA1c": {
              "isTabular": true
            },
            "Lab, TSH": {
              "isTabular": true
            },
            "Lab, Lipase": {
              "isTabular": true
            },
            "Lab, AST (SGOT)": {
              "isTabular": true
            },
            "Lab, ALT (SGPT)": {
              "isTabular": true
            },
            "Lab, Total Bilirubin": {
              "isTabular": true
            },
            "Lab, CD4 count": {
              "isTabular": true
            },
            "Lab, Serum Albumin": {
              "isTabular": true
            },
            "HEMATOCRIT": {
              "disableAddNotes": true
            },
            "Platelets": {
              "disableAddNotes": true
            },
            "RED BLOOD CELLS": {
              "disableAddNotes": true
            },
            "WHITE BLOOD CELLS": {
              "disableAddNotes": true
            },
            "ABSOLUTE NEUTROPHIL COUNT": {
              "disableAddNotes": true
            },
            "Lab, Absolute neutrophil count other test result": {
              "disableAddNotes": true
            },
            "Lab, Neutrophils test result": {
              "disableAddNotes": true
            },
            "SERUM POTASSIUM": {
              "disableAddNotes": true
            },
            "Lab, Magnesium test result": {
              "disableAddNotes": true
            },
            "Lab, Ionized Calcium test result": {
              "disableAddNotes": true
            },
            "BLOOD UREA NITROGEN": {
              "disableAddNotes": true
            },
            "Serum creatinine (umol/L)": {
              "disableAddNotes": true
            },
            "SERUM GLUCOSE": {
              "disableAddNotes": true
            },
            "Fasting blood glucose measurement (mg/dL)": {
              "disableAddNotes": true
            },
            "glycosylated hemoglobin A measurement": {
              "disableAddNotes": true
            },
            "Thyroid stimulating hormone test": {
              "disableAddNotes": true
            },
            "Lab, Lipase test result": {
              "disableAddNotes": true
            },
            "SERUM GLUTAMIC-OXALOACETIC TRANSAMINASE": {
              "disableAddNotes": true
            },
            "TOTAL BILIRUBIN": {
              "disableAddNotes": true
            },
            "SERUM GLUTAMIC-PYRUVIC TRANSAMINASE": {
              "disableAddNotes": true
            },
            "CD4 COUNT": {
              "disableAddNotes": true
            },
            "Lab, CD4 count other result": {
              "disableAddNotes": true
            },
            "HIV VIRAL LOAD": {
              "disableAddNotes": true
            },
            "SERUM ALBUMIN": {
              "disableAddNotes": true
            },
            "Lab, Serum Albumin other": {
              "disableAddNotes": true
            },
            "Lab, Other test": {
              "allowAddMore": true
            },
            "Hemoglobin": {
              "disableAddNotes": true
            },
            "Lab, Hemoglobin g/dl": {
              "disableAddNotes": true
            },
            "Lab, RBC with other unit": {
              "disableAddNotes": true
            },
            "Lab, WBC other unit": {
              "disableAddNotes": true
            },
            "Lab, Neutrophils other test result": {
              "disableAddNotes": true
            },
            "Lab, Potassium other": {
              "disableAddNotes": true
            },
            "Lab, Magnesium other": {
              "disableAddNotes": true
            },
            "Lab, Ionized Calcium other": {
              "disableAddNotes": true
            },
            "Lab, Urea other": {
              "disableAddNotes": true
            },
            "Lab, Creatinine other": {
              "disableAddNotes": true
            },
            "Lab, Glucose other": {
              "disableAddNotes": true
            },
            "Lab, Glucose (Fasting) other": {
              "disableAddNotes": true
            },
            "Lab, Total Bilirubin other": {
              "disableAddNotes": true
            },
            "Lab Results Hemotology Template": {
              "allowAddMore": true,
              "hideAbnormalButton": true
            },
            "Lab Results Biochemistry Template": {
              "allowAddMore": true,
              "hideAbnormalButton": true
            },
            "Lab Results Serology Template": {
              "allowAddMore": true,
              "hideAbnormalButton": true
            },
            "Lab Results Pregnancy Template": {
              "allowAddMore": true
            },
            "Lab Results Other Tests Template": {
              "allowAddMore": true
            },
            "Bacteriology, Smear microscopy test results": {
              "allowAddMore": true
            },
            "Bacteriology, Culture results details": {
              "allowAddMore": true
            },
            "Bacteriology, DST result details": {
              "allowAddMore": true
            },
            "Bacteriology, Xpert test results": {
              "allowAddMore": true
            },
            "Bacteriology, Hain test/PCR results": {
              "allowAddMore": true
            },
            "Baseline, Known Drug Allergies": {
              "allowAddMore": true
            }
          },
          "uniqueId": "observation_610",
          "erroneousValue": null,
          "value": false,
          "isBoolean": true,
          "voided": false
        },
        {
          "concept": {
            "uuid": "ba8b0d88-941b-493d-a5ee-0b7099cd0eaf",
            "name": "AE Form, AE term comprehensive list",
            "dataType": "Coded"
          },
          "units": null,
          "label": "AE term",
          "possibleAnswers": [
            {
              "uuid": "9648543a-9ba5-4332-9705-9b9f6595a463",
              "name": {
                "display": "Cardiac Rhythm",
                "uuid": "ab18252b-372e-4247-b0f5-5e4f8ac42654",
                "name": "Cardiac Rhythm",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9648543a-9ba5-4332-9705-9b9f6595a463/name/ab18252b-372e-4247-b0f5-5e4f8ac42654"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9648543a-9ba5-4332-9705-9b9f6595a463/name/ab18252b-372e-4247-b0f5-5e4f8ac42654?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cardiac Rhythm",
                  "uuid": "ab18252b-372e-4247-b0f5-5e4f8ac42654",
                  "name": "Cardiac Rhythm",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9648543a-9ba5-4332-9705-9b9f6595a463/name/ab18252b-372e-4247-b0f5-5e4f8ac42654"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9648543a-9ba5-4332-9705-9b9f6595a463/name/ab18252b-372e-4247-b0f5-5e4f8ac42654?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cardiac Rhythm",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d35410b9-7150-4f32-9a25-b9bcac170e7a",
              "name": {
                "display": "Blood Urea Nitrogen Increased",
                "uuid": "c6086cb2-8bc1-4032-b4c7-5d30f4b4784e",
                "name": "Blood Urea Nitrogen Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d35410b9-7150-4f32-9a25-b9bcac170e7a/name/c6086cb2-8bc1-4032-b4c7-5d30f4b4784e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d35410b9-7150-4f32-9a25-b9bcac170e7a/name/c6086cb2-8bc1-4032-b4c7-5d30f4b4784e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Blood Urea Nitrogen Increased",
                  "uuid": "c6086cb2-8bc1-4032-b4c7-5d30f4b4784e",
                  "name": "Blood Urea Nitrogen Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d35410b9-7150-4f32-9a25-b9bcac170e7a/name/c6086cb2-8bc1-4032-b4c7-5d30f4b4784e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d35410b9-7150-4f32-9a25-b9bcac170e7a/name/c6086cb2-8bc1-4032-b4c7-5d30f4b4784e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Blood Urea Nitrogen Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "38483eab-a3d4-4340-9d81-afcf73cf2f9f",
              "name": {
                "display": "Syncope",
                "uuid": "bcd729fc-b898-467c-99c8-ef75e5b88f5f",
                "name": "Syncope",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/38483eab-a3d4-4340-9d81-afcf73cf2f9f/name/bcd729fc-b898-467c-99c8-ef75e5b88f5f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/38483eab-a3d4-4340-9d81-afcf73cf2f9f/name/bcd729fc-b898-467c-99c8-ef75e5b88f5f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Syncope",
                  "uuid": "bcd729fc-b898-467c-99c8-ef75e5b88f5f",
                  "name": "Syncope",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/38483eab-a3d4-4340-9d81-afcf73cf2f9f/name/bcd729fc-b898-467c-99c8-ef75e5b88f5f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/38483eab-a3d4-4340-9d81-afcf73cf2f9f/name/bcd729fc-b898-467c-99c8-ef75e5b88f5f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Syncope",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "dd85d095-7f4b-4eee-9661-80bca4463577",
              "name": {
                "display": "Fetal Growth Retardation",
                "uuid": "5a20e43f-4c42-4d23-8749-1fce4defaa75",
                "name": "Fetal Growth Retardation",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/dd85d095-7f4b-4eee-9661-80bca4463577/name/5a20e43f-4c42-4d23-8749-1fce4defaa75"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/dd85d095-7f4b-4eee-9661-80bca4463577/name/5a20e43f-4c42-4d23-8749-1fce4defaa75?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Fetal Growth Retardation",
                  "uuid": "5a20e43f-4c42-4d23-8749-1fce4defaa75",
                  "name": "Fetal Growth Retardation",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/dd85d095-7f4b-4eee-9661-80bca4463577/name/5a20e43f-4c42-4d23-8749-1fce4defaa75"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/dd85d095-7f4b-4eee-9661-80bca4463577/name/5a20e43f-4c42-4d23-8749-1fce4defaa75?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Fetal Growth Retardation",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "6e10c60a-d796-4ff4-b455-8fcc21f15bca",
              "name": {
                "display": "Premature Delivery",
                "uuid": "7019c62e-9209-4fe7-bcbf-bd337ef6f504",
                "name": "Premature Delivery",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6e10c60a-d796-4ff4-b455-8fcc21f15bca/name/7019c62e-9209-4fe7-bcbf-bd337ef6f504"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6e10c60a-d796-4ff4-b455-8fcc21f15bca/name/7019c62e-9209-4fe7-bcbf-bd337ef6f504?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Premature Delivery",
                  "uuid": "7019c62e-9209-4fe7-bcbf-bd337ef6f504",
                  "name": "Premature Delivery",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6e10c60a-d796-4ff4-b455-8fcc21f15bca/name/7019c62e-9209-4fe7-bcbf-bd337ef6f504"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6e10c60a-d796-4ff4-b455-8fcc21f15bca/name/7019c62e-9209-4fe7-bcbf-bd337ef6f504?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Premature Delivery",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "45bc567a-10c9-4a07-9957-0b320a0c789c",
              "name": {
                "display": "Anxiety",
                "uuid": "35008b1f-62a1-49a1-bf48-20315e922779",
                "name": "Anxiety",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/45bc567a-10c9-4a07-9957-0b320a0c789c/name/35008b1f-62a1-49a1-bf48-20315e922779"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/45bc567a-10c9-4a07-9957-0b320a0c789c/name/35008b1f-62a1-49a1-bf48-20315e922779?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Anxiety",
                  "uuid": "35008b1f-62a1-49a1-bf48-20315e922779",
                  "name": "Anxiety",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/45bc567a-10c9-4a07-9957-0b320a0c789c/name/35008b1f-62a1-49a1-bf48-20315e922779"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/45bc567a-10c9-4a07-9957-0b320a0c789c/name/35008b1f-62a1-49a1-bf48-20315e922779?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Anxiety",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "c5194725-f1f2-4eff-93f4-48ecd853196f",
              "name": {
                "display": "Depression",
                "uuid": "0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58",
                "name": "Depression",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c5194725-f1f2-4eff-93f4-48ecd853196f/name/0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c5194725-f1f2-4eff-93f4-48ecd853196f/name/0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Depression",
                  "uuid": "0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58",
                  "name": "Depression",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c5194725-f1f2-4eff-93f4-48ecd853196f/name/0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c5194725-f1f2-4eff-93f4-48ecd853196f/name/0a33a3e8-d2ca-4cd5-9d95-baa968d2ff58?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Depression",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "392a974f-bcee-427c-8ed1-98aa87c0c5ee",
              "name": {
                "display": "Psychosis",
                "uuid": "62b01ea1-d704-42ed-889c-1734275c84da",
                "name": "Psychosis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/392a974f-bcee-427c-8ed1-98aa87c0c5ee/name/62b01ea1-d704-42ed-889c-1734275c84da"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/392a974f-bcee-427c-8ed1-98aa87c0c5ee/name/62b01ea1-d704-42ed-889c-1734275c84da?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Psychosis",
                  "uuid": "62b01ea1-d704-42ed-889c-1734275c84da",
                  "name": "Psychosis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/392a974f-bcee-427c-8ed1-98aa87c0c5ee/name/62b01ea1-d704-42ed-889c-1734275c84da"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/392a974f-bcee-427c-8ed1-98aa87c0c5ee/name/62b01ea1-d704-42ed-889c-1734275c84da?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Psychosis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "51fa815f-6d0e-4884-a53f-7691487e0290",
              "name": {
                "display": "Suicidal ideation",
                "uuid": "51255c15-d5f3-4c59-a119-3e3e66a0184e",
                "name": "Suicidal ideation",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/51fa815f-6d0e-4884-a53f-7691487e0290/name/51255c15-d5f3-4c59-a119-3e3e66a0184e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/51fa815f-6d0e-4884-a53f-7691487e0290/name/51255c15-d5f3-4c59-a119-3e3e66a0184e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Suicidal ideation",
                  "uuid": "51255c15-d5f3-4c59-a119-3e3e66a0184e",
                  "name": "Suicidal ideation",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/51fa815f-6d0e-4884-a53f-7691487e0290/name/51255c15-d5f3-4c59-a119-3e3e66a0184e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/51fa815f-6d0e-4884-a53f-7691487e0290/name/51255c15-d5f3-4c59-a119-3e3e66a0184e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Suicidal ideation",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b0ad889b-2dc7-4edf-96ab-a0767935250b",
              "name": {
                "display": "Suicide attempt",
                "uuid": "b24651d2-01cc-4e7f-8e78-53055a20eb40",
                "name": "Suicide attempt",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b0ad889b-2dc7-4edf-96ab-a0767935250b/name/b24651d2-01cc-4e7f-8e78-53055a20eb40"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b0ad889b-2dc7-4edf-96ab-a0767935250b/name/b24651d2-01cc-4e7f-8e78-53055a20eb40?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Suicide attempt",
                  "uuid": "b24651d2-01cc-4e7f-8e78-53055a20eb40",
                  "name": "Suicide attempt",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b0ad889b-2dc7-4edf-96ab-a0767935250b/name/b24651d2-01cc-4e7f-8e78-53055a20eb40"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b0ad889b-2dc7-4edf-96ab-a0767935250b/name/b24651d2-01cc-4e7f-8e78-53055a20eb40?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Suicide attempt",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "6c1e6f69-9169-439a-96c6-84a2c7a345c4",
              "name": {
                "display": "Acute Kidney Injury",
                "uuid": "cd5b13d2-4310-40fa-a646-82bda1dbc755",
                "name": "Acute Kidney Injury",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/cd5b13d2-4310-40fa-a646-82bda1dbc755"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/cd5b13d2-4310-40fa-a646-82bda1dbc755?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Acute Kidney Injury",
                  "uuid": "cd5b13d2-4310-40fa-a646-82bda1dbc755",
                  "name": "Acute Kidney Injury",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/cd5b13d2-4310-40fa-a646-82bda1dbc755"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/cd5b13d2-4310-40fa-a646-82bda1dbc755?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Acute kidney injury (acute renal failure)",
                  "uuid": "7880e1fe-2164-4580-9e88-22156c70fafb",
                  "name": "Acute kidney injury (acute renal failure)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/7880e1fe-2164-4580-9e88-22156c70fafb"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c1e6f69-9169-439a-96c6-84a2c7a345c4/name/7880e1fe-2164-4580-9e88-22156c70fafb?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Acute Kidney Injury",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b46ef3ae-1a35-4923-8ee9-937d1a9cd2c9",
              "name": {
                "display": "Chronic Kidney Disease",
                "uuid": "44823a88-7f10-4ccc-beef-18489b9cb2e2",
                "name": "Chronic Kidney Disease",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b46ef3ae-1a35-4923-8ee9-937d1a9cd2c9/name/44823a88-7f10-4ccc-beef-18489b9cb2e2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b46ef3ae-1a35-4923-8ee9-937d1a9cd2c9/name/44823a88-7f10-4ccc-beef-18489b9cb2e2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Chronic Kidney Disease",
                  "uuid": "44823a88-7f10-4ccc-beef-18489b9cb2e2",
                  "name": "Chronic Kidney Disease",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b46ef3ae-1a35-4923-8ee9-937d1a9cd2c9/name/44823a88-7f10-4ccc-beef-18489b9cb2e2"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b46ef3ae-1a35-4923-8ee9-937d1a9cd2c9/name/44823a88-7f10-4ccc-beef-18489b9cb2e2?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Chronic Kidney Disease",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d6b081e8-d2e9-4b63-adfa-25c195755c4a",
              "name": {
                "display": "Cholesterol High",
                "uuid": "7ff19b99-d9bc-48c9-98a7-367d52a3acc9",
                "name": "Cholesterol High",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d6b081e8-d2e9-4b63-adfa-25c195755c4a/name/7ff19b99-d9bc-48c9-98a7-367d52a3acc9"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d6b081e8-d2e9-4b63-adfa-25c195755c4a/name/7ff19b99-d9bc-48c9-98a7-367d52a3acc9?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cholesterol High",
                  "uuid": "7ff19b99-d9bc-48c9-98a7-367d52a3acc9",
                  "name": "Cholesterol High",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d6b081e8-d2e9-4b63-adfa-25c195755c4a/name/7ff19b99-d9bc-48c9-98a7-367d52a3acc9"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d6b081e8-d2e9-4b63-adfa-25c195755c4a/name/7ff19b99-d9bc-48c9-98a7-367d52a3acc9?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cholesterol High",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a7ef3d60-764a-4e47-b951-9bed62fb1833",
              "name": {
                "display": "Azoospermia",
                "uuid": "07b4e5ae-a1ee-4a7c-8c79-83f0772820c6",
                "name": "Azoospermia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a7ef3d60-764a-4e47-b951-9bed62fb1833/name/07b4e5ae-a1ee-4a7c-8c79-83f0772820c6"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a7ef3d60-764a-4e47-b951-9bed62fb1833/name/07b4e5ae-a1ee-4a7c-8c79-83f0772820c6?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Azoospermia",
                  "uuid": "07b4e5ae-a1ee-4a7c-8c79-83f0772820c6",
                  "name": "Azoospermia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a7ef3d60-764a-4e47-b951-9bed62fb1833/name/07b4e5ae-a1ee-4a7c-8c79-83f0772820c6"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a7ef3d60-764a-4e47-b951-9bed62fb1833/name/07b4e5ae-a1ee-4a7c-8c79-83f0772820c6?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Azoospermia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "219bac71-253a-45db-a2ad-9d777d50eb10",
              "name": {
                "display": "Gynecomastia",
                "uuid": "ff78648e-07cd-43cc-9fb1-3f637a556ff9",
                "name": "Gynecomastia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/219bac71-253a-45db-a2ad-9d777d50eb10/name/ff78648e-07cd-43cc-9fb1-3f637a556ff9"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/219bac71-253a-45db-a2ad-9d777d50eb10/name/ff78648e-07cd-43cc-9fb1-3f637a556ff9?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Gynecomastia",
                  "uuid": "ff78648e-07cd-43cc-9fb1-3f637a556ff9",
                  "name": "Gynecomastia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/219bac71-253a-45db-a2ad-9d777d50eb10/name/ff78648e-07cd-43cc-9fb1-3f637a556ff9"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/219bac71-253a-45db-a2ad-9d777d50eb10/name/ff78648e-07cd-43cc-9fb1-3f637a556ff9?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Gynecomastia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "492bb5c0-1f01-4a03-aff7-7786fb31ebe0",
              "name": {
                "display": "Irregular Menstruation",
                "uuid": "f8fce890-fb9a-4ff5-bf29-d587c584d18e",
                "name": "Irregular Menstruation",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/492bb5c0-1f01-4a03-aff7-7786fb31ebe0/name/f8fce890-fb9a-4ff5-bf29-d587c584d18e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/492bb5c0-1f01-4a03-aff7-7786fb31ebe0/name/f8fce890-fb9a-4ff5-bf29-d587c584d18e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Irregular Menstruation",
                  "uuid": "f8fce890-fb9a-4ff5-bf29-d587c584d18e",
                  "name": "Irregular Menstruation",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/492bb5c0-1f01-4a03-aff7-7786fb31ebe0/name/f8fce890-fb9a-4ff5-bf29-d587c584d18e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/492bb5c0-1f01-4a03-aff7-7786fb31ebe0/name/f8fce890-fb9a-4ff5-bf29-d587c584d18e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Irregular Menstruation",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1f492571-f38c-40b4-a2f7-7f5fbb099074",
              "name": {
                "display": "Menorrhagia",
                "uuid": "76dd98e3-5f4b-44b7-aa4e-d38151ee79e5",
                "name": "Menorrhagia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1f492571-f38c-40b4-a2f7-7f5fbb099074/name/76dd98e3-5f4b-44b7-aa4e-d38151ee79e5"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1f492571-f38c-40b4-a2f7-7f5fbb099074/name/76dd98e3-5f4b-44b7-aa4e-d38151ee79e5?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Menorrhagia",
                  "uuid": "76dd98e3-5f4b-44b7-aa4e-d38151ee79e5",
                  "name": "Menorrhagia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1f492571-f38c-40b4-a2f7-7f5fbb099074/name/76dd98e3-5f4b-44b7-aa4e-d38151ee79e5"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1f492571-f38c-40b4-a2f7-7f5fbb099074/name/76dd98e3-5f4b-44b7-aa4e-d38151ee79e5?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Menorrhagia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1cf7ffc7-5e47-4ae1-b65f-ae24c27c6c28",
              "name": {
                "display": "Oligospermia",
                "uuid": "510aafc6-4f4a-4a2b-a32e-0803020ff2e2",
                "name": "Oligospermia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cf7ffc7-5e47-4ae1-b65f-ae24c27c6c28/name/510aafc6-4f4a-4a2b-a32e-0803020ff2e2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cf7ffc7-5e47-4ae1-b65f-ae24c27c6c28/name/510aafc6-4f4a-4a2b-a32e-0803020ff2e2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Oligospermia",
                  "uuid": "510aafc6-4f4a-4a2b-a32e-0803020ff2e2",
                  "name": "Oligospermia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cf7ffc7-5e47-4ae1-b65f-ae24c27c6c28/name/510aafc6-4f4a-4a2b-a32e-0803020ff2e2"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cf7ffc7-5e47-4ae1-b65f-ae24c27c6c28/name/510aafc6-4f4a-4a2b-a32e-0803020ff2e2?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Oligospermia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0d60799c-f000-4033-a78c-2229336d3a3c",
              "name": {
                "display": "Bronchospasm, Acute",
                "uuid": "ab46cdde-9353-4925-b80c-ed33036a488d",
                "name": "Bronchospasm, Acute",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d60799c-f000-4033-a78c-2229336d3a3c/name/ab46cdde-9353-4925-b80c-ed33036a488d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d60799c-f000-4033-a78c-2229336d3a3c/name/ab46cdde-9353-4925-b80c-ed33036a488d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Bronchospasm, Acute",
                  "uuid": "ab46cdde-9353-4925-b80c-ed33036a488d",
                  "name": "Bronchospasm, Acute",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d60799c-f000-4033-a78c-2229336d3a3c/name/ab46cdde-9353-4925-b80c-ed33036a488d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d60799c-f000-4033-a78c-2229336d3a3c/name/ab46cdde-9353-4925-b80c-ed33036a488d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Bronchospasm, Acute",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "8b80d4a3-691c-4c87-9f96-6f6c8b939661",
              "name": {
                "display": "Cough",
                "uuid": "33c51d85-255b-4fbd-a05e-4bf072b5041a",
                "name": "Cough",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8b80d4a3-691c-4c87-9f96-6f6c8b939661/name/33c51d85-255b-4fbd-a05e-4bf072b5041a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8b80d4a3-691c-4c87-9f96-6f6c8b939661/name/33c51d85-255b-4fbd-a05e-4bf072b5041a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cough",
                  "uuid": "33c51d85-255b-4fbd-a05e-4bf072b5041a",
                  "name": "Cough",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8b80d4a3-691c-4c87-9f96-6f6c8b939661/name/33c51d85-255b-4fbd-a05e-4bf072b5041a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8b80d4a3-691c-4c87-9f96-6f6c8b939661/name/33c51d85-255b-4fbd-a05e-4bf072b5041a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cough",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "3f40c491-ce99-408a-a6b4-33c33b4588df",
              "name": {
                "display": "Dyspnea",
                "uuid": "7ea59478-808e-4d93-8a52-4e03988a05c3",
                "name": "Dyspnea",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3f40c491-ce99-408a-a6b4-33c33b4588df/name/7ea59478-808e-4d93-8a52-4e03988a05c3"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3f40c491-ce99-408a-a6b4-33c33b4588df/name/7ea59478-808e-4d93-8a52-4e03988a05c3?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Dyspnea",
                  "uuid": "7ea59478-808e-4d93-8a52-4e03988a05c3",
                  "name": "Dyspnea",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3f40c491-ce99-408a-a6b4-33c33b4588df/name/7ea59478-808e-4d93-8a52-4e03988a05c3"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3f40c491-ce99-408a-a6b4-33c33b4588df/name/7ea59478-808e-4d93-8a52-4e03988a05c3?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Dyspnea",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "09a3bf52-770e-4c21-8e51-66d927ac0058",
              "name": {
                "display": "Edema",
                "uuid": "39e96225-d015-44e9-b694-e265f180a3fd",
                "name": "Edema",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/09a3bf52-770e-4c21-8e51-66d927ac0058/name/39e96225-d015-44e9-b694-e265f180a3fd"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/09a3bf52-770e-4c21-8e51-66d927ac0058/name/39e96225-d015-44e9-b694-e265f180a3fd?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Edema",
                  "uuid": "39e96225-d015-44e9-b694-e265f180a3fd",
                  "name": "Edema",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/09a3bf52-770e-4c21-8e51-66d927ac0058/name/39e96225-d015-44e9-b694-e265f180a3fd"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/09a3bf52-770e-4c21-8e51-66d927ac0058/name/39e96225-d015-44e9-b694-e265f180a3fd?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Edema",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0d21f093-47ad-4c3c-aee0-9f8f419c6296",
              "name": {
                "display": "Erythema",
                "uuid": "7210eb86-f804-40a5-93ab-2118d6da5acb",
                "name": "Erythema",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d21f093-47ad-4c3c-aee0-9f8f419c6296/name/7210eb86-f804-40a5-93ab-2118d6da5acb"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d21f093-47ad-4c3c-aee0-9f8f419c6296/name/7210eb86-f804-40a5-93ab-2118d6da5acb?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Erythema",
                  "uuid": "7210eb86-f804-40a5-93ab-2118d6da5acb",
                  "name": "Erythema",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d21f093-47ad-4c3c-aee0-9f8f419c6296/name/7210eb86-f804-40a5-93ab-2118d6da5acb"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0d21f093-47ad-4c3c-aee0-9f8f419c6296/name/7210eb86-f804-40a5-93ab-2118d6da5acb?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Erythema",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2c8e93a0-7bec-4f91-a204-879154a89868",
              "name": {
                "display": "Creatinine Increased",
                "uuid": "153f53db-bd7d-4385-9a6e-65b2b7b27457",
                "name": "Creatinine Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c8e93a0-7bec-4f91-a204-879154a89868/name/153f53db-bd7d-4385-9a6e-65b2b7b27457"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c8e93a0-7bec-4f91-a204-879154a89868/name/153f53db-bd7d-4385-9a6e-65b2b7b27457?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Creatinine Increased",
                  "uuid": "153f53db-bd7d-4385-9a6e-65b2b7b27457",
                  "name": "Creatinine Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c8e93a0-7bec-4f91-a204-879154a89868/name/153f53db-bd7d-4385-9a6e-65b2b7b27457"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c8e93a0-7bec-4f91-a204-879154a89868/name/153f53db-bd7d-4385-9a6e-65b2b7b27457?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Creatinine Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "80a92d69-3510-4e58-b5ba-b47b46e12eaf",
              "name": {
                "display": "Induration",
                "uuid": "4f9ef603-ad87-4788-af3d-78ad1894f3b1",
                "name": "Induration",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80a92d69-3510-4e58-b5ba-b47b46e12eaf/name/4f9ef603-ad87-4788-af3d-78ad1894f3b1"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80a92d69-3510-4e58-b5ba-b47b46e12eaf/name/4f9ef603-ad87-4788-af3d-78ad1894f3b1?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Induration",
                  "uuid": "4f9ef603-ad87-4788-af3d-78ad1894f3b1",
                  "name": "Induration",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80a92d69-3510-4e58-b5ba-b47b46e12eaf/name/4f9ef603-ad87-4788-af3d-78ad1894f3b1"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80a92d69-3510-4e58-b5ba-b47b46e12eaf/name/4f9ef603-ad87-4788-af3d-78ad1894f3b1?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Induration",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "800270e3-3e0e-4d0d-9c4a-257b8502becf",
              "name": {
                "display": "Injection Site Reaction",
                "uuid": "7fa8b520-db71-41a0-a76d-69d82c87916d",
                "name": "Injection Site Reaction",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/800270e3-3e0e-4d0d-9c4a-257b8502becf/name/7fa8b520-db71-41a0-a76d-69d82c87916d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/800270e3-3e0e-4d0d-9c4a-257b8502becf/name/7fa8b520-db71-41a0-a76d-69d82c87916d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Injection Site Reaction",
                  "uuid": "7fa8b520-db71-41a0-a76d-69d82c87916d",
                  "name": "Injection Site Reaction",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/800270e3-3e0e-4d0d-9c4a-257b8502becf/name/7fa8b520-db71-41a0-a76d-69d82c87916d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/800270e3-3e0e-4d0d-9c4a-257b8502becf/name/7fa8b520-db71-41a0-a76d-69d82c87916d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Injection Site Reaction",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a81ce84d-1995-416e-ab4e-232a2a4c9690",
              "name": {
                "display": "Mucocutaneous Symptoms",
                "uuid": "d1766e8c-9abc-4d23-93b1-ef89293b6391",
                "name": "Mucocutaneous Symptoms",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/d1766e8c-9abc-4d23-93b1-ef89293b6391"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/d1766e8c-9abc-4d23-93b1-ef89293b6391?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Mucocutaneous Symptoms",
                  "uuid": "d1766e8c-9abc-4d23-93b1-ef89293b6391",
                  "name": "Mucocutaneous Symptoms",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/d1766e8c-9abc-4d23-93b1-ef89293b6391"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/d1766e8c-9abc-4d23-93b1-ef89293b6391?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Mucocutaneous Symptoms (includes rash)",
                  "uuid": "6c936f48-9a5b-474b-86e4-d67b6de5abd7",
                  "name": "Mucocutaneous Symptoms (includes rash)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/6c936f48-9a5b-474b-86e4-d67b6de5abd7"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a81ce84d-1995-416e-ab4e-232a2a4c9690/name/6c936f48-9a5b-474b-86e4-d67b6de5abd7?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Mucocutaneous Symptoms",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "9a8096d2-fb9d-4814-9209-4d6b656ba46b",
              "name": {
                "display": "Pruritus",
                "uuid": "03224f71-16c6-4c11-9603-b13c94845d5d",
                "name": "Pruritus",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9a8096d2-fb9d-4814-9209-4d6b656ba46b/name/03224f71-16c6-4c11-9603-b13c94845d5d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9a8096d2-fb9d-4814-9209-4d6b656ba46b/name/03224f71-16c6-4c11-9603-b13c94845d5d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Pruritus",
                  "uuid": "03224f71-16c6-4c11-9603-b13c94845d5d",
                  "name": "Pruritus",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9a8096d2-fb9d-4814-9209-4d6b656ba46b/name/03224f71-16c6-4c11-9603-b13c94845d5d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9a8096d2-fb9d-4814-9209-4d6b656ba46b/name/03224f71-16c6-4c11-9603-b13c94845d5d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Pruritus",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4d8198aa-d000-4725-bb2f-87b2393b8b64",
              "name": {
                "display": "Rash At Injection Site",
                "uuid": "889d673c-6147-4091-89be-c27604c0e6dd",
                "name": "Rash At Injection Site",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4d8198aa-d000-4725-bb2f-87b2393b8b64/name/889d673c-6147-4091-89be-c27604c0e6dd"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4d8198aa-d000-4725-bb2f-87b2393b8b64/name/889d673c-6147-4091-89be-c27604c0e6dd?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Rash At Injection Site",
                  "uuid": "889d673c-6147-4091-89be-c27604c0e6dd",
                  "name": "Rash At Injection Site",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4d8198aa-d000-4725-bb2f-87b2393b8b64/name/889d673c-6147-4091-89be-c27604c0e6dd"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4d8198aa-d000-4725-bb2f-87b2393b8b64/name/889d673c-6147-4091-89be-c27604c0e6dd?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Rash At Injection Site",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "7b7ea5a6-8222-4eec-89d0-10cfef60cdfd",
              "name": {
                "display": "Skin hyperpigmentation or hypopigmentation",
                "uuid": "5999847e-9bbe-4bea-aece-32f44611c40a",
                "name": "Skin hyperpigmentation or hypopigmentation",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/5999847e-9bbe-4bea-aece-32f44611c40a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/5999847e-9bbe-4bea-aece-32f44611c40a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Skin hypo- or hyper-pigmentation",
                  "uuid": "cf5d287c-3e4e-47f1-ad40-f66e2fa34d34",
                  "name": "Skin hypo- or hyper-pigmentation",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/cf5d287c-3e4e-47f1-ad40-f66e2fa34d34"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/cf5d287c-3e4e-47f1-ad40-f66e2fa34d34?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Skin hyperpigmentation or hypopigmentation",
                  "uuid": "5999847e-9bbe-4bea-aece-32f44611c40a",
                  "name": "Skin hyperpigmentation or hypopigmentation",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/5999847e-9bbe-4bea-aece-32f44611c40a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/7b7ea5a6-8222-4eec-89d0-10cfef60cdfd/name/5999847e-9bbe-4bea-aece-32f44611c40a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Skin hyperpigmentation or hypopigmentation",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "39f3d38a-0a1f-4143-af3a-df01e9521cf0",
              "name": {
                "display": "Hematuria",
                "uuid": "b73d3eed-df89-4436-8fcd-dfa24e2faa8e",
                "name": "Hematuria",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/39f3d38a-0a1f-4143-af3a-df01e9521cf0/name/b73d3eed-df89-4436-8fcd-dfa24e2faa8e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/39f3d38a-0a1f-4143-af3a-df01e9521cf0/name/b73d3eed-df89-4436-8fcd-dfa24e2faa8e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hematuria",
                  "uuid": "b73d3eed-df89-4436-8fcd-dfa24e2faa8e",
                  "name": "Hematuria",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/39f3d38a-0a1f-4143-af3a-df01e9521cf0/name/b73d3eed-df89-4436-8fcd-dfa24e2faa8e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/39f3d38a-0a1f-4143-af3a-df01e9521cf0/name/b73d3eed-df89-4436-8fcd-dfa24e2faa8e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hematuria",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "668b7b7c-3c52-4fa9-be4b-e8a850949132",
              "name": {
                "display": "Proteinuria",
                "uuid": "eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef",
                "name": "Proteinuria",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/668b7b7c-3c52-4fa9-be4b-e8a850949132/name/eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/668b7b7c-3c52-4fa9-be4b-e8a850949132/name/eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Proteinuria",
                  "uuid": "eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef",
                  "name": "Proteinuria",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/668b7b7c-3c52-4fa9-be4b-e8a850949132/name/eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/668b7b7c-3c52-4fa9-be4b-e8a850949132/name/eaf7f3f7-e1bd-4047-a9b5-76d57c84b8ef?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Proteinuria",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b31c6dab-b80f-413c-946d-29fa3f79fa3d",
              "name": {
                "display": "Other",
                "uuid": "143bcaa3-ea44-4baf-9a5d-336b95d50c1b",
                "name": "Other",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Other",
                  "uuid": "143bcaa3-ea44-4baf-9a5d-336b95d50c1b",
                  "name": "Other",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Other",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a80ca611-014f-4efc-bbea-d8cd91f5bdf2",
              "name": {
                "display": "Hyperbilirubinemia (when accompanied by any increase in other liver function test)",
                "uuid": "2cb6f2b9-54fb-4b36-acee-d4aec417540c",
                "name": "Hyperbilirubinemia (when accompanied by any increase in other liver function test)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a80ca611-014f-4efc-bbea-d8cd91f5bdf2/name/2cb6f2b9-54fb-4b36-acee-d4aec417540c"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a80ca611-014f-4efc-bbea-d8cd91f5bdf2/name/2cb6f2b9-54fb-4b36-acee-d4aec417540c?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperbilirubinemia (when accompanied by any increase in other liver function test)",
                  "uuid": "2cb6f2b9-54fb-4b36-acee-d4aec417540c",
                  "name": "Hyperbilirubinemia (when accompanied by any increase in other liver function test)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a80ca611-014f-4efc-bbea-d8cd91f5bdf2/name/2cb6f2b9-54fb-4b36-acee-d4aec417540c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a80ca611-014f-4efc-bbea-d8cd91f5bdf2/name/2cb6f2b9-54fb-4b36-acee-d4aec417540c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperbilirubinemia (when accompanied by any increase in other liver function test)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4e1e8dcc-9791-4cb8-835b-fc895fb09526",
              "name": {
                "display": "Hyperbilirubinemia (when other liver function are in the normal range)",
                "uuid": "4e4f49f0-9a96-4dc4-a0f3-baf681a8d642",
                "name": "Hyperbilirubinemia (when other liver function are in the normal range)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4e1e8dcc-9791-4cb8-835b-fc895fb09526/name/4e4f49f0-9a96-4dc4-a0f3-baf681a8d642"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4e1e8dcc-9791-4cb8-835b-fc895fb09526/name/4e4f49f0-9a96-4dc4-a0f3-baf681a8d642?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperbilirubinemia (when other liver function are in the normal range)",
                  "uuid": "4e4f49f0-9a96-4dc4-a0f3-baf681a8d642",
                  "name": "Hyperbilirubinemia (when other liver function are in the normal range)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4e1e8dcc-9791-4cb8-835b-fc895fb09526/name/4e4f49f0-9a96-4dc4-a0f3-baf681a8d642"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4e1e8dcc-9791-4cb8-835b-fc895fb09526/name/4e4f49f0-9a96-4dc4-a0f3-baf681a8d642?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperbilirubinemia (when other liver function are in the normal range)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "83cd2020-bee4-462f-81fd-77e0b2c90f68",
              "name": {
                "display": "Hypercalcemia (corrected for albumin)",
                "uuid": "54311d07-05ec-4bdc-ae4b-2e5edf9e6f31",
                "name": "Hypercalcemia (corrected for albumin)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/83cd2020-bee4-462f-81fd-77e0b2c90f68/name/54311d07-05ec-4bdc-ae4b-2e5edf9e6f31"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/83cd2020-bee4-462f-81fd-77e0b2c90f68/name/54311d07-05ec-4bdc-ae4b-2e5edf9e6f31?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypercalcemia (corrected for albumin)",
                  "uuid": "54311d07-05ec-4bdc-ae4b-2e5edf9e6f31",
                  "name": "Hypercalcemia (corrected for albumin)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/83cd2020-bee4-462f-81fd-77e0b2c90f68/name/54311d07-05ec-4bdc-ae4b-2e5edf9e6f31"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/83cd2020-bee4-462f-81fd-77e0b2c90f68/name/54311d07-05ec-4bdc-ae4b-2e5edf9e6f31?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypercalcemia (corrected for albumin)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0ba44f6b-e6f5-4445-a8b2-0d7b9b391612",
              "name": {
                "display": "Hyperglycemia (nonfasting and no prior diabetes)",
                "uuid": "50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa",
                "name": "Hyperglycemia (nonfasting and no prior diabetes)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0ba44f6b-e6f5-4445-a8b2-0d7b9b391612/name/50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0ba44f6b-e6f5-4445-a8b2-0d7b9b391612/name/50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperglycemia (nonfasting and no prior diabetes)",
                  "uuid": "50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa",
                  "name": "Hyperglycemia (nonfasting and no prior diabetes)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0ba44f6b-e6f5-4445-a8b2-0d7b9b391612/name/50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0ba44f6b-e6f5-4445-a8b2-0d7b9b391612/name/50716ce8-ed5f-40e0-ba3d-3fd50ec4a1fa?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperglycemia (nonfasting and no prior diabetes)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "bfc919b7-7707-40b8-9fa2-64ada4d84a52",
              "name": {
                "display": "Hyperkalemia",
                "uuid": "364e75ff-fe36-421c-a15a-320d9573692b",
                "name": "Hyperkalemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/364e75ff-fe36-421c-a15a-320d9573692b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/364e75ff-fe36-421c-a15a-320d9573692b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperkalemia (K <= 3.4 mEq/L)",
                  "uuid": "c67a2e87-d0e7-4792-a63a-b0a7cf4d84ec",
                  "name": "Hyperkalemia (K <= 3.4 mEq/L)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/c67a2e87-d0e7-4792-a63a-b0a7cf4d84ec"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/c67a2e87-d0e7-4792-a63a-b0a7cf4d84ec?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Hyperkalemia",
                  "uuid": "364e75ff-fe36-421c-a15a-320d9573692b",
                  "name": "Hyperkalemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/364e75ff-fe36-421c-a15a-320d9573692b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bfc919b7-7707-40b8-9fa2-64ada4d84a52/name/364e75ff-fe36-421c-a15a-320d9573692b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperkalemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "5599575a-b711-4381-b300-68dd9f6cd6a5",
              "name": {
                "display": "Hypermagnesemia",
                "uuid": "6020929a-178d-4adb-9a70-e6e864fac11f",
                "name": "Hypermagnesemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5599575a-b711-4381-b300-68dd9f6cd6a5/name/6020929a-178d-4adb-9a70-e6e864fac11f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5599575a-b711-4381-b300-68dd9f6cd6a5/name/6020929a-178d-4adb-9a70-e6e864fac11f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypermagnesemia",
                  "uuid": "6020929a-178d-4adb-9a70-e6e864fac11f",
                  "name": "Hypermagnesemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5599575a-b711-4381-b300-68dd9f6cd6a5/name/6020929a-178d-4adb-9a70-e6e864fac11f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5599575a-b711-4381-b300-68dd9f6cd6a5/name/6020929a-178d-4adb-9a70-e6e864fac11f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypermagnesemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "ab30ba51-0d4a-46f8-bc1a-dc787ba4af82",
              "name": {
                "display": "Hypernatremia",
                "uuid": "a26b4737-7e88-4f38-bdb5-e2f67944d61f",
                "name": "Hypernatremia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ab30ba51-0d4a-46f8-bc1a-dc787ba4af82/name/a26b4737-7e88-4f38-bdb5-e2f67944d61f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ab30ba51-0d4a-46f8-bc1a-dc787ba4af82/name/a26b4737-7e88-4f38-bdb5-e2f67944d61f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypernatremia",
                  "uuid": "a26b4737-7e88-4f38-bdb5-e2f67944d61f",
                  "name": "Hypernatremia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ab30ba51-0d4a-46f8-bc1a-dc787ba4af82/name/a26b4737-7e88-4f38-bdb5-e2f67944d61f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ab30ba51-0d4a-46f8-bc1a-dc787ba4af82/name/a26b4737-7e88-4f38-bdb5-e2f67944d61f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypernatremia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2c9f25a6-c414-4854-8f00-bba25470f3fb",
              "name": {
                "display": "Cardiac Troponin I Increased",
                "uuid": "9c69e3c7-e076-4cfa-9303-1ff594832244",
                "name": "Cardiac Troponin I Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c9f25a6-c414-4854-8f00-bba25470f3fb/name/9c69e3c7-e076-4cfa-9303-1ff594832244"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c9f25a6-c414-4854-8f00-bba25470f3fb/name/9c69e3c7-e076-4cfa-9303-1ff594832244?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cardiac Troponin I Increased",
                  "uuid": "9c69e3c7-e076-4cfa-9303-1ff594832244",
                  "name": "Cardiac Troponin I Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c9f25a6-c414-4854-8f00-bba25470f3fb/name/9c69e3c7-e076-4cfa-9303-1ff594832244"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2c9f25a6-c414-4854-8f00-bba25470f3fb/name/9c69e3c7-e076-4cfa-9303-1ff594832244?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cardiac Troponin I Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "bf09423f-ebc4-4ac6-9d62-60a401221564",
              "name": {
                "display": "Hypertriglyceridemia",
                "uuid": "f91a7753-319a-4137-a625-9177b09f3ec7",
                "name": "Hypertriglyceridemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf09423f-ebc4-4ac6-9d62-60a401221564/name/f91a7753-319a-4137-a625-9177b09f3ec7"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf09423f-ebc4-4ac6-9d62-60a401221564/name/f91a7753-319a-4137-a625-9177b09f3ec7?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypertriglyceridemia",
                  "uuid": "f91a7753-319a-4137-a625-9177b09f3ec7",
                  "name": "Hypertriglyceridemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf09423f-ebc4-4ac6-9d62-60a401221564/name/f91a7753-319a-4137-a625-9177b09f3ec7"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf09423f-ebc4-4ac6-9d62-60a401221564/name/f91a7753-319a-4137-a625-9177b09f3ec7?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypertriglyceridemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d8b63cb9-706f-48a2-9867-93184f3b96c8",
              "name": {
                "display": "Hyperuricemia (uric acid)",
                "uuid": "d233e21b-e9a9-470a-9479-b35a6941faff",
                "name": "Hyperuricemia (uric acid)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d8b63cb9-706f-48a2-9867-93184f3b96c8/name/d233e21b-e9a9-470a-9479-b35a6941faff"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d8b63cb9-706f-48a2-9867-93184f3b96c8/name/d233e21b-e9a9-470a-9479-b35a6941faff?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperuricemia (uric acid)",
                  "uuid": "d233e21b-e9a9-470a-9479-b35a6941faff",
                  "name": "Hyperuricemia (uric acid)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d8b63cb9-706f-48a2-9867-93184f3b96c8/name/d233e21b-e9a9-470a-9479-b35a6941faff"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d8b63cb9-706f-48a2-9867-93184f3b96c8/name/d233e21b-e9a9-470a-9479-b35a6941faff?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperuricemia (uric acid)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "6a13dab4-dfe3-4408-b6c9-a15b4d954797",
              "name": {
                "display": "Hypoalbuminemia",
                "uuid": "3c2ed729-3b90-4a68-8737-bcff1276acb0",
                "name": "Hypoalbuminemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a13dab4-dfe3-4408-b6c9-a15b4d954797/name/3c2ed729-3b90-4a68-8737-bcff1276acb0"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a13dab4-dfe3-4408-b6c9-a15b4d954797/name/3c2ed729-3b90-4a68-8737-bcff1276acb0?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypoalbuminemia",
                  "uuid": "3c2ed729-3b90-4a68-8737-bcff1276acb0",
                  "name": "Hypoalbuminemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a13dab4-dfe3-4408-b6c9-a15b4d954797/name/3c2ed729-3b90-4a68-8737-bcff1276acb0"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a13dab4-dfe3-4408-b6c9-a15b4d954797/name/3c2ed729-3b90-4a68-8737-bcff1276acb0?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypoalbuminemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4f0a9e5e-7c75-4342-b20a-12343dd66e6d",
              "name": {
                "display": "Hypocalcemia (corrected for albumin)",
                "uuid": "31347a8e-1492-4b06-80b9-a44cec7abcfe",
                "name": "Hypocalcemia (corrected for albumin)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4f0a9e5e-7c75-4342-b20a-12343dd66e6d/name/31347a8e-1492-4b06-80b9-a44cec7abcfe"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4f0a9e5e-7c75-4342-b20a-12343dd66e6d/name/31347a8e-1492-4b06-80b9-a44cec7abcfe?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypocalcemia (corrected for albumin)",
                  "uuid": "31347a8e-1492-4b06-80b9-a44cec7abcfe",
                  "name": "Hypocalcemia (corrected for albumin)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4f0a9e5e-7c75-4342-b20a-12343dd66e6d/name/31347a8e-1492-4b06-80b9-a44cec7abcfe"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4f0a9e5e-7c75-4342-b20a-12343dd66e6d/name/31347a8e-1492-4b06-80b9-a44cec7abcfe?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypocalcemia (corrected for albumin)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1b895d38-0866-429a-9ff9-4682487e8e17",
              "name": {
                "display": "Hypoglycemia",
                "uuid": "c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e",
                "name": "Hypoglycemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1b895d38-0866-429a-9ff9-4682487e8e17/name/c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1b895d38-0866-429a-9ff9-4682487e8e17/name/c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypoglycemia",
                  "uuid": "c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e",
                  "name": "Hypoglycemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1b895d38-0866-429a-9ff9-4682487e8e17/name/c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1b895d38-0866-429a-9ff9-4682487e8e17/name/c0d8d8cd-3ee8-44fb-a14c-f8462d79be7e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypoglycemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "ba5aa946-b2d3-4bad-81ab-31679a351251",
              "name": {
                "display": "Hypokalemia",
                "uuid": "7c84bdd7-119a-47eb-9cba-320d358827d8",
                "name": "Hypokalemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ba5aa946-b2d3-4bad-81ab-31679a351251/name/7c84bdd7-119a-47eb-9cba-320d358827d8"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ba5aa946-b2d3-4bad-81ab-31679a351251/name/7c84bdd7-119a-47eb-9cba-320d358827d8?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypokalemia",
                  "uuid": "7c84bdd7-119a-47eb-9cba-320d358827d8",
                  "name": "Hypokalemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ba5aa946-b2d3-4bad-81ab-31679a351251/name/7c84bdd7-119a-47eb-9cba-320d358827d8"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ba5aa946-b2d3-4bad-81ab-31679a351251/name/7c84bdd7-119a-47eb-9cba-320d358827d8?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypokalemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "79b54711-3f5a-48ef-8696-a25e20544c3e",
              "name": {
                "display": "Hypomagnesemia",
                "uuid": "2e26dbfc-26c9-4aa4-88c5-d38023e48122",
                "name": "Hypomagnesemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/2e26dbfc-26c9-4aa4-88c5-d38023e48122"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/2e26dbfc-26c9-4aa4-88c5-d38023e48122?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypomagnesemia",
                  "uuid": "2e26dbfc-26c9-4aa4-88c5-d38023e48122",
                  "name": "Hypomagnesemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/2e26dbfc-26c9-4aa4-88c5-d38023e48122"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/2e26dbfc-26c9-4aa4-88c5-d38023e48122?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Hypomagnesemia (Mg <= 1.4 mmol/L)",
                  "uuid": "052cee95-93ee-4891-bef8-66608ecdb63c",
                  "name": "Hypomagnesemia (Mg <= 1.4 mmol/L)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/052cee95-93ee-4891-bef8-66608ecdb63c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79b54711-3f5a-48ef-8696-a25e20544c3e/name/052cee95-93ee-4891-bef8-66608ecdb63c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypomagnesemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "86ea1734-c7f7-4e84-90ad-cfb719448f4a",
              "name": {
                "display": "Hyponatremia",
                "uuid": "9b88754b-2f5b-4b4b-b0de-7e18f075aba8",
                "name": "Hyponatremia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/86ea1734-c7f7-4e84-90ad-cfb719448f4a/name/9b88754b-2f5b-4b4b-b0de-7e18f075aba8"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/86ea1734-c7f7-4e84-90ad-cfb719448f4a/name/9b88754b-2f5b-4b4b-b0de-7e18f075aba8?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyponatremia",
                  "uuid": "9b88754b-2f5b-4b4b-b0de-7e18f075aba8",
                  "name": "Hyponatremia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/86ea1734-c7f7-4e84-90ad-cfb719448f4a/name/9b88754b-2f5b-4b4b-b0de-7e18f075aba8"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/86ea1734-c7f7-4e84-90ad-cfb719448f4a/name/9b88754b-2f5b-4b4b-b0de-7e18f075aba8?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyponatremia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "6a4aacbf-0761-40d3-9521-26973f5f3f46",
              "name": {
                "display": "Hypophosphatemia",
                "uuid": "371824f3-96c5-4ced-95fc-ca4d2ae9eeec",
                "name": "Hypophosphatemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a4aacbf-0761-40d3-9521-26973f5f3f46/name/371824f3-96c5-4ced-95fc-ca4d2ae9eeec"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a4aacbf-0761-40d3-9521-26973f5f3f46/name/371824f3-96c5-4ced-95fc-ca4d2ae9eeec?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypophosphatemia",
                  "uuid": "371824f3-96c5-4ced-95fc-ca4d2ae9eeec",
                  "name": "Hypophosphatemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a4aacbf-0761-40d3-9521-26973f5f3f46/name/371824f3-96c5-4ced-95fc-ca4d2ae9eeec"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6a4aacbf-0761-40d3-9521-26973f5f3f46/name/371824f3-96c5-4ced-95fc-ca4d2ae9eeec?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypophosphatemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d0cba186-fb17-4c05-b3de-6334e448ac7e",
              "name": {
                "display": "Lactate Increased (Lactic Acidosis)",
                "uuid": "82ba87d2-e0c2-4cc5-8a2b-c448a99de27f",
                "name": "Lactate Increased (Lactic Acidosis)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0cba186-fb17-4c05-b3de-6334e448ac7e/name/82ba87d2-e0c2-4cc5-8a2b-c448a99de27f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0cba186-fb17-4c05-b3de-6334e448ac7e/name/82ba87d2-e0c2-4cc5-8a2b-c448a99de27f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Lactate Increased (Lactic Acidosis)",
                  "uuid": "82ba87d2-e0c2-4cc5-8a2b-c448a99de27f",
                  "name": "Lactate Increased (Lactic Acidosis)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0cba186-fb17-4c05-b3de-6334e448ac7e/name/82ba87d2-e0c2-4cc5-8a2b-c448a99de27f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0cba186-fb17-4c05-b3de-6334e448ac7e/name/82ba87d2-e0c2-4cc5-8a2b-c448a99de27f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Lactate Increased (Lactic Acidosis)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d1e2a811-fb0b-4bb4-a10b-e2852d4a40fc",
              "name": {
                "display": "Cardiac Troponin T Increased",
                "uuid": "ce470a49-76b2-46c0-a4de-6e95424b80ba",
                "name": "Cardiac Troponin T Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d1e2a811-fb0b-4bb4-a10b-e2852d4a40fc/name/ce470a49-76b2-46c0-a4de-6e95424b80ba"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d1e2a811-fb0b-4bb4-a10b-e2852d4a40fc/name/ce470a49-76b2-46c0-a4de-6e95424b80ba?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cardiac Troponin T Increased",
                  "uuid": "ce470a49-76b2-46c0-a4de-6e95424b80ba",
                  "name": "Cardiac Troponin T Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d1e2a811-fb0b-4bb4-a10b-e2852d4a40fc/name/ce470a49-76b2-46c0-a4de-6e95424b80ba"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d1e2a811-fb0b-4bb4-a10b-e2852d4a40fc/name/ce470a49-76b2-46c0-a4de-6e95424b80ba?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cardiac Troponin T Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a8a4dfd5-875e-4746-807b-1399db02543e",
              "name": {
                "display": "Tinnitus",
                "uuid": "59072978-bb76-426e-8f51-f04f785e77d8",
                "name": "Tinnitus",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8a4dfd5-875e-4746-807b-1399db02543e/name/59072978-bb76-426e-8f51-f04f785e77d8"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8a4dfd5-875e-4746-807b-1399db02543e/name/59072978-bb76-426e-8f51-f04f785e77d8?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Tinnitus",
                  "uuid": "59072978-bb76-426e-8f51-f04f785e77d8",
                  "name": "Tinnitus",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8a4dfd5-875e-4746-807b-1399db02543e/name/59072978-bb76-426e-8f51-f04f785e77d8"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8a4dfd5-875e-4746-807b-1399db02543e/name/59072978-bb76-426e-8f51-f04f785e77d8?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Tinnitus",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0af57dd3-a0e9-43c6-aaf1-4004cbfd0980",
              "name": {
                "display": "Vestibular Disorder",
                "uuid": "0d94b26a-9eac-4403-add4-97040464c796",
                "name": "Vestibular Disorder",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0af57dd3-a0e9-43c6-aaf1-4004cbfd0980/name/0d94b26a-9eac-4403-add4-97040464c796"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0af57dd3-a0e9-43c6-aaf1-4004cbfd0980/name/0d94b26a-9eac-4403-add4-97040464c796?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Vestibular Disorder",
                  "uuid": "0d94b26a-9eac-4403-add4-97040464c796",
                  "name": "Vestibular Disorder",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0af57dd3-a0e9-43c6-aaf1-4004cbfd0980/name/0d94b26a-9eac-4403-add4-97040464c796"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0af57dd3-a0e9-43c6-aaf1-4004cbfd0980/name/0d94b26a-9eac-4403-add4-97040464c796?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Vestibular Disorder",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "afe5a0bd-33fe-4fc7-8563-3bcbec75fe6b",
              "name": {
                "display": "Hyperthyroidism",
                "uuid": "fcdec30e-3cdc-4fcd-8868-93c6e79d5682",
                "name": "Hyperthyroidism",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/afe5a0bd-33fe-4fc7-8563-3bcbec75fe6b/name/fcdec30e-3cdc-4fcd-8868-93c6e79d5682"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/afe5a0bd-33fe-4fc7-8563-3bcbec75fe6b/name/fcdec30e-3cdc-4fcd-8868-93c6e79d5682?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hyperthyroidism",
                  "uuid": "fcdec30e-3cdc-4fcd-8868-93c6e79d5682",
                  "name": "Hyperthyroidism",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/afe5a0bd-33fe-4fc7-8563-3bcbec75fe6b/name/fcdec30e-3cdc-4fcd-8868-93c6e79d5682"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/afe5a0bd-33fe-4fc7-8563-3bcbec75fe6b/name/fcdec30e-3cdc-4fcd-8868-93c6e79d5682?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hyperthyroidism",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "bf5a8ede-52d4-4b08-89be-7d812621a7db",
              "name": {
                "display": "Hypothyroidism",
                "uuid": "bc28da72-134d-4059-bd8f-617f64082210",
                "name": "Hypothyroidism",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf5a8ede-52d4-4b08-89be-7d812621a7db/name/bc28da72-134d-4059-bd8f-617f64082210"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf5a8ede-52d4-4b08-89be-7d812621a7db/name/bc28da72-134d-4059-bd8f-617f64082210?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypothyroidism",
                  "uuid": "bc28da72-134d-4059-bd8f-617f64082210",
                  "name": "Hypothyroidism",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf5a8ede-52d4-4b08-89be-7d812621a7db/name/bc28da72-134d-4059-bd8f-617f64082210"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bf5a8ede-52d4-4b08-89be-7d812621a7db/name/bc28da72-134d-4059-bd8f-617f64082210?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypothyroidism",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "5cf6d70b-8958-401d-8654-b423c96c81b6",
              "name": {
                "display": "Alanine Aminotransferase (ALT or SGPT) Increased",
                "uuid": "e544b303-112f-4dbf-9406-aca40dc08036",
                "name": "Alanine Aminotransferase (ALT or SGPT) Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5cf6d70b-8958-401d-8654-b423c96c81b6/name/e544b303-112f-4dbf-9406-aca40dc08036"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5cf6d70b-8958-401d-8654-b423c96c81b6/name/e544b303-112f-4dbf-9406-aca40dc08036?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Alanine Aminotransferase (ALT or SGPT) Increased",
                  "uuid": "e544b303-112f-4dbf-9406-aca40dc08036",
                  "name": "Alanine Aminotransferase (ALT or SGPT) Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5cf6d70b-8958-401d-8654-b423c96c81b6/name/e544b303-112f-4dbf-9406-aca40dc08036"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5cf6d70b-8958-401d-8654-b423c96c81b6/name/e544b303-112f-4dbf-9406-aca40dc08036?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Alanine Aminotransferase (ALT or SGPT) Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0125226a-a8e8-4b20-a1f6-eb319d09170b",
              "name": {
                "display": "Alkaline Phosphatase Increased",
                "uuid": "0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed",
                "name": "Alkaline Phosphatase Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0125226a-a8e8-4b20-a1f6-eb319d09170b/name/0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0125226a-a8e8-4b20-a1f6-eb319d09170b/name/0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Alkaline Phosphatase Increased",
                  "uuid": "0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed",
                  "name": "Alkaline Phosphatase Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0125226a-a8e8-4b20-a1f6-eb319d09170b/name/0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0125226a-a8e8-4b20-a1f6-eb319d09170b/name/0dd4c6ab-e80f-4cf5-be5d-5235a23ce0ed?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Alkaline Phosphatase Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "41e5e686-3255-4681-87c9-83b379f025c8",
              "name": {
                "display": "Amylase Increased",
                "uuid": "51314ce6-d248-4413-b1cb-5e28a36fd368",
                "name": "Amylase Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/41e5e686-3255-4681-87c9-83b379f025c8/name/51314ce6-d248-4413-b1cb-5e28a36fd368"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/41e5e686-3255-4681-87c9-83b379f025c8/name/51314ce6-d248-4413-b1cb-5e28a36fd368?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Amylase Increased",
                  "uuid": "51314ce6-d248-4413-b1cb-5e28a36fd368",
                  "name": "Amylase Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/41e5e686-3255-4681-87c9-83b379f025c8/name/51314ce6-d248-4413-b1cb-5e28a36fd368"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/41e5e686-3255-4681-87c9-83b379f025c8/name/51314ce6-d248-4413-b1cb-5e28a36fd368?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Amylase Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d3e18d98-a2ce-4fce-956c-1f5799c5bdc8",
              "name": {
                "display": "Aspartate Aminotransferase (AST or SGOT) Increased",
                "uuid": "d9481d88-48fa-4d6f-895a-7868934d06db",
                "name": "Aspartate Aminotransferase (AST or SGOT) Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d3e18d98-a2ce-4fce-956c-1f5799c5bdc8/name/d9481d88-48fa-4d6f-895a-7868934d06db"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d3e18d98-a2ce-4fce-956c-1f5799c5bdc8/name/d9481d88-48fa-4d6f-895a-7868934d06db?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Aspartate Aminotransferase (AST or SGOT) Increased",
                  "uuid": "d9481d88-48fa-4d6f-895a-7868934d06db",
                  "name": "Aspartate Aminotransferase (AST or SGOT) Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d3e18d98-a2ce-4fce-956c-1f5799c5bdc8/name/d9481d88-48fa-4d6f-895a-7868934d06db"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d3e18d98-a2ce-4fce-956c-1f5799c5bdc8/name/d9481d88-48fa-4d6f-895a-7868934d06db?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Aspartate Aminotransferase (AST or SGOT) Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "8dacbab9-260e-44e2-8f16-8ebacedb7495",
              "name": {
                "display": "Gamma-Glutamyltransferase (GGT) Increased",
                "uuid": "a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a",
                "name": "Gamma-Glutamyltransferase (GGT) Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8dacbab9-260e-44e2-8f16-8ebacedb7495/name/a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8dacbab9-260e-44e2-8f16-8ebacedb7495/name/a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Gamma-Glutamyltransferase (GGT) Increased",
                  "uuid": "a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a",
                  "name": "Gamma-Glutamyltransferase (GGT) Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8dacbab9-260e-44e2-8f16-8ebacedb7495/name/a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8dacbab9-260e-44e2-8f16-8ebacedb7495/name/a7d59ed2-fc89-4f6a-b09e-5d2ac1aec10a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Gamma-Glutamyltransferase (GGT) Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1fbf846c-91b6-4e90-aa27-7fb222e2cc32",
              "name": {
                "display": "Ejection Fraction Decreased",
                "uuid": "c9bb5114-67a1-43ca-80ae-dc3c0cd2f778",
                "name": "Ejection Fraction Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1fbf846c-91b6-4e90-aa27-7fb222e2cc32/name/c9bb5114-67a1-43ca-80ae-dc3c0cd2f778"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1fbf846c-91b6-4e90-aa27-7fb222e2cc32/name/c9bb5114-67a1-43ca-80ae-dc3c0cd2f778?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Ejection Fraction Decreased",
                  "uuid": "c9bb5114-67a1-43ca-80ae-dc3c0cd2f778",
                  "name": "Ejection Fraction Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1fbf846c-91b6-4e90-aa27-7fb222e2cc32/name/c9bb5114-67a1-43ca-80ae-dc3c0cd2f778"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1fbf846c-91b6-4e90-aa27-7fb222e2cc32/name/c9bb5114-67a1-43ca-80ae-dc3c0cd2f778?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Ejection Fraction Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "e25384cb-89c7-4d91-83c0-6455676861fd",
              "name": {
                "display": "Lipase Increased",
                "uuid": "410704c9-0b4e-4c63-8626-44fc6830434e",
                "name": "Lipase Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e25384cb-89c7-4d91-83c0-6455676861fd/name/410704c9-0b4e-4c63-8626-44fc6830434e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e25384cb-89c7-4d91-83c0-6455676861fd/name/410704c9-0b4e-4c63-8626-44fc6830434e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Lipase Increased",
                  "uuid": "410704c9-0b4e-4c63-8626-44fc6830434e",
                  "name": "Lipase Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e25384cb-89c7-4d91-83c0-6455676861fd/name/410704c9-0b4e-4c63-8626-44fc6830434e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e25384cb-89c7-4d91-83c0-6455676861fd/name/410704c9-0b4e-4c63-8626-44fc6830434e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Lipase Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "61b2062f-19fb-4bb6-9f86-baddfbf83e62",
              "name": {
                "display": "Pancreatic Enzymes Decreased",
                "uuid": "6c3e2caf-1e0d-4eaa-b478-f53e8399b30d",
                "name": "Pancreatic Enzymes Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/61b2062f-19fb-4bb6-9f86-baddfbf83e62/name/6c3e2caf-1e0d-4eaa-b478-f53e8399b30d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/61b2062f-19fb-4bb6-9f86-baddfbf83e62/name/6c3e2caf-1e0d-4eaa-b478-f53e8399b30d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Pancreatic Enzymes Decreased",
                  "uuid": "6c3e2caf-1e0d-4eaa-b478-f53e8399b30d",
                  "name": "Pancreatic Enzymes Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/61b2062f-19fb-4bb6-9f86-baddfbf83e62/name/6c3e2caf-1e0d-4eaa-b478-f53e8399b30d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/61b2062f-19fb-4bb6-9f86-baddfbf83e62/name/6c3e2caf-1e0d-4eaa-b478-f53e8399b30d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Pancreatic Enzymes Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "c82bf797-c27b-456d-970e-e1a9c37cf2a0",
              "name": {
                "display": "Creatine Phosphokinase Increased",
                "uuid": "0bef4f7a-7327-475e-a821-995738b2e653",
                "name": "Creatine Phosphokinase Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c82bf797-c27b-456d-970e-e1a9c37cf2a0/name/0bef4f7a-7327-475e-a821-995738b2e653"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c82bf797-c27b-456d-970e-e1a9c37cf2a0/name/0bef4f7a-7327-475e-a821-995738b2e653?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Creatine Phosphokinase Increased",
                  "uuid": "0bef4f7a-7327-475e-a821-995738b2e653",
                  "name": "Creatine Phosphokinase Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c82bf797-c27b-456d-970e-e1a9c37cf2a0/name/0bef4f7a-7327-475e-a821-995738b2e653"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c82bf797-c27b-456d-970e-e1a9c37cf2a0/name/0bef4f7a-7327-475e-a821-995738b2e653?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Creatine Phosphokinase Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2d41938b-2969-41ec-9541-194eb2871e75",
              "name": {
                "display": "Cataract",
                "uuid": "a404cb8a-c670-4c31-80e1-e2f8aef26667",
                "name": "Cataract",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2d41938b-2969-41ec-9541-194eb2871e75/name/a404cb8a-c670-4c31-80e1-e2f8aef26667"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2d41938b-2969-41ec-9541-194eb2871e75/name/a404cb8a-c670-4c31-80e1-e2f8aef26667?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Cataract",
                  "uuid": "a404cb8a-c670-4c31-80e1-e2f8aef26667",
                  "name": "Cataract",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2d41938b-2969-41ec-9541-194eb2871e75/name/a404cb8a-c670-4c31-80e1-e2f8aef26667"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2d41938b-2969-41ec-9541-194eb2871e75/name/a404cb8a-c670-4c31-80e1-e2f8aef26667?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Cataract",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "ce62461d-16f7-40a6-a082-240453ffe9ac",
              "name": {
                "display": "Optic Nerve Disorder",
                "uuid": "384d1d04-44f9-4083-86da-104892f4997b",
                "name": "Optic Nerve Disorder",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/384d1d04-44f9-4083-86da-104892f4997b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/384d1d04-44f9-4083-86da-104892f4997b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Optic nerve disorder (optic neuritis)",
                  "uuid": "2b32ca80-15d1-419f-8678-283d1f0792ef",
                  "name": "Optic nerve disorder (optic neuritis)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/2b32ca80-15d1-419f-8678-283d1f0792ef"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/2b32ca80-15d1-419f-8678-283d1f0792ef?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Optic Nerve Disorder",
                  "uuid": "384d1d04-44f9-4083-86da-104892f4997b",
                  "name": "Optic Nerve Disorder",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/384d1d04-44f9-4083-86da-104892f4997b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ce62461d-16f7-40a6-a082-240453ffe9ac/name/384d1d04-44f9-4083-86da-104892f4997b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Optic Nerve Disorder",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "f1657b92-effb-46fb-8fa3-0cf48bbf43b1",
              "name": {
                "display": "Retinopathy",
                "uuid": "086ee902-9d64-461b-8fda-4ffddbc3cf01",
                "name": "Retinopathy",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f1657b92-effb-46fb-8fa3-0cf48bbf43b1/name/086ee902-9d64-461b-8fda-4ffddbc3cf01"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f1657b92-effb-46fb-8fa3-0cf48bbf43b1/name/086ee902-9d64-461b-8fda-4ffddbc3cf01?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Retinopathy",
                  "uuid": "086ee902-9d64-461b-8fda-4ffddbc3cf01",
                  "name": "Retinopathy",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f1657b92-effb-46fb-8fa3-0cf48bbf43b1/name/086ee902-9d64-461b-8fda-4ffddbc3cf01"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f1657b92-effb-46fb-8fa3-0cf48bbf43b1/name/086ee902-9d64-461b-8fda-4ffddbc3cf01?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Retinopathy",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "461602b3-0931-4693-9cd2-46317b09e5c7",
              "name": {
                "display": "Constipation",
                "uuid": "b8a97073-9f73-47f0-abd9-8ecc1a066bde",
                "name": "Constipation",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/461602b3-0931-4693-9cd2-46317b09e5c7/name/b8a97073-9f73-47f0-abd9-8ecc1a066bde"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/461602b3-0931-4693-9cd2-46317b09e5c7/name/b8a97073-9f73-47f0-abd9-8ecc1a066bde?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Constipation",
                  "uuid": "b8a97073-9f73-47f0-abd9-8ecc1a066bde",
                  "name": "Constipation",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/461602b3-0931-4693-9cd2-46317b09e5c7/name/b8a97073-9f73-47f0-abd9-8ecc1a066bde"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/461602b3-0931-4693-9cd2-46317b09e5c7/name/b8a97073-9f73-47f0-abd9-8ecc1a066bde?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Constipation",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "f96a9cdd-1850-4375-b6dd-463143c43d56",
              "name": {
                "display": "Diarrhea",
                "uuid": "ee62ad90-41d6-4c45-b7b1-d6dcc91ac126",
                "name": "Diarrhea",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f96a9cdd-1850-4375-b6dd-463143c43d56/name/ee62ad90-41d6-4c45-b7b1-d6dcc91ac126"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f96a9cdd-1850-4375-b6dd-463143c43d56/name/ee62ad90-41d6-4c45-b7b1-d6dcc91ac126?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Diarrhea",
                  "uuid": "ee62ad90-41d6-4c45-b7b1-d6dcc91ac126",
                  "name": "Diarrhea",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f96a9cdd-1850-4375-b6dd-463143c43d56/name/ee62ad90-41d6-4c45-b7b1-d6dcc91ac126"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f96a9cdd-1850-4375-b6dd-463143c43d56/name/ee62ad90-41d6-4c45-b7b1-d6dcc91ac126?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Diarrhea",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d59089bc-d116-4427-81af-f8103e4fa632",
              "name": {
                "display": "Dyspepsia",
                "uuid": "11538d96-4487-457c-9ee5-121a1e210cfb",
                "name": "Dyspepsia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d59089bc-d116-4427-81af-f8103e4fa632/name/11538d96-4487-457c-9ee5-121a1e210cfb"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d59089bc-d116-4427-81af-f8103e4fa632/name/11538d96-4487-457c-9ee5-121a1e210cfb?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Dyspepsia",
                  "uuid": "11538d96-4487-457c-9ee5-121a1e210cfb",
                  "name": "Dyspepsia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d59089bc-d116-4427-81af-f8103e4fa632/name/11538d96-4487-457c-9ee5-121a1e210cfb"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d59089bc-d116-4427-81af-f8103e4fa632/name/11538d96-4487-457c-9ee5-121a1e210cfb?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Dyspepsia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2983df56-1468-4bd3-a7d7-d56a3b2461cb",
              "name": {
                "display": "Nausea",
                "uuid": "e324a428-edca-49d1-9a69-ae3dd77c4a1f",
                "name": "Nausea",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2983df56-1468-4bd3-a7d7-d56a3b2461cb/name/e324a428-edca-49d1-9a69-ae3dd77c4a1f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2983df56-1468-4bd3-a7d7-d56a3b2461cb/name/e324a428-edca-49d1-9a69-ae3dd77c4a1f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Nausea",
                  "uuid": "e324a428-edca-49d1-9a69-ae3dd77c4a1f",
                  "name": "Nausea",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2983df56-1468-4bd3-a7d7-d56a3b2461cb/name/e324a428-edca-49d1-9a69-ae3dd77c4a1f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2983df56-1468-4bd3-a7d7-d56a3b2461cb/name/e324a428-edca-49d1-9a69-ae3dd77c4a1f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Nausea",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1e127192-afd9-4463-9bd2-6c26548d857a",
              "name": {
                "display": "Oral Discomfort",
                "uuid": "fc01ca80-f87a-44bb-a581-c7b2f3f96453",
                "name": "Oral Discomfort",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/fc01ca80-f87a-44bb-a581-c7b2f3f96453"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/fc01ca80-f87a-44bb-a581-c7b2f3f96453?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Oral Discomfort",
                  "uuid": "fc01ca80-f87a-44bb-a581-c7b2f3f96453",
                  "name": "Oral Discomfort",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/fc01ca80-f87a-44bb-a581-c7b2f3f96453"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/fc01ca80-f87a-44bb-a581-c7b2f3f96453?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Oral discomfort/dysphagia",
                  "uuid": "2c700335-a8f7-4272-b75d-81ccea8daf49",
                  "name": "Oral discomfort/dysphagia",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/2c700335-a8f7-4272-b75d-81ccea8daf49"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1e127192-afd9-4463-9bd2-6c26548d857a/name/2c700335-a8f7-4272-b75d-81ccea8daf49?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Oral Discomfort",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a79486e9-54bc-4f13-bbe2-179aa8aef442",
              "name": {
                "display": "Pancreatitis",
                "uuid": "6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977",
                "name": "Pancreatitis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a79486e9-54bc-4f13-bbe2-179aa8aef442/name/6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a79486e9-54bc-4f13-bbe2-179aa8aef442/name/6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Pancreatitis",
                  "uuid": "6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977",
                  "name": "Pancreatitis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a79486e9-54bc-4f13-bbe2-179aa8aef442/name/6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a79486e9-54bc-4f13-bbe2-179aa8aef442/name/6fc26e98-f231-4cb7-ab2d-e2c8c7ed2977?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Pancreatitis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d4cfd46f-b527-4cf2-9b8e-00c5e0d2dff2",
              "name": {
                "display": "Vomiting",
                "uuid": "a3db1c10-2387-40e7-8686-da2614bebe5a",
                "name": "Vomiting",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d4cfd46f-b527-4cf2-9b8e-00c5e0d2dff2/name/a3db1c10-2387-40e7-8686-da2614bebe5a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d4cfd46f-b527-4cf2-9b8e-00c5e0d2dff2/name/a3db1c10-2387-40e7-8686-da2614bebe5a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Vomiting",
                  "uuid": "a3db1c10-2387-40e7-8686-da2614bebe5a",
                  "name": "Vomiting",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d4cfd46f-b527-4cf2-9b8e-00c5e0d2dff2/name/a3db1c10-2387-40e7-8686-da2614bebe5a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d4cfd46f-b527-4cf2-9b8e-00c5e0d2dff2/name/a3db1c10-2387-40e7-8686-da2614bebe5a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Vomiting",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2da4c89f-b42a-4c83-8551-8a8a1c004339",
              "name": {
                "display": "Fatigue",
                "uuid": "f6718ede-c373-49cc-8964-9f17b08d67fa",
                "name": "Fatigue",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2da4c89f-b42a-4c83-8551-8a8a1c004339/name/f6718ede-c373-49cc-8964-9f17b08d67fa"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2da4c89f-b42a-4c83-8551-8a8a1c004339/name/f6718ede-c373-49cc-8964-9f17b08d67fa?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Fatigue",
                  "uuid": "f6718ede-c373-49cc-8964-9f17b08d67fa",
                  "name": "Fatigue",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2da4c89f-b42a-4c83-8551-8a8a1c004339/name/f6718ede-c373-49cc-8964-9f17b08d67fa"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2da4c89f-b42a-4c83-8551-8a8a1c004339/name/f6718ede-c373-49cc-8964-9f17b08d67fa?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Fatigue",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "3b9b1ff5-3f3f-4106-bf7b-c120f47416d5",
              "name": {
                "display": "Fever (oral)",
                "uuid": "63cd5511-c7a6-4943-ad90-110ef9de38fe",
                "name": "Fever (oral)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3b9b1ff5-3f3f-4106-bf7b-c120f47416d5/name/63cd5511-c7a6-4943-ad90-110ef9de38fe"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3b9b1ff5-3f3f-4106-bf7b-c120f47416d5/name/63cd5511-c7a6-4943-ad90-110ef9de38fe?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Fever (oral)",
                  "uuid": "63cd5511-c7a6-4943-ad90-110ef9de38fe",
                  "name": "Fever (oral)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3b9b1ff5-3f3f-4106-bf7b-c120f47416d5/name/63cd5511-c7a6-4943-ad90-110ef9de38fe"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3b9b1ff5-3f3f-4106-bf7b-c120f47416d5/name/63cd5511-c7a6-4943-ad90-110ef9de38fe?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Fever (oral)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a8743175-a6e8-4721-8560-b273c95f00e1",
              "name": {
                "display": "Headache",
                "uuid": "7a0fe318-8b27-440c-bdd6-6d82a5ebae66",
                "name": "Headache",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8743175-a6e8-4721-8560-b273c95f00e1/name/7a0fe318-8b27-440c-bdd6-6d82a5ebae66"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8743175-a6e8-4721-8560-b273c95f00e1/name/7a0fe318-8b27-440c-bdd6-6d82a5ebae66?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Headache",
                  "uuid": "7a0fe318-8b27-440c-bdd6-6d82a5ebae66",
                  "name": "Headache",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8743175-a6e8-4721-8560-b273c95f00e1/name/7a0fe318-8b27-440c-bdd6-6d82a5ebae66"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a8743175-a6e8-4721-8560-b273c95f00e1/name/7a0fe318-8b27-440c-bdd6-6d82a5ebae66?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Headache",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "f725e09d-b9b1-44a2-8b55-6a3467cf723a",
              "name": {
                "display": "Malaise",
                "uuid": "fb02a0da-5f7b-4efa-ad7a-16210e23a095",
                "name": "Malaise",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f725e09d-b9b1-44a2-8b55-6a3467cf723a/name/fb02a0da-5f7b-4efa-ad7a-16210e23a095"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f725e09d-b9b1-44a2-8b55-6a3467cf723a/name/fb02a0da-5f7b-4efa-ad7a-16210e23a095?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Malaise",
                  "uuid": "fb02a0da-5f7b-4efa-ad7a-16210e23a095",
                  "name": "Malaise",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f725e09d-b9b1-44a2-8b55-6a3467cf723a/name/fb02a0da-5f7b-4efa-ad7a-16210e23a095"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f725e09d-b9b1-44a2-8b55-6a3467cf723a/name/fb02a0da-5f7b-4efa-ad7a-16210e23a095?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Malaise",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "eb430418-01bf-4eaa-881a-35b2de7ef755",
              "name": {
                "display": "Pain",
                "uuid": "8e13de73-0be8-4af0-8980-eef9c019caba",
                "name": "Pain",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eb430418-01bf-4eaa-881a-35b2de7ef755/name/8e13de73-0be8-4af0-8980-eef9c019caba"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eb430418-01bf-4eaa-881a-35b2de7ef755/name/8e13de73-0be8-4af0-8980-eef9c019caba?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Pain",
                  "uuid": "8e13de73-0be8-4af0-8980-eef9c019caba",
                  "name": "Pain",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eb430418-01bf-4eaa-881a-35b2de7ef755/name/8e13de73-0be8-4af0-8980-eef9c019caba"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eb430418-01bf-4eaa-881a-35b2de7ef755/name/8e13de73-0be8-4af0-8980-eef9c019caba?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Pain",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "69cc81b0-b92e-4070-9ca2-9593f1cf0945",
              "name": {
                "display": "% Polymorphonuclear Leucocytes + Band Cells Increased",
                "uuid": "461748d5-7000-4032-b24f-6d0c8522122e",
                "name": "% Polymorphonuclear Leucocytes + Band Cells Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/69cc81b0-b92e-4070-9ca2-9593f1cf0945/name/461748d5-7000-4032-b24f-6d0c8522122e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/69cc81b0-b92e-4070-9ca2-9593f1cf0945/name/461748d5-7000-4032-b24f-6d0c8522122e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "% Polymorphonuclear Leucocytes + Band Cells Increased",
                  "uuid": "461748d5-7000-4032-b24f-6d0c8522122e",
                  "name": "% Polymorphonuclear Leucocytes + Band Cells Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/69cc81b0-b92e-4070-9ca2-9593f1cf0945/name/461748d5-7000-4032-b24f-6d0c8522122e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/69cc81b0-b92e-4070-9ca2-9593f1cf0945/name/461748d5-7000-4032-b24f-6d0c8522122e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "% Polymorphonuclear Leucocytes + Band Cells Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "66887183-07ae-464c-9aa5-50294ebbb136",
              "name": {
                "display": "Absolute Neutrophil Count Low",
                "uuid": "69a533ab-5e69-4881-bf37-c332aba5e83e",
                "name": "Absolute Neutrophil Count Low",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/69a533ab-5e69-4881-bf37-c332aba5e83e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/69a533ab-5e69-4881-bf37-c332aba5e83e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Absolute Neutrophil Count Low",
                  "uuid": "69a533ab-5e69-4881-bf37-c332aba5e83e",
                  "name": "Absolute Neutrophil Count Low",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/69a533ab-5e69-4881-bf37-c332aba5e83e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/69a533ab-5e69-4881-bf37-c332aba5e83e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Absolute Neutrophil Count Low (ANC <= 1500/mm^3)",
                  "uuid": "f26c70b2-c1a6-45c0-9cd8-6474d7686e7c",
                  "name": "Absolute Neutrophil Count Low (ANC <= 1500/mm^3)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/f26c70b2-c1a6-45c0-9cd8-6474d7686e7c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/66887183-07ae-464c-9aa5-50294ebbb136/name/f26c70b2-c1a6-45c0-9cd8-6474d7686e7c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Absolute Neutrophil Count Low",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "cf8852f1-cc81-4794-bffa-0aff8b350f8b",
              "name": {
                "display": "Hemorrhage, Blood Loss",
                "uuid": "2478bb18-f032-4a23-9988-c74ec7e17c75",
                "name": "Hemorrhage, Blood Loss",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/cf8852f1-cc81-4794-bffa-0aff8b350f8b/name/2478bb18-f032-4a23-9988-c74ec7e17c75"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/cf8852f1-cc81-4794-bffa-0aff8b350f8b/name/2478bb18-f032-4a23-9988-c74ec7e17c75?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hemorrhage, Blood Loss",
                  "uuid": "2478bb18-f032-4a23-9988-c74ec7e17c75",
                  "name": "Hemorrhage, Blood Loss",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/cf8852f1-cc81-4794-bffa-0aff8b350f8b/name/2478bb18-f032-4a23-9988-c74ec7e17c75"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/cf8852f1-cc81-4794-bffa-0aff8b350f8b/name/2478bb18-f032-4a23-9988-c74ec7e17c75?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hemorrhage, Blood Loss",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "109c0152-e764-4740-bd41-4dbcc922eadf",
              "name": {
                "display": "Activated Partial Thromboplastin Time (APPT) Prolonged",
                "uuid": "f0732dac-921d-4082-b4fd-0acdf7aaec09",
                "name": "Activated Partial Thromboplastin Time (APPT) Prolonged",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/109c0152-e764-4740-bd41-4dbcc922eadf/name/f0732dac-921d-4082-b4fd-0acdf7aaec09"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/109c0152-e764-4740-bd41-4dbcc922eadf/name/f0732dac-921d-4082-b4fd-0acdf7aaec09?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Activated Partial Thromboplastin Time (APPT) Prolonged",
                  "uuid": "f0732dac-921d-4082-b4fd-0acdf7aaec09",
                  "name": "Activated Partial Thromboplastin Time (APPT) Prolonged",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/109c0152-e764-4740-bd41-4dbcc922eadf/name/f0732dac-921d-4082-b4fd-0acdf7aaec09"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/109c0152-e764-4740-bd41-4dbcc922eadf/name/f0732dac-921d-4082-b4fd-0acdf7aaec09?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Activated Partial Thromboplastin Time (APPT) Prolonged",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "c2847b5f-2da3-4cbf-bd18-352a93b7131c",
              "name": {
                "display": "Anaemia",
                "uuid": "51bb662a-9c48-4a3c-a7d9-854ba54c406d",
                "name": "Anaemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c2847b5f-2da3-4cbf-bd18-352a93b7131c/name/51bb662a-9c48-4a3c-a7d9-854ba54c406d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c2847b5f-2da3-4cbf-bd18-352a93b7131c/name/51bb662a-9c48-4a3c-a7d9-854ba54c406d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Anaemia",
                  "uuid": "51bb662a-9c48-4a3c-a7d9-854ba54c406d",
                  "name": "Anaemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c2847b5f-2da3-4cbf-bd18-352a93b7131c/name/51bb662a-9c48-4a3c-a7d9-854ba54c406d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c2847b5f-2da3-4cbf-bd18-352a93b7131c/name/51bb662a-9c48-4a3c-a7d9-854ba54c406d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Anaemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "35fe1ef4-5fee-42b4-94c4-d6d1afe869a7",
              "name": {
                "display": "CD4 Lymphocytes Decreased",
                "uuid": "e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1",
                "name": "CD4 Lymphocytes Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/35fe1ef4-5fee-42b4-94c4-d6d1afe869a7/name/e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/35fe1ef4-5fee-42b4-94c4-d6d1afe869a7/name/e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "CD4 Lymphocytes Decreased",
                  "uuid": "e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1",
                  "name": "CD4 Lymphocytes Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/35fe1ef4-5fee-42b4-94c4-d6d1afe869a7/name/e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/35fe1ef4-5fee-42b4-94c4-d6d1afe869a7/name/e8fe24e1-08d4-4c1b-8c7a-2ac4e27004f1?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "CD4 Lymphocytes Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "78eff390-5e79-4611-9e87-fcd0c9a9a89f",
              "name": {
                "display": "Febrile Neutropenia",
                "uuid": "47fb1e64-4563-4719-b14b-0f75afee4072",
                "name": "Febrile Neutropenia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78eff390-5e79-4611-9e87-fcd0c9a9a89f/name/47fb1e64-4563-4719-b14b-0f75afee4072"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78eff390-5e79-4611-9e87-fcd0c9a9a89f/name/47fb1e64-4563-4719-b14b-0f75afee4072?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Febrile Neutropenia",
                  "uuid": "47fb1e64-4563-4719-b14b-0f75afee4072",
                  "name": "Febrile Neutropenia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78eff390-5e79-4611-9e87-fcd0c9a9a89f/name/47fb1e64-4563-4719-b14b-0f75afee4072"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78eff390-5e79-4611-9e87-fcd0c9a9a89f/name/47fb1e64-4563-4719-b14b-0f75afee4072?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Febrile Neutropenia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "caca46f6-a773-42fe-a891-e8647c52bb12",
              "name": {
                "display": "Fibrin Split Product",
                "uuid": "e7df3e32-aabc-4c58-b2a8-5167cd41131e",
                "name": "Fibrin Split Product",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/caca46f6-a773-42fe-a891-e8647c52bb12/name/e7df3e32-aabc-4c58-b2a8-5167cd41131e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/caca46f6-a773-42fe-a891-e8647c52bb12/name/e7df3e32-aabc-4c58-b2a8-5167cd41131e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Fibrin Split Product",
                  "uuid": "e7df3e32-aabc-4c58-b2a8-5167cd41131e",
                  "name": "Fibrin Split Product",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/caca46f6-a773-42fe-a891-e8647c52bb12/name/e7df3e32-aabc-4c58-b2a8-5167cd41131e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/caca46f6-a773-42fe-a891-e8647c52bb12/name/e7df3e32-aabc-4c58-b2a8-5167cd41131e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Fibrin Split Product",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2386e7fb-e4e6-4ec4-9ff6-bdd77bbf34b2",
              "name": {
                "display": "Haptoglobin Decreased",
                "uuid": "10fa4d4a-cf1d-4935-977a-cb5fdbef8178",
                "name": "Haptoglobin Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2386e7fb-e4e6-4ec4-9ff6-bdd77bbf34b2/name/10fa4d4a-cf1d-4935-977a-cb5fdbef8178"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2386e7fb-e4e6-4ec4-9ff6-bdd77bbf34b2/name/10fa4d4a-cf1d-4935-977a-cb5fdbef8178?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Haptoglobin Decreased",
                  "uuid": "10fa4d4a-cf1d-4935-977a-cb5fdbef8178",
                  "name": "Haptoglobin Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2386e7fb-e4e6-4ec4-9ff6-bdd77bbf34b2/name/10fa4d4a-cf1d-4935-977a-cb5fdbef8178"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2386e7fb-e4e6-4ec4-9ff6-bdd77bbf34b2/name/10fa4d4a-cf1d-4935-977a-cb5fdbef8178?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Haptoglobin Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "eac40353-86c5-4130-a2aa-eb842eda7afd",
              "name": {
                "display": "Hemoglobin Increased",
                "uuid": "deb2e79c-6532-4b77-a35f-57fae57487d6",
                "name": "Hemoglobin Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eac40353-86c5-4130-a2aa-eb842eda7afd/name/deb2e79c-6532-4b77-a35f-57fae57487d6"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eac40353-86c5-4130-a2aa-eb842eda7afd/name/deb2e79c-6532-4b77-a35f-57fae57487d6?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hemoglobin Increased",
                  "uuid": "deb2e79c-6532-4b77-a35f-57fae57487d6",
                  "name": "Hemoglobin Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eac40353-86c5-4130-a2aa-eb842eda7afd/name/deb2e79c-6532-4b77-a35f-57fae57487d6"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/eac40353-86c5-4130-a2aa-eb842eda7afd/name/deb2e79c-6532-4b77-a35f-57fae57487d6?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hemoglobin Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "9ec33d70-c6f7-415a-8d8c-2353fe791639",
              "name": {
                "display": "Hemolysis",
                "uuid": "8624de3d-2365-446b-b759-09fcb1572f6e",
                "name": "Hemolysis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9ec33d70-c6f7-415a-8d8c-2353fe791639/name/8624de3d-2365-446b-b759-09fcb1572f6e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9ec33d70-c6f7-415a-8d8c-2353fe791639/name/8624de3d-2365-446b-b759-09fcb1572f6e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hemolysis",
                  "uuid": "8624de3d-2365-446b-b759-09fcb1572f6e",
                  "name": "Hemolysis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9ec33d70-c6f7-415a-8d8c-2353fe791639/name/8624de3d-2365-446b-b759-09fcb1572f6e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9ec33d70-c6f7-415a-8d8c-2353fe791639/name/8624de3d-2365-446b-b759-09fcb1572f6e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hemolysis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d0ccdd4f-d8c1-4fb2-aa31-6fdfaf75aa9c",
              "name": {
                "display": "High Fibrinogen",
                "uuid": "ef7fc24b-37ad-4577-bb68-53041b183615",
                "name": "High Fibrinogen",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0ccdd4f-d8c1-4fb2-aa31-6fdfaf75aa9c/name/ef7fc24b-37ad-4577-bb68-53041b183615"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0ccdd4f-d8c1-4fb2-aa31-6fdfaf75aa9c/name/ef7fc24b-37ad-4577-bb68-53041b183615?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "High Fibrinogen",
                  "uuid": "ef7fc24b-37ad-4577-bb68-53041b183615",
                  "name": "High Fibrinogen",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0ccdd4f-d8c1-4fb2-aa31-6fdfaf75aa9c/name/ef7fc24b-37ad-4577-bb68-53041b183615"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d0ccdd4f-d8c1-4fb2-aa31-6fdfaf75aa9c/name/ef7fc24b-37ad-4577-bb68-53041b183615?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "High Fibrinogen",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b2424724-8a68-4cf3-8177-82be5779c74e",
              "name": {
                "display": "International Normalized Ratio Increased",
                "uuid": "7261c0a6-b9e8-4016-aea9-4df1fe9bf228",
                "name": "International Normalized Ratio Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b2424724-8a68-4cf3-8177-82be5779c74e/name/7261c0a6-b9e8-4016-aea9-4df1fe9bf228"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b2424724-8a68-4cf3-8177-82be5779c74e/name/7261c0a6-b9e8-4016-aea9-4df1fe9bf228?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "International Normalized Ratio Increased",
                  "uuid": "7261c0a6-b9e8-4016-aea9-4df1fe9bf228",
                  "name": "International Normalized Ratio Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b2424724-8a68-4cf3-8177-82be5779c74e/name/7261c0a6-b9e8-4016-aea9-4df1fe9bf228"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b2424724-8a68-4cf3-8177-82be5779c74e/name/7261c0a6-b9e8-4016-aea9-4df1fe9bf228?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "International Normalized Ratio Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "42be894c-ac3c-4861-a77e-f2487b9b47c3",
              "name": {
                "display": "Hypertension",
                "uuid": "0d984c46-0c16-4ac4-b427-d31bb652475d",
                "name": "Hypertension",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/42be894c-ac3c-4861-a77e-f2487b9b47c3/name/0d984c46-0c16-4ac4-b427-d31bb652475d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/42be894c-ac3c-4861-a77e-f2487b9b47c3/name/0d984c46-0c16-4ac4-b427-d31bb652475d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypertension",
                  "uuid": "0d984c46-0c16-4ac4-b427-d31bb652475d",
                  "name": "Hypertension",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/42be894c-ac3c-4861-a77e-f2487b9b47c3/name/0d984c46-0c16-4ac4-b427-d31bb652475d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/42be894c-ac3c-4861-a77e-f2487b9b47c3/name/0d984c46-0c16-4ac4-b427-d31bb652475d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypertension",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0aaa8179-a3f2-4784-b626-a0a77f4d4bd3",
              "name": {
                "display": "Leukocytosis",
                "uuid": "36962d4a-5b84-4823-92f8-59964e7b83c6",
                "name": "Leukocytosis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0aaa8179-a3f2-4784-b626-a0a77f4d4bd3/name/36962d4a-5b84-4823-92f8-59964e7b83c6"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0aaa8179-a3f2-4784-b626-a0a77f4d4bd3/name/36962d4a-5b84-4823-92f8-59964e7b83c6?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Leukocytosis",
                  "uuid": "36962d4a-5b84-4823-92f8-59964e7b83c6",
                  "name": "Leukocytosis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0aaa8179-a3f2-4784-b626-a0a77f4d4bd3/name/36962d4a-5b84-4823-92f8-59964e7b83c6"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0aaa8179-a3f2-4784-b626-a0a77f4d4bd3/name/36962d4a-5b84-4823-92f8-59964e7b83c6?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Leukocytosis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "6c3feaf8-f9b0-4c78-88af-4d037cafbb60",
              "name": {
                "display": "Low Fibrinogen",
                "uuid": "b8e928a7-687a-49e1-9189-8bc8851c7ddd",
                "name": "Low Fibrinogen",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c3feaf8-f9b0-4c78-88af-4d037cafbb60/name/b8e928a7-687a-49e1-9189-8bc8851c7ddd"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c3feaf8-f9b0-4c78-88af-4d037cafbb60/name/b8e928a7-687a-49e1-9189-8bc8851c7ddd?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Low Fibrinogen",
                  "uuid": "b8e928a7-687a-49e1-9189-8bc8851c7ddd",
                  "name": "Low Fibrinogen",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c3feaf8-f9b0-4c78-88af-4d037cafbb60/name/b8e928a7-687a-49e1-9189-8bc8851c7ddd"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6c3feaf8-f9b0-4c78-88af-4d037cafbb60/name/b8e928a7-687a-49e1-9189-8bc8851c7ddd?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Low Fibrinogen",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "c4a30d00-0081-46ed-b670-1619548d6b58",
              "name": {
                "display": "Lymphocyte Count Decreased",
                "uuid": "080892f7-d8fd-48b5-8fea-57cdfc6c38c2",
                "name": "Lymphocyte Count Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c4a30d00-0081-46ed-b670-1619548d6b58/name/080892f7-d8fd-48b5-8fea-57cdfc6c38c2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c4a30d00-0081-46ed-b670-1619548d6b58/name/080892f7-d8fd-48b5-8fea-57cdfc6c38c2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Lymphocyte Count Decreased",
                  "uuid": "080892f7-d8fd-48b5-8fea-57cdfc6c38c2",
                  "name": "Lymphocyte Count Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c4a30d00-0081-46ed-b670-1619548d6b58/name/080892f7-d8fd-48b5-8fea-57cdfc6c38c2"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/c4a30d00-0081-46ed-b670-1619548d6b58/name/080892f7-d8fd-48b5-8fea-57cdfc6c38c2?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Lymphocyte Count Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "8c5e150f-9d3a-4351-b52c-b73bbbb645b1",
              "name": {
                "display": "Lymphocyte Count Increased",
                "uuid": "c116122e-2226-4d1e-a07a-259c516b687a",
                "name": "Lymphocyte Count Increased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8c5e150f-9d3a-4351-b52c-b73bbbb645b1/name/c116122e-2226-4d1e-a07a-259c516b687a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8c5e150f-9d3a-4351-b52c-b73bbbb645b1/name/c116122e-2226-4d1e-a07a-259c516b687a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Lymphocyte Count Increased",
                  "uuid": "c116122e-2226-4d1e-a07a-259c516b687a",
                  "name": "Lymphocyte Count Increased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8c5e150f-9d3a-4351-b52c-b73bbbb645b1/name/c116122e-2226-4d1e-a07a-259c516b687a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/8c5e150f-9d3a-4351-b52c-b73bbbb645b1/name/c116122e-2226-4d1e-a07a-259c516b687a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Lymphocyte Count Increased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "e4267850-4942-4e69-baf4-7373bfc5cd48",
              "name": {
                "display": "Methemoglobin",
                "uuid": "54be9ca2-66c8-468d-87b1-67a25585fda3",
                "name": "Methemoglobin",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e4267850-4942-4e69-baf4-7373bfc5cd48/name/54be9ca2-66c8-468d-87b1-67a25585fda3"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e4267850-4942-4e69-baf4-7373bfc5cd48/name/54be9ca2-66c8-468d-87b1-67a25585fda3?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Methemoglobin",
                  "uuid": "54be9ca2-66c8-468d-87b1-67a25585fda3",
                  "name": "Methemoglobin",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e4267850-4942-4e69-baf4-7373bfc5cd48/name/54be9ca2-66c8-468d-87b1-67a25585fda3"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e4267850-4942-4e69-baf4-7373bfc5cd48/name/54be9ca2-66c8-468d-87b1-67a25585fda3?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Methemoglobin",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "37dbc280-08c2-40d0-afb0-cbf4a361650b",
              "name": {
                "display": "Platelets Decreased",
                "uuid": "fc625b68-a4e2-45f0-a4b8-df3c0ba566ca",
                "name": "Platelets Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/fc625b68-a4e2-45f0-a4b8-df3c0ba566ca"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/fc625b68-a4e2-45f0-a4b8-df3c0ba566ca?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Platelets Decreased",
                  "uuid": "fc625b68-a4e2-45f0-a4b8-df3c0ba566ca",
                  "name": "Platelets Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/fc625b68-a4e2-45f0-a4b8-df3c0ba566ca"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/fc625b68-a4e2-45f0-a4b8-df3c0ba566ca?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Platelets Decreased ( < 75000/mm^3 )",
                  "uuid": "434b7abc-63a8-45c0-9302-23a9740d7dad",
                  "name": "Platelets Decreased ( < 75000/mm^3 )",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/434b7abc-63a8-45c0-9302-23a9740d7dad"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/37dbc280-08c2-40d0-afb0-cbf4a361650b/name/434b7abc-63a8-45c0-9302-23a9740d7dad?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Platelets Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "0c7201e5-efca-4cee-8dbb-fbc8914dde51",
              "name": {
                "display": "Prothrombin Time (PT) Prolonged",
                "uuid": "60f649eb-22a6-42c6-8c72-ab30600337ab",
                "name": "Prothrombin Time (PT) Prolonged",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0c7201e5-efca-4cee-8dbb-fbc8914dde51/name/60f649eb-22a6-42c6-8c72-ab30600337ab"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0c7201e5-efca-4cee-8dbb-fbc8914dde51/name/60f649eb-22a6-42c6-8c72-ab30600337ab?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Prothrombin Time (PT) Prolonged",
                  "uuid": "60f649eb-22a6-42c6-8c72-ab30600337ab",
                  "name": "Prothrombin Time (PT) Prolonged",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0c7201e5-efca-4cee-8dbb-fbc8914dde51/name/60f649eb-22a6-42c6-8c72-ab30600337ab"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/0c7201e5-efca-4cee-8dbb-fbc8914dde51/name/60f649eb-22a6-42c6-8c72-ab30600337ab?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Prothrombin Time (PT) Prolonged",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "f90db13b-8454-4365-af66-c7b42b9a0d04",
              "name": {
                "display": "White Blood Cell Decreased",
                "uuid": "86f58711-aae8-491f-9beb-3cf35b36b71b",
                "name": "White Blood Cell Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f90db13b-8454-4365-af66-c7b42b9a0d04/name/86f58711-aae8-491f-9beb-3cf35b36b71b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f90db13b-8454-4365-af66-c7b42b9a0d04/name/86f58711-aae8-491f-9beb-3cf35b36b71b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "White Blood Cell Decreased",
                  "uuid": "86f58711-aae8-491f-9beb-3cf35b36b71b",
                  "name": "White Blood Cell Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f90db13b-8454-4365-af66-c7b42b9a0d04/name/86f58711-aae8-491f-9beb-3cf35b36b71b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f90db13b-8454-4365-af66-c7b42b9a0d04/name/86f58711-aae8-491f-9beb-3cf35b36b71b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "White Blood Cell Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4b406d64-8def-44d0-a367-2f0e6577f89a",
              "name": {
                "display": "Hepatic Failure",
                "uuid": "ea8959d7-e820-4e97-b1d4-cb2885031778",
                "name": "Hepatic Failure",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4b406d64-8def-44d0-a367-2f0e6577f89a/name/ea8959d7-e820-4e97-b1d4-cb2885031778"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4b406d64-8def-44d0-a367-2f0e6577f89a/name/ea8959d7-e820-4e97-b1d4-cb2885031778?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hepatic Failure",
                  "uuid": "ea8959d7-e820-4e97-b1d4-cb2885031778",
                  "name": "Hepatic Failure",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4b406d64-8def-44d0-a367-2f0e6577f89a/name/ea8959d7-e820-4e97-b1d4-cb2885031778"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4b406d64-8def-44d0-a367-2f0e6577f89a/name/ea8959d7-e820-4e97-b1d4-cb2885031778?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hepatic Failure",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "20cf1cbd-199a-471f-af32-42f582c8d90e",
              "name": {
                "display": "Allergic Reaction",
                "uuid": "d11e3411-5307-4d9b-a3cd-6b3963e1c125",
                "name": "Allergic Reaction",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/20cf1cbd-199a-471f-af32-42f582c8d90e/name/d11e3411-5307-4d9b-a3cd-6b3963e1c125"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/20cf1cbd-199a-471f-af32-42f582c8d90e/name/d11e3411-5307-4d9b-a3cd-6b3963e1c125?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Allergic Reaction",
                  "uuid": "d11e3411-5307-4d9b-a3cd-6b3963e1c125",
                  "name": "Allergic Reaction",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/20cf1cbd-199a-471f-af32-42f582c8d90e/name/d11e3411-5307-4d9b-a3cd-6b3963e1c125"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/20cf1cbd-199a-471f-af32-42f582c8d90e/name/d11e3411-5307-4d9b-a3cd-6b3963e1c125?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Allergic Reaction",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "f36bc75c-5877-4d9a-bb47-7f05e0b850bc",
              "name": {
                "display": "Hypotension",
                "uuid": "cc989c6e-f3b3-4cc3-8f16-865b4c90a315",
                "name": "Hypotension",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f36bc75c-5877-4d9a-bb47-7f05e0b850bc/name/cc989c6e-f3b3-4cc3-8f16-865b4c90a315"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f36bc75c-5877-4d9a-bb47-7f05e0b850bc/name/cc989c6e-f3b3-4cc3-8f16-865b4c90a315?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hypotension",
                  "uuid": "cc989c6e-f3b3-4cc3-8f16-865b4c90a315",
                  "name": "Hypotension",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f36bc75c-5877-4d9a-bb47-7f05e0b850bc/name/cc989c6e-f3b3-4cc3-8f16-865b4c90a315"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/f36bc75c-5877-4d9a-bb47-7f05e0b850bc/name/cc989c6e-f3b3-4cc3-8f16-865b4c90a315?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hypotension",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "782096ac-81ca-4039-ad8b-62b69ee8cf61",
              "name": {
                "display": "Autoimmune Disorder",
                "uuid": "ebd4212b-e243-4559-aa75-57e4a5559f54",
                "name": "Autoimmune Disorder",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/782096ac-81ca-4039-ad8b-62b69ee8cf61/name/ebd4212b-e243-4559-aa75-57e4a5559f54"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/782096ac-81ca-4039-ad8b-62b69ee8cf61/name/ebd4212b-e243-4559-aa75-57e4a5559f54?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Autoimmune Disorder",
                  "uuid": "ebd4212b-e243-4559-aa75-57e4a5559f54",
                  "name": "Autoimmune Disorder",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/782096ac-81ca-4039-ad8b-62b69ee8cf61/name/ebd4212b-e243-4559-aa75-57e4a5559f54"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/782096ac-81ca-4039-ad8b-62b69ee8cf61/name/ebd4212b-e243-4559-aa75-57e4a5559f54?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Autoimmune Disorder",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4424cba9-03c0-4dcd-9508-75a0952d78a6",
              "name": {
                "display": "Infections",
                "uuid": "d286d50c-b625-4a0c-8cd0-fe8f0224ce4e",
                "name": "Infections",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4424cba9-03c0-4dcd-9508-75a0952d78a6/name/d286d50c-b625-4a0c-8cd0-fe8f0224ce4e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4424cba9-03c0-4dcd-9508-75a0952d78a6/name/d286d50c-b625-4a0c-8cd0-fe8f0224ce4e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Infections",
                  "uuid": "d286d50c-b625-4a0c-8cd0-fe8f0224ce4e",
                  "name": "Infections",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4424cba9-03c0-4dcd-9508-75a0952d78a6/name/d286d50c-b625-4a0c-8cd0-fe8f0224ce4e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4424cba9-03c0-4dcd-9508-75a0952d78a6/name/d286d50c-b625-4a0c-8cd0-fe8f0224ce4e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Infections",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "44d8d0fd-8b86-4c6b-ace8-d157a17e405e",
              "name": {
                "display": "Carbon Monoxide Diffusing Capacity Decreased",
                "uuid": "b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac",
                "name": "Carbon Monoxide Diffusing Capacity Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/44d8d0fd-8b86-4c6b-ace8-d157a17e405e/name/b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/44d8d0fd-8b86-4c6b-ace8-d157a17e405e/name/b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Carbon Monoxide Diffusing Capacity Decreased",
                  "uuid": "b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac",
                  "name": "Carbon Monoxide Diffusing Capacity Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/44d8d0fd-8b86-4c6b-ace8-d157a17e405e/name/b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/44d8d0fd-8b86-4c6b-ace8-d157a17e405e/name/b50b806c-3fd4-4cb6-a3e0-bfe2b0c009ac?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Carbon Monoxide Diffusing Capacity Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "bc66e426-bc2f-4a5f-ab6d-6a55f421684c",
              "name": {
                "display": "Forced Expiratory Volume Decreased",
                "uuid": "20369020-7def-46c2-9c46-955a0a4e0d52",
                "name": "Forced Expiratory Volume Decreased",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bc66e426-bc2f-4a5f-ab6d-6a55f421684c/name/20369020-7def-46c2-9c46-955a0a4e0d52"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bc66e426-bc2f-4a5f-ab6d-6a55f421684c/name/20369020-7def-46c2-9c46-955a0a4e0d52?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Forced Expiratory Volume Decreased",
                  "uuid": "20369020-7def-46c2-9c46-955a0a4e0d52",
                  "name": "Forced Expiratory Volume Decreased",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bc66e426-bc2f-4a5f-ab6d-6a55f421684c/name/20369020-7def-46c2-9c46-955a0a4e0d52"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bc66e426-bc2f-4a5f-ab6d-6a55f421684c/name/20369020-7def-46c2-9c46-955a0a4e0d52?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Forced Expiratory Volume Decreased",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "2206bd32-bd25-4c96-bd92-de87d5510715",
              "name": {
                "display": "Vital Capacity Abnormal",
                "uuid": "42be055f-7847-4dc9-915a-127457cc8772",
                "name": "Vital Capacity Abnormal",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2206bd32-bd25-4c96-bd92-de87d5510715/name/42be055f-7847-4dc9-915a-127457cc8772"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2206bd32-bd25-4c96-bd92-de87d5510715/name/42be055f-7847-4dc9-915a-127457cc8772?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Vital Capacity Abnormal",
                  "uuid": "42be055f-7847-4dc9-915a-127457cc8772",
                  "name": "Vital Capacity Abnormal",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2206bd32-bd25-4c96-bd92-de87d5510715/name/42be055f-7847-4dc9-915a-127457cc8772"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/2206bd32-bd25-4c96-bd92-de87d5510715/name/42be055f-7847-4dc9-915a-127457cc8772?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Vital Capacity Abnormal",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b3adbed6-019f-4d65-ab69-f2213e241a39",
              "name": {
                "display": "Weight Gain",
                "uuid": "334157fe-a039-43bf-9087-3a22c717dc5e",
                "name": "Weight Gain",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b3adbed6-019f-4d65-ab69-f2213e241a39/name/334157fe-a039-43bf-9087-3a22c717dc5e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b3adbed6-019f-4d65-ab69-f2213e241a39/name/334157fe-a039-43bf-9087-3a22c717dc5e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Weight Gain",
                  "uuid": "334157fe-a039-43bf-9087-3a22c717dc5e",
                  "name": "Weight Gain",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b3adbed6-019f-4d65-ab69-f2213e241a39/name/334157fe-a039-43bf-9087-3a22c717dc5e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b3adbed6-019f-4d65-ab69-f2213e241a39/name/334157fe-a039-43bf-9087-3a22c717dc5e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Weight Gain",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "b5449362-1f23-4d28-b787-51d8a77aa325",
              "name": {
                "display": "Weight Loss",
                "uuid": "aa977599-a127-4568-9b9a-d9b77d8d38c9",
                "name": "Weight Loss",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b5449362-1f23-4d28-b787-51d8a77aa325/name/aa977599-a127-4568-9b9a-d9b77d8d38c9"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b5449362-1f23-4d28-b787-51d8a77aa325/name/aa977599-a127-4568-9b9a-d9b77d8d38c9?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Weight Loss",
                  "uuid": "aa977599-a127-4568-9b9a-d9b77d8d38c9",
                  "name": "Weight Loss",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b5449362-1f23-4d28-b787-51d8a77aa325/name/aa977599-a127-4568-9b9a-d9b77d8d38c9"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b5449362-1f23-4d28-b787-51d8a77aa325/name/aa977599-a127-4568-9b9a-d9b77d8d38c9?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Weight Loss",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "9df6245f-03e7-4624-aa1f-cda980511aad",
              "name": {
                "display": "Dehydration",
                "uuid": "68fb98fe-6b77-432f-b9f4-b72c2d8ab5af",
                "name": "Dehydration",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9df6245f-03e7-4624-aa1f-cda980511aad/name/68fb98fe-6b77-432f-b9f4-b72c2d8ab5af"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9df6245f-03e7-4624-aa1f-cda980511aad/name/68fb98fe-6b77-432f-b9f4-b72c2d8ab5af?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Dehydration",
                  "uuid": "68fb98fe-6b77-432f-b9f4-b72c2d8ab5af",
                  "name": "Dehydration",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9df6245f-03e7-4624-aa1f-cda980511aad/name/68fb98fe-6b77-432f-b9f4-b72c2d8ab5af"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/9df6245f-03e7-4624-aa1f-cda980511aad/name/68fb98fe-6b77-432f-b9f4-b72c2d8ab5af?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Dehydration",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "32dec6fa-4ef8-47b6-a88b-2c47be9ea6ec",
              "name": {
                "display": "Obesity",
                "uuid": "09ada075-acaa-4f2c-8c0c-addc53889d62",
                "name": "Obesity",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/32dec6fa-4ef8-47b6-a88b-2c47be9ea6ec/name/09ada075-acaa-4f2c-8c0c-addc53889d62"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/32dec6fa-4ef8-47b6-a88b-2c47be9ea6ec/name/09ada075-acaa-4f2c-8c0c-addc53889d62?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Obesity",
                  "uuid": "09ada075-acaa-4f2c-8c0c-addc53889d62",
                  "name": "Obesity",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/32dec6fa-4ef8-47b6-a88b-2c47be9ea6ec/name/09ada075-acaa-4f2c-8c0c-addc53889d62"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/32dec6fa-4ef8-47b6-a88b-2c47be9ea6ec/name/09ada075-acaa-4f2c-8c0c-addc53889d62?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Obesity",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "4fcb9fbb-f2c4-47df-a468-28500b7a62fa",
              "name": {
                "display": "Arthralgia (joint pain)",
                "uuid": "5e14a04d-a243-4001-a518-abf084709c38",
                "name": "Arthralgia (joint pain)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4fcb9fbb-f2c4-47df-a468-28500b7a62fa/name/5e14a04d-a243-4001-a518-abf084709c38"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4fcb9fbb-f2c4-47df-a468-28500b7a62fa/name/5e14a04d-a243-4001-a518-abf084709c38?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Arthralgia (joint pain)",
                  "uuid": "5e14a04d-a243-4001-a518-abf084709c38",
                  "name": "Arthralgia (joint pain)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4fcb9fbb-f2c4-47df-a468-28500b7a62fa/name/5e14a04d-a243-4001-a518-abf084709c38"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/4fcb9fbb-f2c4-47df-a468-28500b7a62fa/name/5e14a04d-a243-4001-a518-abf084709c38?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Arthralgia (joint pain)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "77549d43-b8be-4474-bbc9-6f02982e4408",
              "name": {
                "display": "Pericarditis",
                "uuid": "c3e1a334-12ab-4164-879c-150aa79ee33b",
                "name": "Pericarditis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/77549d43-b8be-4474-bbc9-6f02982e4408/name/c3e1a334-12ab-4164-879c-150aa79ee33b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/77549d43-b8be-4474-bbc9-6f02982e4408/name/c3e1a334-12ab-4164-879c-150aa79ee33b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Pericarditis",
                  "uuid": "c3e1a334-12ab-4164-879c-150aa79ee33b",
                  "name": "Pericarditis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/77549d43-b8be-4474-bbc9-6f02982e4408/name/c3e1a334-12ab-4164-879c-150aa79ee33b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/77549d43-b8be-4474-bbc9-6f02982e4408/name/c3e1a334-12ab-4164-879c-150aa79ee33b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Pericarditis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "fa5a53f7-d675-4089-adfa-277ba59ea0fc",
              "name": {
                "display": "Arthritis",
                "uuid": "c8423924-70fa-413b-a65d-1a8cefc99d1e",
                "name": "Arthritis",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fa5a53f7-d675-4089-adfa-277ba59ea0fc/name/c8423924-70fa-413b-a65d-1a8cefc99d1e"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fa5a53f7-d675-4089-adfa-277ba59ea0fc/name/c8423924-70fa-413b-a65d-1a8cefc99d1e?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Arthritis",
                  "uuid": "c8423924-70fa-413b-a65d-1a8cefc99d1e",
                  "name": "Arthritis",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fa5a53f7-d675-4089-adfa-277ba59ea0fc/name/c8423924-70fa-413b-a65d-1a8cefc99d1e"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fa5a53f7-d675-4089-adfa-277ba59ea0fc/name/c8423924-70fa-413b-a65d-1a8cefc99d1e?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Arthritis",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "aab4c0cc-4574-40b6-81dd-007b9f7eb0a6",
              "name": {
                "display": "Myalgia",
                "uuid": "3c2cca49-27e3-4a12-951d-f622e7de0245",
                "name": "Myalgia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aab4c0cc-4574-40b6-81dd-007b9f7eb0a6/name/3c2cca49-27e3-4a12-951d-f622e7de0245"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aab4c0cc-4574-40b6-81dd-007b9f7eb0a6/name/3c2cca49-27e3-4a12-951d-f622e7de0245?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Myalgia",
                  "uuid": "3c2cca49-27e3-4a12-951d-f622e7de0245",
                  "name": "Myalgia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aab4c0cc-4574-40b6-81dd-007b9f7eb0a6/name/3c2cca49-27e3-4a12-951d-f622e7de0245"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aab4c0cc-4574-40b6-81dd-007b9f7eb0a6/name/3c2cca49-27e3-4a12-951d-f622e7de0245?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Myalgia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "d94fa7f4-c170-41f6-be0d-5d852cd74315",
              "name": {
                "display": "Tendinopathy",
                "uuid": "83d97a40-edbe-46a1-a0e1-a1634b4a4d2b",
                "name": "Tendinopathy",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d94fa7f4-c170-41f6-be0d-5d852cd74315/name/83d97a40-edbe-46a1-a0e1-a1634b4a4d2b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d94fa7f4-c170-41f6-be0d-5d852cd74315/name/83d97a40-edbe-46a1-a0e1-a1634b4a4d2b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Tendinopathy",
                  "uuid": "83d97a40-edbe-46a1-a0e1-a1634b4a4d2b",
                  "name": "Tendinopathy",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d94fa7f4-c170-41f6-be0d-5d852cd74315/name/83d97a40-edbe-46a1-a0e1-a1634b4a4d2b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/d94fa7f4-c170-41f6-be0d-5d852cd74315/name/83d97a40-edbe-46a1-a0e1-a1634b4a4d2b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Tendinopathy",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "ef5154ee-b605-46d7-b50f-7552fe8e80ed",
              "name": {
                "display": "Depressed Level of Consciousness",
                "uuid": "1afb3fe1-fe55-4383-9b81-d7398d4c2ffe",
                "name": "Depressed Level of Consciousness",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ef5154ee-b605-46d7-b50f-7552fe8e80ed/name/1afb3fe1-fe55-4383-9b81-d7398d4c2ffe"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ef5154ee-b605-46d7-b50f-7552fe8e80ed/name/1afb3fe1-fe55-4383-9b81-d7398d4c2ffe?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Depressed Level of Consciousness",
                  "uuid": "1afb3fe1-fe55-4383-9b81-d7398d4c2ffe",
                  "name": "Depressed Level of Consciousness",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ef5154ee-b605-46d7-b50f-7552fe8e80ed/name/1afb3fe1-fe55-4383-9b81-d7398d4c2ffe"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ef5154ee-b605-46d7-b50f-7552fe8e80ed/name/1afb3fe1-fe55-4383-9b81-d7398d4c2ffe?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Depressed Level of Consciousness",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "82216e09-d80f-43dd-99a6-6052c0d46a19",
              "name": {
                "display": "Dysgeusia",
                "uuid": "e31ee92e-5008-4edd-92e6-47a744c7bc08",
                "name": "Dysgeusia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82216e09-d80f-43dd-99a6-6052c0d46a19/name/e31ee92e-5008-4edd-92e6-47a744c7bc08"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82216e09-d80f-43dd-99a6-6052c0d46a19/name/e31ee92e-5008-4edd-92e6-47a744c7bc08?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Dysgeusia",
                  "uuid": "e31ee92e-5008-4edd-92e6-47a744c7bc08",
                  "name": "Dysgeusia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82216e09-d80f-43dd-99a6-6052c0d46a19/name/e31ee92e-5008-4edd-92e6-47a744c7bc08"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82216e09-d80f-43dd-99a6-6052c0d46a19/name/e31ee92e-5008-4edd-92e6-47a744c7bc08?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Dysgeusia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "64d2e282-a8e7-4e8e-8259-5315713e1e48",
              "name": {
                "display": "Muscle Strength Disorders",
                "uuid": "b3390a07-c0b0-4985-98ac-2919f7d6072f",
                "name": "Muscle Strength Disorders",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/64d2e282-a8e7-4e8e-8259-5315713e1e48/name/b3390a07-c0b0-4985-98ac-2919f7d6072f"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/64d2e282-a8e7-4e8e-8259-5315713e1e48/name/b3390a07-c0b0-4985-98ac-2919f7d6072f?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Muscle Strength Disorders",
                  "uuid": "b3390a07-c0b0-4985-98ac-2919f7d6072f",
                  "name": "Muscle Strength Disorders",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/64d2e282-a8e7-4e8e-8259-5315713e1e48/name/b3390a07-c0b0-4985-98ac-2919f7d6072f"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/64d2e282-a8e7-4e8e-8259-5315713e1e48/name/b3390a07-c0b0-4985-98ac-2919f7d6072f?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Muscle Strength Disorders",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "15e766c4-f4b3-4ebe-af48-4cba67c3b25c",
              "name": {
                "display": "Neuro-Cerebellar Disorders",
                "uuid": "702a7104-3c46-496c-a470-2116f2e34688",
                "name": "Neuro-Cerebellar Disorders",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/15e766c4-f4b3-4ebe-af48-4cba67c3b25c/name/702a7104-3c46-496c-a470-2116f2e34688"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/15e766c4-f4b3-4ebe-af48-4cba67c3b25c/name/702a7104-3c46-496c-a470-2116f2e34688?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Neuro-Cerebellar Disorders",
                  "uuid": "702a7104-3c46-496c-a470-2116f2e34688",
                  "name": "Neuro-Cerebellar Disorders",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/15e766c4-f4b3-4ebe-af48-4cba67c3b25c/name/702a7104-3c46-496c-a470-2116f2e34688"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/15e766c4-f4b3-4ebe-af48-4cba67c3b25c/name/702a7104-3c46-496c-a470-2116f2e34688?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Neuro-Cerebellar Disorders",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "fb816f5d-8a38-428f-9501-791f765c95eb",
              "name": {
                "display": "Neuro-Sensory Disorders",
                "uuid": "6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139",
                "name": "Neuro-Sensory Disorders",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fb816f5d-8a38-428f-9501-791f765c95eb/name/6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fb816f5d-8a38-428f-9501-791f765c95eb/name/6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Neuro-Sensory Disorders",
                  "uuid": "6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139",
                  "name": "Neuro-Sensory Disorders",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fb816f5d-8a38-428f-9501-791f765c95eb/name/6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/fb816f5d-8a38-428f-9501-791f765c95eb/name/6e2d9da4-7bb1-4bc7-bb0a-5ef16afd4139?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Neuro-Sensory Disorders",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "a890cf73-6d70-477f-9977-dea28e453e32",
              "name": {
                "display": "Paresthesia (Burning, Tingling, etc.)",
                "uuid": "33428c3d-5811-40ce-8002-e81fe0e7112a",
                "name": "Paresthesia (Burning, Tingling, etc.)",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a890cf73-6d70-477f-9977-dea28e453e32/name/33428c3d-5811-40ce-8002-e81fe0e7112a"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a890cf73-6d70-477f-9977-dea28e453e32/name/33428c3d-5811-40ce-8002-e81fe0e7112a?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Paresthesia (Burning, Tingling, etc.)",
                  "uuid": "33428c3d-5811-40ce-8002-e81fe0e7112a",
                  "name": "Paresthesia (Burning, Tingling, etc.)",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a890cf73-6d70-477f-9977-dea28e453e32/name/33428c3d-5811-40ce-8002-e81fe0e7112a"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/a890cf73-6d70-477f-9977-dea28e453e32/name/33428c3d-5811-40ce-8002-e81fe0e7112a?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Paresthesia (Burning, Tingling, etc.)",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "602e0bdb-723f-48fc-8a49-a2cef08d591b",
              "name": {
                "display": "Seizure",
                "uuid": "bd142978-e8eb-4338-8a5c-c75114ce1752",
                "name": "Seizure",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/602e0bdb-723f-48fc-8a49-a2cef08d591b/name/bd142978-e8eb-4338-8a5c-c75114ce1752"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/602e0bdb-723f-48fc-8a49-a2cef08d591b/name/bd142978-e8eb-4338-8a5c-c75114ce1752?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Seizure",
                  "uuid": "bd142978-e8eb-4338-8a5c-c75114ce1752",
                  "name": "Seizure",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/602e0bdb-723f-48fc-8a49-a2cef08d591b/name/bd142978-e8eb-4338-8a5c-c75114ce1752"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/602e0bdb-723f-48fc-8a49-a2cef08d591b/name/bd142978-e8eb-4338-8a5c-c75114ce1752?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Seizure",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "5acf1062-8005-4a71-8679-28757412d9c3",
              "name": {
                "display": "Anemia",
                "uuid": "c471841c-95ea-45d6-9b03-670a8a1b1968",
                "name": "Anemia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/c471841c-95ea-45d6-9b03-670a8a1b1968"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/c471841c-95ea-45d6-9b03-670a8a1b1968?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Anemia (Hb < 10.5 g/dL)",
                  "uuid": "947eff0e-56a3-451c-993c-9e1e7fb69da0",
                  "name": "Anemia (Hb < 10.5 g/dL)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/947eff0e-56a3-451c-993c-9e1e7fb69da0"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/947eff0e-56a3-451c-993c-9e1e7fb69da0?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Anemia",
                  "uuid": "c471841c-95ea-45d6-9b03-670a8a1b1968",
                  "name": "Anemia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/c471841c-95ea-45d6-9b03-670a8a1b1968"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/5acf1062-8005-4a71-8679-28757412d9c3/name/c471841c-95ea-45d6-9b03-670a8a1b1968?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Anemia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "33cebed0-91a2-45be-91c0-6cfc0b553bb2",
              "name": {
                "display": "Arthralgia",
                "uuid": "d515ef9c-ff7e-44b5-af24-fd04822c7faa",
                "name": "Arthralgia",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/33cebed0-91a2-45be-91c0-6cfc0b553bb2/name/d515ef9c-ff7e-44b5-af24-fd04822c7faa"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/33cebed0-91a2-45be-91c0-6cfc0b553bb2/name/d515ef9c-ff7e-44b5-af24-fd04822c7faa?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Arthralgia",
                  "uuid": "d515ef9c-ff7e-44b5-af24-fd04822c7faa",
                  "name": "Arthralgia",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/33cebed0-91a2-45be-91c0-6cfc0b553bb2/name/d515ef9c-ff7e-44b5-af24-fd04822c7faa"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/33cebed0-91a2-45be-91c0-6cfc0b553bb2/name/d515ef9c-ff7e-44b5-af24-fd04822c7faa?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Arthralgia",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "3c6c46f9-e06c-4a78-9d9c-c67c52801c37",
              "name": {
                "display": "Peripheral neuropathy",
                "uuid": "7c969b38-117e-4b9b-8e91-f673ff68c564",
                "name": "Peripheral neuropathy",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/7c969b38-117e-4b9b-8e91-f673ff68c564"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/7c969b38-117e-4b9b-8e91-f673ff68c564?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Peripheral neuropathy",
                  "uuid": "7c969b38-117e-4b9b-8e91-f673ff68c564",
                  "name": "Peripheral neuropathy",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/7c969b38-117e-4b9b-8e91-f673ff68c564"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/7c969b38-117e-4b9b-8e91-f673ff68c564?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Peripheral neuropathy (neurosensory disorder or paresthesia)",
                  "uuid": "9e832c0a-45c1-48af-ab93-5786a024eb8c",
                  "name": "Peripheral neuropathy (neurosensory disorder or paresthesia)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/9e832c0a-45c1-48af-ab93-5786a024eb8c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/3c6c46f9-e06c-4a78-9d9c-c67c52801c37/name/9e832c0a-45c1-48af-ab93-5786a024eb8c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Peripheral neuropathy",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "420150d4-6a24-4395-9d10-e0f73c25fc5d",
              "name": {
                "display": "Lactate",
                "uuid": "bec0b282-1b5b-468c-ba08-4fae5c8fe847",
                "name": "Lactate",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/bec0b282-1b5b-468c-ba08-4fae5c8fe847"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/bec0b282-1b5b-468c-ba08-4fae5c8fe847?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Lactate (serum lactate greater than ULN)",
                  "uuid": "067045a2-7d94-4cd1-9615-b84001542a24",
                  "name": "Lactate (serum lactate greater than ULN)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/067045a2-7d94-4cd1-9615-b84001542a24"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/067045a2-7d94-4cd1-9615-b84001542a24?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Lactate",
                  "uuid": "bec0b282-1b5b-468c-ba08-4fae5c8fe847",
                  "name": "Lactate",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/bec0b282-1b5b-468c-ba08-4fae5c8fe847"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/420150d4-6a24-4395-9d10-e0f73c25fc5d/name/bec0b282-1b5b-468c-ba08-4fae5c8fe847?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Lactate",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "74921f8b-8413-47a2-9920-b293c4e98951",
              "name": {
                "display": "Prolonged QT Interval",
                "uuid": "b4e670d7-5aef-4590-8821-c940bcfe77f9",
                "name": "Prolonged QT Interval",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74921f8b-8413-47a2-9920-b293c4e98951/name/b4e670d7-5aef-4590-8821-c940bcfe77f9"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74921f8b-8413-47a2-9920-b293c4e98951/name/b4e670d7-5aef-4590-8821-c940bcfe77f9?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Prolonged QT Interval",
                  "uuid": "b4e670d7-5aef-4590-8821-c940bcfe77f9",
                  "name": "Prolonged QT Interval",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74921f8b-8413-47a2-9920-b293c4e98951/name/b4e670d7-5aef-4590-8821-c940bcfe77f9"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74921f8b-8413-47a2-9920-b293c4e98951/name/b4e670d7-5aef-4590-8821-c940bcfe77f9?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Prolonged QT Interval",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "aaccd405-2b3c-47c3-91e9-1ba159db4b8f",
              "name": {
                "display": "Hearing impairment",
                "uuid": "4140abfc-3e79-4808-a4cf-fcb7b72a817d",
                "name": "Hearing impairment",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/4140abfc-3e79-4808-a4cf-fcb7b72a817d"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/4140abfc-3e79-4808-a4cf-fcb7b72a817d?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Hearing impairment",
                  "uuid": "4140abfc-3e79-4808-a4cf-fcb7b72a817d",
                  "name": "Hearing impairment",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/4140abfc-3e79-4808-a4cf-fcb7b72a817d"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/4140abfc-3e79-4808-a4cf-fcb7b72a817d?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Hearing impairment (hearing loss)",
                  "uuid": "3d6c7789-de7b-4890-8199-b490e1881830",
                  "name": "Hearing impairment (hearing loss)",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/3d6c7789-de7b-4890-8199-b490e1881830"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/aaccd405-2b3c-47c3-91e9-1ba159db4b8f/name/3d6c7789-de7b-4890-8199-b490e1881830?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Hearing impairment",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "65b0c88d-e7c0-4d56-a9f8-6fad452d321c",
              "name": {
                "display": "Increased liver enzymes",
                "uuid": "ae457db6-96ac-4518-9540-27ae9c5adaa5",
                "name": "Increased liver enzymes",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/ae457db6-96ac-4518-9540-27ae9c5adaa5"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/ae457db6-96ac-4518-9540-27ae9c5adaa5?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Increased liver enzymes",
                  "uuid": "ae457db6-96ac-4518-9540-27ae9c5adaa5",
                  "name": "Increased liver enzymes",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/ae457db6-96ac-4518-9540-27ae9c5adaa5"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/ae457db6-96ac-4518-9540-27ae9c5adaa5?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Increased liver enzymes (ALT increased or AST increased (>= 1.1 x ULN))",
                  "uuid": "a7fa8d23-446d-43fb-8c55-f5cd33661815",
                  "name": "Increased liver enzymes (ALT increased or AST increased (>= 1.1 x ULN))",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/a7fa8d23-446d-43fb-8c55-f5cd33661815"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/65b0c88d-e7c0-4d56-a9f8-6fad452d321c/name/a7fa8d23-446d-43fb-8c55-f5cd33661815?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Increased liver enzymes",
              "resourceVersion": "1.9"
            }
          ],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": {
            "autocomplete": true,
            "required": true
          },
          "uniqueId": "observation_611",
          "erroneousValue": null,
          "value": {
            "label": "Other",
            "value": "Other",
            "concept": {
              "uuid": "b31c6dab-b80f-413c-946d-29fa3f79fa3d",
              "name": "Other",
              "shortName": null,
              "description": null,
              "dataType": null,
              "conceptClass": null,
              "displayString": "Other",
              "names": [
                {
                  "display": "Other",
                  "uuid": "143bcaa3-ea44-4baf-9a5d-336b95d50c1b",
                  "name": "Other",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ]
            },
            "uuid": "b31c6dab-b80f-413c-946d-29fa3f79fa3d",
            "name": "Other"
          },
          "autocompleteValue": "Other",
          "disabled": false,
          "_value": {
            "label": "Other",
            "value": "Other",
            "concept": {
              "uuid": "b31c6dab-b80f-413c-946d-29fa3f79fa3d",
              "name": "Other",
              "shortName": null,
              "description": null,
              "dataType": null,
              "conceptClass": null,
              "displayString": "Other",
              "names": [
                {
                  "display": "Other",
                  "uuid": "143bcaa3-ea44-4baf-9a5d-336b95d50c1b",
                  "name": "Other",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ]
            },
            "uuid": "b31c6dab-b80f-413c-946d-29fa3f79fa3d",
            "name": "Other"
          },
          "error": false,
          "voided": false
        },
        {
          "concept": {
            "uuid": "01e4ab9f-8f06-4a17-b944-8c041064795b",
            "name": "AE Form, Other AE term",
            "dataType": "Text"
          },
          "units": null,
          "label": "Other AE term",
          "possibleAnswers": [],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": {
            "conciseText": true
          },
          "uniqueId": "observation_612",
          "erroneousValue": null,
          "value": "Other123",
          "autocompleteValue": "Other123",
          "disabled": false,
          "_value": "Other123",
          "voided": false
        },
        {
          "concept": {
            "uuid": "207fbed8-d48b-441f-8e1c-27392ae0e670",
            "name": "AE Form, AE Grade",
            "dataType": "Coded"
          },
          "units": null,
          "label": "AE severity grade",
          "possibleAnswers": [
            {
              "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
              "name": {
                "display": "Number, 1",
                "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                "name": "Number, 1",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "1",
                  "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                  "name": "1",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "Number, 1",
                  "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                  "name": "Number, 1",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Number, 1",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
              "name": {
                "display": "Number, 2",
                "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                "name": "Number, 2",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Number, 2",
                  "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                  "name": "Number, 2",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "2",
                  "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                  "name": "2",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Number, 2",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
              "name": {
                "display": "Number, 3",
                "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                "name": "Number, 3",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Number, 3",
                  "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                  "name": "Number, 3",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "3",
                  "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                  "name": "3",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Number, 3",
              "resourceVersion": "1.9"
            },
            {
              "uuid": "670049f8-c95d-4092-a7c3-b4314069bc29",
              "name": {
                "display": "Number, 4",
                "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                "name": "Number, 4",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "names": [
                {
                  "display": "Number, 4",
                  "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                  "name": "Number, 4",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                {
                  "display": "4",
                  "uuid": "0a293e6f-9623-4fdc-8e40-993d61105172",
                  "name": "4",
                  "locale": "en",
                  "localePreferred": false,
                  "conceptNameType": "SHORT",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172"
                    },
                    {
                      "rel": "full",
                      "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                }
              ],
              "displayString": "Number, 4",
              "resourceVersion": "1.9"
            }
          ],
          "groupMembers": [],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_613",
          "erroneousValue": null,
          "value": {
            "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
            "name": {
              "display": "Number, 1",
              "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
              "name": "Number, 1",
              "locale": "en",
              "localePreferred": true,
              "conceptNameType": "FULLY_SPECIFIED",
              "links": [
                {
                  "rel": "self",
                  "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                },
                {
                  "rel": "full",
                  "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                }
              ],
              "resourceVersion": "1.9"
            },
            "names": [
              {
                "display": "1",
                "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                "name": "1",
                "locale": "en",
                "localePreferred": false,
                "conceptNameType": "SHORT",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              {
                "display": "Number, 1",
                "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                "name": "Number, 1",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              }
            ],
            "displayString": "Number, 1",
            "resourceVersion": "1.9"
          },
          "autocompleteValue": {
            "display": "Number, 1",
            "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
            "name": "Number, 1",
            "locale": "en",
            "localePreferred": true,
            "conceptNameType": "FULLY_SPECIFIED",
            "links": [
              {
                "rel": "self",
                "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
              },
              {
                "rel": "full",
                "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
              }
            ],
            "resourceVersion": "1.9"
          },
          "disabled": false,
          "_value": {
            "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
            "name": {
              "display": "Number, 1",
              "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
              "name": "Number, 1",
              "locale": "en",
              "localePreferred": true,
              "conceptNameType": "FULLY_SPECIFIED",
              "links": [
                {
                  "rel": "self",
                  "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                },
                {
                  "rel": "full",
                  "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                }
              ],
              "resourceVersion": "1.9"
            },
            "names": [
              {
                "display": "1",
                "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                "name": "1",
                "locale": "en",
                "localePreferred": false,
                "conceptNameType": "SHORT",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              {
                "display": "Number, 1",
                "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                "name": "Number, 1",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                  },
                  {
                    "rel": "full",
                    "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              }
            ],
            "displayString": "Number, 1",
            "resourceVersion": "1.9"
          },
          "voided": false
        },
        {
          "concept": {
            "uuid": "cf62f8bb-bd1f-401e-bcf5-6ed562830458",
            "name": "AE Form, AE review log",
            "dataType": "N/A"
          },
          "units": null,
          "label": "AE Review Log",
          "possibleAnswers": [],
          "groupMembers": [
            {
              "concept": {
                "uuid": "20743190-7eb5-4acc-95de-fd70b366e0ed",
                "name": "AE Form, AE severity review",
                "dataType": "N/A"
              },
              "units": null,
              "label": "AE Severity Review",
              "possibleAnswers": [],
              "groupMembers": [
                {
                  "concept": {
                    "uuid": "8ccfd9ab-4341-4ca9-b2f6-5cb0c2c1b097",
                    "name": "AE Form, AE review date",
                    "dataType": "Date"
                  },
                  "units": null,
                  "label": "AE review date",
                  "possibleAnswers": [],
                  "groupMembers": [],
                  "comment": null,
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_620",
                  "erroneousValue": null,
                  "value": "2016-06-15",
                  "autocompleteValue": "2016-06-15",
                  "disabled": false,
                  "_value": "2016-06-15",
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "b9fe1daf-2be7-44f5-b9f5-50650b050b55",
                    "name": "AE Form, AE severity at review",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "AE severity at review",
                  "possibleAnswers": [
                    {
                      "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
                      "name": {
                        "display": "Number, 1",
                        "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                        "name": "Number, 1",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "1",
                          "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                          "name": "1",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Number, 1",
                          "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                          "name": "Number, 1",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 1",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
                      "name": {
                        "display": "Number, 2",
                        "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                        "name": "Number, 2",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 2",
                          "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                          "name": "Number, 2",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "2",
                          "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                          "name": "2",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 2",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
                      "name": {
                        "display": "Number, 3",
                        "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                        "name": "Number, 3",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 3",
                          "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                          "name": "Number, 3",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "3",
                          "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                          "name": "3",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 3",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "670049f8-c95d-4092-a7c3-b4314069bc29",
                      "name": {
                        "display": "Number, 4",
                        "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                        "name": "Number, 4",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 4",
                          "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                          "name": "Number, 4",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "4",
                          "uuid": "0a293e6f-9623-4fdc-8e40-993d61105172",
                          "name": "4",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 4",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "comment": null,
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_621",
                  "erroneousValue": null,
                  "value": {
                    "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
                    "name": {
                      "display": "Number, 1",
                      "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                      "name": "Number, 1",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "1",
                        "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                        "name": "1",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "Number, 1",
                        "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                        "name": "Number, 1",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 1",
                    "resourceVersion": "1.9"
                  },
                  "autocompleteValue": {
                    "display": "Number, 1",
                    "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                    "name": "Number, 1",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                      },
                      {
                        "rel": "full",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "disabled": false,
                  "_value": {
                    "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
                    "name": {
                      "display": "Number, 1",
                      "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                      "name": "Number, 1",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "1",
                        "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                        "name": "1",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "Number, 1",
                        "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                        "name": "Number, 1",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 1",
                    "resourceVersion": "1.9"
                  },
                  "voided": false
                }
              ],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": {
                "allowAddMore": true
              },
              "uniqueId": "observation_622",
              "erroneousValue": null,
              "voided": false
            },
            {
              "concept": {
                "uuid": "20743190-7eb5-4acc-95de-fd70b366e0ed",
                "name": "AE Form, AE severity review",
                "dataType": "N/A"
              },
              "units": null,
              "label": "AE Severity Review",
              "possibleAnswers": [],
              "groupMembers": [
                {
                  "concept": {
                    "uuid": "8ccfd9ab-4341-4ca9-b2f6-5cb0c2c1b097",
                    "name": "AE Form, AE review date",
                    "dataType": "Date"
                  },
                  "units": null,
                  "label": "AE review date",
                  "possibleAnswers": [],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_644",
                  "erroneousValue": null,
                  "value": "2016-06-14",
                  "autocompleteValue": "2016-06-14",
                  "disabled": false,
                  "_value": "2016-06-14",
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "b9fe1daf-2be7-44f5-b9f5-50650b050b55",
                    "name": "AE Form, AE severity at review",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "AE severity at review",
                  "possibleAnswers": [
                    {
                      "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
                      "name": {
                        "display": "Number, 1",
                        "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                        "name": "Number, 1",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "1",
                          "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                          "name": "1",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Number, 1",
                          "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                          "name": "Number, 1",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 1",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
                      "name": {
                        "display": "Number, 2",
                        "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                        "name": "Number, 2",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 2",
                          "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                          "name": "Number, 2",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "2",
                          "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                          "name": "2",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 2",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
                      "name": {
                        "display": "Number, 3",
                        "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                        "name": "Number, 3",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 3",
                          "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                          "name": "Number, 3",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "3",
                          "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                          "name": "3",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 3",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "670049f8-c95d-4092-a7c3-b4314069bc29",
                      "name": {
                        "display": "Number, 4",
                        "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                        "name": "Number, 4",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 4",
                          "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                          "name": "Number, 4",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "4",
                          "uuid": "0a293e6f-9623-4fdc-8e40-993d61105172",
                          "name": "4",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 4",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_645",
                  "erroneousValue": null,
                  "value": {
                    "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
                    "name": {
                      "display": "Number, 2",
                      "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                      "name": "Number, 2",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Number, 2",
                        "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                        "name": "Number, 2",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "2",
                        "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                        "name": "2",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 2",
                    "resourceVersion": "1.9"
                  },
                  "autocompleteValue": {
                    "display": "Number, 2",
                    "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                    "name": "Number, 2",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                      },
                      {
                        "rel": "full",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "disabled": false,
                  "_value": {
                    "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
                    "name": {
                      "display": "Number, 2",
                      "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                      "name": "Number, 2",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Number, 2",
                        "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                        "name": "Number, 2",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "2",
                        "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                        "name": "2",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 2",
                    "resourceVersion": "1.9"
                  },
                  "voided": false
                }
              ],
              "isObservation": true,
              "conceptUIConfig": {
                "allowAddMore": true
              },
              "uniqueId": "observation_646",
              "erroneousValue": null,
              "voided": false
            },
            {
              "concept": {
                "uuid": "20743190-7eb5-4acc-95de-fd70b366e0ed",
                "name": "AE Form, AE severity review",
                "dataType": "N/A"
              },
              "units": null,
              "label": "AE Severity Review",
              "possibleAnswers": [],
              "groupMembers": [
                {
                  "concept": {
                    "uuid": "8ccfd9ab-4341-4ca9-b2f6-5cb0c2c1b097",
                    "name": "AE Form, AE review date",
                    "dataType": "Date"
                  },
                  "units": null,
                  "label": "AE review date",
                  "possibleAnswers": [],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_641",
                  "erroneousValue": null,
                  "value": "2016-06-13",
                  "autocompleteValue": "2016-06-13",
                  "disabled": false,
                  "_value": "2016-06-13",
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "b9fe1daf-2be7-44f5-b9f5-50650b050b55",
                    "name": "AE Form, AE severity at review",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "AE severity at review",
                  "possibleAnswers": [
                    {
                      "uuid": "b154b805-599c-40cd-9dca-9971d95c2ee0",
                      "name": {
                        "display": "Number, 1",
                        "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                        "name": "Number, 1",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "1",
                          "uuid": "c41bbf91-cd52-4d98-b5ea-a33a8c1727b3",
                          "name": "1",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/c41bbf91-cd52-4d98-b5ea-a33a8c1727b3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Number, 1",
                          "uuid": "a276d314-6ab2-431f-a4bd-f89c9637dae2",
                          "name": "Number, 1",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/b154b805-599c-40cd-9dca-9971d95c2ee0/name/a276d314-6ab2-431f-a4bd-f89c9637dae2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 1",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "bb7b314a-c929-4145-a02e-0a9fc2ec5297",
                      "name": {
                        "display": "Number, 2",
                        "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                        "name": "Number, 2",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 2",
                          "uuid": "c7a86a65-b1db-41ef-a8ec-7244e5f357f9",
                          "name": "Number, 2",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/c7a86a65-b1db-41ef-a8ec-7244e5f357f9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "2",
                          "uuid": "d2f1a3b3-779a-403e-b483-f446cd8833b6",
                          "name": "2",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/bb7b314a-c929-4145-a02e-0a9fc2ec5297/name/d2f1a3b3-779a-403e-b483-f446cd8833b6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 2",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
                      "name": {
                        "display": "Number, 3",
                        "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                        "name": "Number, 3",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 3",
                          "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                          "name": "Number, 3",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "3",
                          "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                          "name": "3",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 3",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "670049f8-c95d-4092-a7c3-b4314069bc29",
                      "name": {
                        "display": "Number, 4",
                        "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                        "name": "Number, 4",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Number, 4",
                          "uuid": "84aa99c3-9a5d-41a9-b105-76740254a108",
                          "name": "Number, 4",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/84aa99c3-9a5d-41a9-b105-76740254a108?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "4",
                          "uuid": "0a293e6f-9623-4fdc-8e40-993d61105172",
                          "name": "4",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/670049f8-c95d-4092-a7c3-b4314069bc29/name/0a293e6f-9623-4fdc-8e40-993d61105172?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Number, 4",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_642",
                  "erroneousValue": null,
                  "value": {
                    "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
                    "name": {
                      "display": "Number, 3",
                      "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                      "name": "Number, 3",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Number, 3",
                        "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                        "name": "Number, 3",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "3",
                        "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                        "name": "3",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 3",
                    "resourceVersion": "1.9"
                  },
                  "autocompleteValue": {
                    "display": "Number, 3",
                    "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                    "name": "Number, 3",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                      },
                      {
                        "rel": "full",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "disabled": false,
                  "_value": {
                    "uuid": "1cc35cb1-2dcf-49ed-8234-3d2910a08b29",
                    "name": {
                      "display": "Number, 3",
                      "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                      "name": "Number, 3",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Number, 3",
                        "uuid": "a9d72fdb-2e24-42eb-94f3-2a398c3259a2",
                        "name": "Number, 3",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/a9d72fdb-2e24-42eb-94f3-2a398c3259a2?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      {
                        "display": "3",
                        "uuid": "7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0",
                        "name": "3",
                        "locale": "en",
                        "localePreferred": false,
                        "conceptNameType": "SHORT",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/1cc35cb1-2dcf-49ed-8234-3d2910a08b29/name/7081cb03-f6fa-45bd-ab0a-d877eb2ea8c0?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Number, 3",
                    "resourceVersion": "1.9"
                  },
                  "voided": false
                }
              ],
              "isObservation": true,
              "conceptUIConfig": {
                "allowAddMore": true
              },
              "uniqueId": "observation_643",
              "erroneousValue": null,
              "voided": false
            }
          ],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_623",
          "erroneousValue": null,
          "voided": false
        },
        {
          "concept": {
            "uuid": "0fcd6a24-22dc-4020-b957-dae01b3bf97c",
            "name": "AE Form, Adverse Event Outcome and Causality",
            "dataType": "N/A"
          },
          "units": null,
          "label": "Adverse Event Outcome and Causality",
          "possibleAnswers": [],
          "groupMembers": [
            {
              "concept": {
                "uuid": "db5558f8-4252-43e7-82a7-e8077c52b92a",
                "name": "AE Form, Is AE an SAE",
                "dataType": "Boolean"
              },
              "units": null,
              "label": "Did this AE become an SAE?",
              "possibleAnswers": [],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": {
                "Baseline, Date of baseline": {
                  "required": true
                },
                "Baseline, Other Marital Status": {
                  "conciseText": true
                },
                "Baseline, Last DSTB Registration ID": {
                  "conciseText": true
                },
                "Baseline, Last DRTB Registration ID": {
                  "conciseText": true
                },
                "TI, Did the patient start treatment": {
                  "required": true
                },
                "TUBERCULOSIS DRUG TREATMENT START DATE": {
                  "required": true
                },
                "Consent scan copy": {
                  "allowAddMore": true
                },
                "Baseline, Past TB treatment table": {
                  "allowAddMore": true
                },
                "Baseline, List of drugs taken for more than a month": {
                  "multiSelect": true
                },
                "Baseline, Disease site": {
                  "multiSelect": true
                },
                "TI, Patients for whom the construction of a regimen with four likely effective second-line drugs is not possible": {
                  "multiSelect": true
                },
                "TI, Other patients who have high risk of unfavorable outcome but who do not fit the above categories": {
                  "multiSelect": true
                },
                "Estimated date of confinement": {
                  "allowFutureDates": true
                },
                "PRF, Estimated date of delivery": {
                  "allowFutureDates": true
                },
                "Baseline, Method of MDR-TB confirmation": {
                  "multiSelect": true
                },
                "Baseline, Past TB treatment drug regimen": {
                  "multiSelect": true
                },
                "Baseline, Most recent previous TB treatment registration number": {
                  "conciseText": true
                },
                "Baseline, Cancer type": {
                  "conciseText": true
                },
                "Baseline, Psychiatric illness type": {
                  "conciseText": true
                },
                "Baseline, Smear result": {
                  "conciseText": true
                },
                "Baseline, Culture result": {
                  "conciseText": true
                },
                "Baseline, Xpert MTB RIF result": {
                  "conciseText": true
                },
                "Baseline, DST results": {
                  "conciseText": true
                },
                "Baseline, Exact extrapulmonary site": {
                  "conciseText": true
                },
                "Baseline, Other drug taken for more than a month": {
                  "conciseText": true,
                  "allowAddMore": true
                },
                "Baseline, HIV program registration number": {
                  "conciseText": true
                },
                "Baseline, Drugs used in ARV treatment": {
                  "multiSelect": true
                },
                "Baseline, Other employment": {
                  "conciseText": true
                },
                "Baseline, Registration number of past TB treatment": {
                  "conciseText": true
                },
                "Baseline, Place treatment started": {
                  "conciseText": true
                },
                "Baseline, Type of heart disease": {
                  "conciseText": true
                },
                "Baseline, Other pre-existing disease": {
                  "allowAddMore": true
                },
                "Baseline, Other method of MDR-TB confirmation": {
                  "conciseText": true
                },
                "Followup Template": {
                  "allowAddMore": true
                },
                "Followup, Visit Date": {
                  "required": true
                },
                "Followup, Pregnancy form case ID number": {
                  "conciseText": true
                },
                "Followup, New serious AE reference number": {
                  "conciseText": true
                },
                "Followup, New AE reference number": {
                  "conciseText": true
                },
                "Followup, Brief Peripheral Neuropathy Screen": {
                  "isTabular": true
                },
                "Followup, Vibration Perception in Left": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Ankle reflexes in left": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Vibration Perception in Right": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Ankle reflexes in right": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Visual Acuity": {
                  "isTabular": true
                },
                "Followup, Pain Aching or Buring in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Pins and Needles in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Numbness in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Pain Aching or Buring in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Pins and Needles in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Followup, Numbness in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Visual acuity, left eye": {
                  "disableAddNotes": true
                },
                "Visual acuity, right eye": {
                  "disableAddNotes": true
                },
                "EOT, Outcome": {
                  "required": true
                },
                "EOT, Reasons for treatment interrruption": {
                  "multiSelect": true
                },
                "EOT, Reasons for failure definition": {
                  "multiSelect": true
                },
                "EOT, Type of surgery related to death": {
                  "conciseText": true
                },
                "EOT, Non TB cause of death": {
                  "conciseText": true
                },
                "EOT, Transferred to where": {
                  "conciseText": true
                },
                "6m PTO, Reasons for no post treatment followup": {
                  "multiSelect": true
                },
                "6m PTO, Type of surgery related to post treatment death": {
                  "conciseText": true
                },
                "6m PTO, Non TB cause of post treatment death": {
                  "conciseText": true
                },
                "6m PTO, Other reasons for no post treatment followup": {
                  "conciseText": true
                },
                "6m PTO, Transferred to where post treatment": {
                  "conciseText": true
                },
                "6m PTO, Other reasons for no post treatment outcome": {
                  "conciseText": true
                },
                "AE Form, Date of AE report": {
                  "required": true
                },
                "Adverse Events Template": {
                  "allowAddMore": true
                },
                "AE Form, AE term comprehensive list": {
                  "autocomplete": true,
                  "required": true
                },
                "AE Form, Other AE term": {
                  "conciseText": true
                },
                "AE Form, Related Test Result": {
                  "allowAddMore": true
                },
                "AE Form, AE related test": {
                  "autocomplete": true
                },
                "AE Form, AE related test ID": {
                  "conciseText": true
                },
                "AE Form, AE severity review": {
                  "allowAddMore": true
                },
                "AE Form, TB drug treatment": {
                  "allowAddMore": true
                },
                "AE Form, Other causal factors related to AE": {
                  "multiSelect": true
                },
                "AE Form, Non TB drug of other causal factor": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "AE Form, Comorbidity of other causal factor": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "AE Form, Other causal factor": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "AE Form, TB drug name": {
                  "dropdown": true
                },
                "Serious Adverse Events Template": {
                  "allowAddMore": true
                },
                "SAE Form, Date of SAE report": {
                  "required": true
                },
                "SAE Form, TB drug treatment": {
                  "allowAddMore": true
                },
                "SAE Form, Other causal factors related to SAE": {
                  "multiSelect": true
                },
                "SAE Form, TB drug name": {
                  "dropdown": true
                },
                "SAE Form, Related tests (data from PV unit summary)": {
                  "allowAddMore": true
                },
                "SAE Form, Related test": {
                  "autocomplete": true
                },
                "SAE Form, SAE term comprehensive AE list": {
                  "autocomplete": true,
                  "required": true
                },
                "SAE Form, SAE severity review": {
                  "allowAddMore": true
                },
                "SAE Form, Non TB drug of other causal factors": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "SAE Form, Comorbidity of other causal factors": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "SAE Form, Other causal factor": {
                  "allowAddMore": true,
                  "conciseText": true
                },
                "PRF, Partners initials": {
                  "conciseText": true
                },
                "PRF, Pregnancy report case ID": {
                  "required": false,
                  "conciseText": true
                },
                "PRF, TB drug name": {
                  "dropdown": true
                },
                "PRF, Non-TB drug name": {
                  "conciseText": true
                },
                "PRF, TB drug exposure": {
                  "allowAddMore": true
                },
                "PRF, Non-TB drug exposure": {
                  "allowAddMore": true
                },
                "PRF, Infant details": {
                  "allowAddMore": true
                },
                "HAN, Hospital admission date": {
                  "required": true
                },
                "HDS, Hospital admission date": {
                  "required": true
                },
                "HDS, Hospital discharge date": {
                  "required": true
                },
                "HDS, Principal AE/SAE ID number": {
                  "conciseText": true
                },
                "HDS, New AE/SAE ID number": {
                  "conciseText": true
                },
                "HDS, Other type of TB related surgery": {
                  "conciseText": true
                },
                "HDS, Type of TB related surgery": {
                  "multiSelect": true
                },
                "Lab, Month of scheduled visit": {
                  "conciseText": true
                },
                "Lab, Lab ID": {
                  "conciseText": true
                },
                "Lab, Sample ID": {
                  "conciseText": true
                },
                "Lab, Other test name": {
                  "conciseText": true
                },
                "Lab, Other test result": {
                  "conciseText": true
                },
                "Lab, Other test unit": {
                  "conciseText": true
                },
                "Specimen Collection Date": {
                  "required": true
                },
                "Xray Template": {
                  "allowAddMore": true
                },
                "Xray, Chest Xray Date": {
                  "required": true
                },
                "Xray, Other Radiological Tests": {
                  "allowAddMore": true
                },
                "Xray, Additional details": {
                  "isTabular": true
                },
                "Xray, Cavity left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Maximum cavity size left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Fibrosis left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Infiltrate left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Tuberculoma left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Disseminated left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Nodule left side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Pleural effusion left side": {
                  "disableAddNotes": true
                },
                "Xray, Lymphadenopathy left side": {
                  "disableAddNotes": true
                },
                "Xray, Pneumothorax left side": {
                  "disableAddNotes": true
                },
                "Xray, Cavity right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Maximum cavity size right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Fibrosis right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Infiltrate right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Tuberculoma right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Disseminated right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Nodule right side": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Xray, Pleural effusion right side": {
                  "disableAddNotes": true
                },
                "Xray, Lymphadenopathy right side": {
                  "disableAddNotes": true
                },
                "Xray, Pneumothorax right side": {
                  "disableAddNotes": true
                },
                "Audiometry, Audiometry template details": {
                  "allowAddMore": true
                },
                "Audiometry Template": {
                  "allowAddMore": true
                },
                "Audiometry, Month of scheduled visit": {
                  "conciseText": true
                },
                "Audiometry, Audiometry date": {
                  "required": true
                },
                "Audiometry, Audiometry details": {
                  "isTabular": true
                },
                "Audiometry, Left ear at 250Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 500Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 1000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 2000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 4000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 6000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Left ear at 8000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 250Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 500Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 1000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 2000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 4000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 6000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Audiometry, Right ear at 8000Hz": {
                  "disableAddNotes": true,
                  "dropdown": true
                },
                "Electrocardiogram Template": {
                  "allowAddMore": true
                },
                "EKG, Date of EKG": {
                  "required": true
                },
                "EKG, Other Rhythm": {
                  "conciseText": true
                },
                "Monthly Treatment Completeness Template": {
                  "allowAddMore": true
                },
                "MTC, Month and year of treatment period": {
                  "required": true,
                  "minYear": 2000,
                  "maxYear": 2020,
                  "allowFutureDates": true,
                  "displayMonthAndYear": true
                },
                "MTC, Other treatment delivery method": {
                  "conciseText": true
                },
                "MTC, Additional contributing reasons for less than 100% completeness": {
                  "multiSelect": true
                },
                "MTC, Additional contributing program related reasons": {
                  "multiSelect": true
                },
                "MTC, Additional contributing medical or treatment related reasons": {
                  "multiSelect": true
                },
                "MTC, Additional contributing patient related reasons": {
                  "multiSelect": true
                },
                "MTC, DOT rate details": {
                  "allowAddMore": true
                },
                "Performance Status Template": {
                  "allowAddMore": true
                },
                "Performance Status, Assessment date": {
                  "required": true
                },
                "6m PTO, 6 month post treatment outcome": {
                  "required": true
                },
                "ECOG Performance Status": {
                  "dropdown": true
                },
                "BACTERIOLOGY_SAMPLE_ID": {
                  "conciseText": true
                },
                "BACTERIOLOGY_SAMPLE_TYPE": {
                  "conciseText": true
                },
                "BACTERIOLOGY_SAMPLE_APPEARANCE": {
                  "conciseText": true
                },
                "Bacteriology, Sequencing": {
                  "allowAddMore": true
                },
                "Bacteriology, Other drug name": {
                  "conciseText": true
                },
                "Bacteriology, Other culture medium": {
                  "conciseText": true
                },
                "Bacteriology, DST with MIC drug name": {
                  "conciseText": true
                },
                "Bacteriology, MIC technique/medium": {
                  "conciseText": true
                },
                "Bacteriology, Minimum inhibitory concentration": {
                  "conciseText": true
                },
                "Bacteriology, Rifampicin result details": {
                  "isTabular": true
                },
                "Bacteriology, Other drug details": {
                  "isTabular": true,
                  "allowAddMore": true
                },
                "Baseline, Visual Acuity": {
                  "isTabular": true
                },
                "Bacteriology, DST with MIC": {
                  "isTabular": false,
                  "allowAddMore": true
                },
                "Baseline, Brief Peripheral Neuropathy Screen": {
                  "isTabular": true
                },
                "Baseline, Pain Aching or Buring in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Pins and Needles in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Numbness in Left Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Pain Aching or Buring in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Pins and Needles in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Numbness in Right Feet and Leg": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Vibration Perception in Left": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Ankle reflexes in left": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Vibration Perception in Right": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Baseline, Ankle reflexes in right": {
                  "dropdown": true,
                  "disableAddNotes": true
                },
                "Lab, Hemoglobin": {
                  "isTabular": true
                },
                "RETURN VISIT DATE": {
                  "allowFutureDates": true
                },
                "Lab, Hematocrit": {
                  "isTabular": true
                },
                "Lab, Platelet count": {
                  "isTabular": true
                },
                "Lab, RBC count": {
                  "isTabular": true
                },
                "Lab, WBC": {
                  "isTabular": true
                },
                "Lab, Absolute neutrophil count": {
                  "isTabular": true
                },
                "Lab, Neutrophils": {
                  "isTabular": true
                },
                "Lab, Potassium": {
                  "isTabular": true
                },
                "Lab, Magnesium": {
                  "isTabular": true
                },
                "Lab, Ionized Calcium": {
                  "isTabular": true
                },
                "Lab, Urea": {
                  "isTabular": true
                },
                "Lab, Creatinine": {
                  "isTabular": true
                },
                "Lab, Glucose": {
                  "isTabular": true
                },
                "Lab, Glucose (Fasting)": {
                  "isTabular": true
                },
                "Lab, HbA1c": {
                  "isTabular": true
                },
                "Lab, TSH": {
                  "isTabular": true
                },
                "Lab, Lipase": {
                  "isTabular": true
                },
                "Lab, AST (SGOT)": {
                  "isTabular": true
                },
                "Lab, ALT (SGPT)": {
                  "isTabular": true
                },
                "Lab, Total Bilirubin": {
                  "isTabular": true
                },
                "Lab, CD4 count": {
                  "isTabular": true
                },
                "Lab, Serum Albumin": {
                  "isTabular": true
                },
                "HEMATOCRIT": {
                  "disableAddNotes": true
                },
                "Platelets": {
                  "disableAddNotes": true
                },
                "RED BLOOD CELLS": {
                  "disableAddNotes": true
                },
                "WHITE BLOOD CELLS": {
                  "disableAddNotes": true
                },
                "ABSOLUTE NEUTROPHIL COUNT": {
                  "disableAddNotes": true
                },
                "Lab, Absolute neutrophil count other test result": {
                  "disableAddNotes": true
                },
                "Lab, Neutrophils test result": {
                  "disableAddNotes": true
                },
                "SERUM POTASSIUM": {
                  "disableAddNotes": true
                },
                "Lab, Magnesium test result": {
                  "disableAddNotes": true
                },
                "Lab, Ionized Calcium test result": {
                  "disableAddNotes": true
                },
                "BLOOD UREA NITROGEN": {
                  "disableAddNotes": true
                },
                "Serum creatinine (umol/L)": {
                  "disableAddNotes": true
                },
                "SERUM GLUCOSE": {
                  "disableAddNotes": true
                },
                "Fasting blood glucose measurement (mg/dL)": {
                  "disableAddNotes": true
                },
                "glycosylated hemoglobin A measurement": {
                  "disableAddNotes": true
                },
                "Thyroid stimulating hormone test": {
                  "disableAddNotes": true
                },
                "Lab, Lipase test result": {
                  "disableAddNotes": true
                },
                "SERUM GLUTAMIC-OXALOACETIC TRANSAMINASE": {
                  "disableAddNotes": true
                },
                "TOTAL BILIRUBIN": {
                  "disableAddNotes": true
                },
                "SERUM GLUTAMIC-PYRUVIC TRANSAMINASE": {
                  "disableAddNotes": true
                },
                "CD4 COUNT": {
                  "disableAddNotes": true
                },
                "Lab, CD4 count other result": {
                  "disableAddNotes": true
                },
                "HIV VIRAL LOAD": {
                  "disableAddNotes": true
                },
                "SERUM ALBUMIN": {
                  "disableAddNotes": true
                },
                "Lab, Serum Albumin other": {
                  "disableAddNotes": true
                },
                "Lab, Other test": {
                  "allowAddMore": true
                },
                "Hemoglobin": {
                  "disableAddNotes": true
                },
                "Lab, Hemoglobin g/dl": {
                  "disableAddNotes": true
                },
                "Lab, RBC with other unit": {
                  "disableAddNotes": true
                },
                "Lab, WBC other unit": {
                  "disableAddNotes": true
                },
                "Lab, Neutrophils other test result": {
                  "disableAddNotes": true
                },
                "Lab, Potassium other": {
                  "disableAddNotes": true
                },
                "Lab, Magnesium other": {
                  "disableAddNotes": true
                },
                "Lab, Ionized Calcium other": {
                  "disableAddNotes": true
                },
                "Lab, Urea other": {
                  "disableAddNotes": true
                },
                "Lab, Creatinine other": {
                  "disableAddNotes": true
                },
                "Lab, Glucose other": {
                  "disableAddNotes": true
                },
                "Lab, Glucose (Fasting) other": {
                  "disableAddNotes": true
                },
                "Lab, Total Bilirubin other": {
                  "disableAddNotes": true
                },
                "Lab Results Hemotology Template": {
                  "allowAddMore": true,
                  "hideAbnormalButton": true
                },
                "Lab Results Biochemistry Template": {
                  "allowAddMore": true,
                  "hideAbnormalButton": true
                },
                "Lab Results Serology Template": {
                  "allowAddMore": true,
                  "hideAbnormalButton": true
                },
                "Lab Results Pregnancy Template": {
                  "allowAddMore": true
                },
                "Lab Results Other Tests Template": {
                  "allowAddMore": true
                },
                "Bacteriology, Smear microscopy test results": {
                  "allowAddMore": true
                },
                "Bacteriology, Culture results details": {
                  "allowAddMore": true
                },
                "Bacteriology, DST result details": {
                  "allowAddMore": true
                },
                "Bacteriology, Xpert test results": {
                  "allowAddMore": true
                },
                "Bacteriology, Hain test/PCR results": {
                  "allowAddMore": true
                },
                "Baseline, Known Drug Allergies": {
                  "allowAddMore": true
                }
              },
              "uniqueId": "observation_624",
              "erroneousValue": null,
              "value": true,
              "isBoolean": true,
              "disabled": false,
              "error": false,
              "voided": false
            },
            {
              "concept": {
                "uuid": "057bf04f-0bad-4d78-abd8-c40ab45be102",
                "name": "AE Form, SAE Case Number",
                "dataType": "Text"
              },
              "units": null,
              "label": "If Yes, SAE Case Number",
              "possibleAnswers": [],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": [],
              "uniqueId": "observation_625",
              "erroneousValue": null,
              "value": "1234",
              "autocompleteValue": "1234",
              "disabled": false,
              "_value": "1234",
              "voided": false
            },
            {
              "concept": {
                "uuid": "de05c9da-9ac4-415b-afb9-cf65f205ae90",
                "name": "AE Form, TB drug treatment",
                "dataType": "N/A"
              },
              "units": null,
              "label": "TB Drug Treatment",
              "possibleAnswers": [],
              "groupMembers": [
                {
                  "concept": {
                    "uuid": "aea612bc-d179-49dd-a9a4-7cb4ea025b46",
                    "name": "AE Form, TB drug name",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "TB drug",
                  "possibleAnswers": [
                    {
                      "uuid": "78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Isoniazid",
                        "uuid": "71d69017-e5c3-432a-9d9c-2d0d9722b80a",
                        "name": "Isoniazid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Nydrazid",
                          "uuid": "80bb5ae9-36bf-4603-859a-d26ddf17054b",
                          "name": "Nydrazid",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/80bb5ae9-36bf-4603-859a-d26ddf17054b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/80bb5ae9-36bf-4603-859a-d26ddf17054b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Isoniazid (H)",
                          "uuid": "a4d518cf-c774-40d8-8d15-3f5818257fb5",
                          "name": "Isoniazid (H)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a4d518cf-c774-40d8-8d15-3f5818257fb5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a4d518cf-c774-40d8-8d15-3f5818257fb5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Soniazio",
                          "uuid": "bf73653f-0387-4299-8b14-1258f3fc5760",
                          "name": "Soniazio",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bf73653f-0387-4299-8b14-1258f3fc5760"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bf73653f-0387-4299-8b14-1258f3fc5760?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Isoniazid",
                          "uuid": "71d69017-e5c3-432a-9d9c-2d0d9722b80a",
                          "name": "Isoniazid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Tubizid",
                          "uuid": "3d7795c5-3498-4ea9-96a8-5aa22cb559a9",
                          "name": "Tubizid",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3d7795c5-3498-4ea9-96a8-5aa22cb559a9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3d7795c5-3498-4ea9-96a8-5aa22cb559a9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Isoniazid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Rifampicin",
                        "uuid": "22f68f6e-9274-40b7-b58b-44d676869615",
                        "name": "Rifampicin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Rifampicin (R)",
                          "uuid": "a6d9d3af-3e06-45cf-9a30-dd9d897a0178",
                          "name": "Rifampicin (R)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a6d9d3af-3e06-45cf-9a30-dd9d897a0178"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a6d9d3af-3e06-45cf-9a30-dd9d897a0178?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifadin IV",
                          "uuid": "4ef47a03-081d-4d1b-981d-632c79c0bc1e",
                          "name": "Rifadin IV",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4ef47a03-081d-4d1b-981d-632c79c0bc1e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4ef47a03-081d-4d1b-981d-632c79c0bc1e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifadin",
                          "uuid": "da1270bc-6212-4a73-bb46-613a03e863b6",
                          "name": "Rifadin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/da1270bc-6212-4a73-bb46-613a03e863b6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/da1270bc-6212-4a73-bb46-613a03e863b6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "RIFAMPIN",
                          "uuid": "4800e000-7e49-4f7e-82ec-879ad47df93a",
                          "name": "RIFAMPIN",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4800e000-7e49-4f7e-82ec-879ad47df93a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4800e000-7e49-4f7e-82ec-879ad47df93a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rimactane",
                          "uuid": "ed03dc2a-8386-4954-8460-7043327f8911",
                          "name": "Rimactane",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ed03dc2a-8386-4954-8460-7043327f8911"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ed03dc2a-8386-4954-8460-7043327f8911?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifampicin",
                          "uuid": "22f68f6e-9274-40b7-b58b-44d676869615",
                          "name": "Rifampicin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Rifampicin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Ethambutol",
                        "uuid": "8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6",
                        "name": "Ethambutol",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Ethambutol (E)",
                          "uuid": "3cbb6a25-661e-4c8a-8e9a-69b13a04d442",
                          "name": "Ethambutol (E)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3cbb6a25-661e-4c8a-8e9a-69b13a04d442"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3cbb6a25-661e-4c8a-8e9a-69b13a04d442?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Myambutol",
                          "uuid": "6f8ca0a4-0479-48ae-9979-e12caab4b7eb",
                          "name": "Myambutol",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6f8ca0a4-0479-48ae-9979-e12caab4b7eb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6f8ca0a4-0479-48ae-9979-e12caab4b7eb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethambutol",
                          "uuid": "8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6",
                          "name": "Ethambutol",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Ethambutol",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Pyrazinamide",
                        "uuid": "09dd042f-e937-4f69-a761-99ff0ea9bbc5",
                        "name": "Pyrazinamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Pyrazinamide (Z)",
                          "uuid": "ad6f6133-37e8-4c74-8470-8fc02593e715",
                          "name": "Pyrazinamide (Z)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ad6f6133-37e8-4c74-8470-8fc02593e715"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ad6f6133-37e8-4c74-8470-8fc02593e715?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Pyrazinamide",
                          "uuid": "09dd042f-e937-4f69-a761-99ff0ea9bbc5",
                          "name": "Pyrazinamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Pyrazinamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Streptomycin",
                        "uuid": "42e5c261-7ab1-4778-bcfa-fc14fd86e922",
                        "name": "Streptomycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Streptomycin",
                          "uuid": "42e5c261-7ab1-4778-bcfa-fc14fd86e922",
                          "name": "Streptomycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Streptomycin (S)",
                          "uuid": "4f196177-0c0a-4588-910a-ee62b4307bf8",
                          "name": "Streptomycin (S)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4f196177-0c0a-4588-910a-ee62b4307bf8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4f196177-0c0a-4588-910a-ee62b4307bf8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Streptomycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Amikacin",
                        "uuid": "aee4b93c-ae45-4633-bbe5-b371850f0359",
                        "name": "Amikacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Amikacin Sulfate Novaplus",
                          "uuid": "b3d86d6e-bd44-4941-b144-e9e8d67abb0a",
                          "name": "Amikacin Sulfate Novaplus",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3d86d6e-bd44-4941-b144-e9e8d67abb0a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3d86d6e-bd44-4941-b144-e9e8d67abb0a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikin",
                          "uuid": "db263b2e-56b4-4141-b0e6-458d3841525c",
                          "name": "Amikin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/db263b2e-56b4-4141-b0e6-458d3841525c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/db263b2e-56b4-4141-b0e6-458d3841525c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin (Am)",
                          "uuid": "f43e5a13-d91b-40a4-a28b-40cbfd788106",
                          "name": "Amikacin (Am)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f43e5a13-d91b-40a4-a28b-40cbfd788106"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f43e5a13-d91b-40a4-a28b-40cbfd788106?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikin Pediatric",
                          "uuid": "aef6e012-d570-42d9-b226-624d0109bb3b",
                          "name": "Amikin Pediatric",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aef6e012-d570-42d9-b226-624d0109bb3b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aef6e012-d570-42d9-b226-624d0109bb3b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin",
                          "uuid": "aee4b93c-ae45-4633-bbe5-b371850f0359",
                          "name": "Amikacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin Sulfate Pediatric Novaplus",
                          "uuid": "1966da27-7c6e-4416-8b24-c6c7cd67cd54",
                          "name": "Amikacin Sulfate Pediatric Novaplus",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1966da27-7c6e-4416-8b24-c6c7cd67cd54"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1966da27-7c6e-4416-8b24-c6c7cd67cd54?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Amikacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Kanamycin",
                        "uuid": "edfee569-0626-4fc9-9645-915d3a64540b",
                        "name": "Kanamycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Kanamycin (Km)",
                          "uuid": "afc1b4d5-e603-46fe-b394-04d821bad4d3",
                          "name": "Kanamycin (Km)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/afc1b4d5-e603-46fe-b394-04d821bad4d3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/afc1b4d5-e603-46fe-b394-04d821bad4d3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kannasyn",
                          "uuid": "9cd1f36b-77f6-4f1c-a5f5-679aa6468122",
                          "name": "Kannasyn",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cd1f36b-77f6-4f1c-a5f5-679aa6468122"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cd1f36b-77f6-4f1c-a5f5-679aa6468122?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kanamycin",
                          "uuid": "edfee569-0626-4fc9-9645-915d3a64540b",
                          "name": "Kanamycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kantrex",
                          "uuid": "98354a0c-fa1c-499d-9cf0-a85f541b7182",
                          "name": "Kantrex",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/98354a0c-fa1c-499d-9cf0-a85f541b7182"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/98354a0c-fa1c-499d-9cf0-a85f541b7182?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Kanamycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Capreomycin",
                        "uuid": "9e236b32-4f56-48b1-b095-47c0c6909e60",
                        "name": "Capreomycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Capastat",
                          "uuid": "7d70be63-57af-4b45-816f-5f0f2acfabd7",
                          "name": "Capastat",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/7d70be63-57af-4b45-816f-5f0f2acfabd7"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/7d70be63-57af-4b45-816f-5f0f2acfabd7?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Capreomycin",
                          "uuid": "9e236b32-4f56-48b1-b095-47c0c6909e60",
                          "name": "Capreomycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Capreomycin (Cm)",
                          "uuid": "fafba30f-24e1-4bd7-97c5-55ecb5b244ef",
                          "name": "Capreomycin (Cm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fafba30f-24e1-4bd7-97c5-55ecb5b244ef"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fafba30f-24e1-4bd7-97c5-55ecb5b244ef?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Capreomycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Levofloxacin",
                        "uuid": "b889d57a-0f38-4088-acb7-8199856bff45",
                        "name": "Levofloxacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Levofloxacin",
                          "uuid": "b889d57a-0f38-4088-acb7-8199856bff45",
                          "name": "Levofloxacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Levaquin",
                          "uuid": "1a933e81-9fcf-41b3-b4d8-1ea3318ceac5",
                          "name": "Levaquin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1a933e81-9fcf-41b3-b4d8-1ea3318ceac5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1a933e81-9fcf-41b3-b4d8-1ea3318ceac5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Quixin",
                          "uuid": "c9762e69-e1f3-49a7-8281-284b9bfcf9b5",
                          "name": "Quixin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9762e69-e1f3-49a7-8281-284b9bfcf9b5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9762e69-e1f3-49a7-8281-284b9bfcf9b5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Iquix",
                          "uuid": "66db03a4-bb16-472d-a1e1-159b767e0979",
                          "name": "Iquix",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/66db03a4-bb16-472d-a1e1-159b767e0979"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/66db03a4-bb16-472d-a1e1-159b767e0979?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Levofloxacin (Lfx)",
                          "uuid": "f22f4da1-5ea9-4b04-9983-85c26fd9b7ed",
                          "name": "Levofloxacin (Lfx)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f22f4da1-5ea9-4b04-9983-85c26fd9b7ed"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f22f4da1-5ea9-4b04-9983-85c26fd9b7ed?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Levofloxacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Moxifloxacin",
                        "uuid": "c7406f49-2a27-4d71-b0c2-db73930948ce",
                        "name": "Moxifloxacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Avelox",
                          "uuid": "1b59a77c-bba0-436a-82e7-db4160347191",
                          "name": "Avelox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b59a77c-bba0-436a-82e7-db4160347191"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b59a77c-bba0-436a-82e7-db4160347191?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Avelox I.V.",
                          "uuid": "ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6",
                          "name": "Avelox I.V.",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Vigamox",
                          "uuid": "3ec612e9-f7c6-4834-9e83-15904de6040c",
                          "name": "Vigamox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3ec612e9-f7c6-4834-9e83-15904de6040c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3ec612e9-f7c6-4834-9e83-15904de6040c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Moxifloxacin",
                          "uuid": "c7406f49-2a27-4d71-b0c2-db73930948ce",
                          "name": "Moxifloxacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Moxifloxacin (Mfx)",
                          "uuid": "2fce87c4-e8d0-4693-a283-9f8343e96d2f",
                          "name": "Moxifloxacin (Mfx)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2fce87c4-e8d0-4693-a283-9f8343e96d2f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2fce87c4-e8d0-4693-a283-9f8343e96d2f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Moxifloxacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Prothionamide",
                        "uuid": "fedd05cb-cc56-43b2-82c2-06bb63ad2492",
                        "name": "Prothionamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Prothionamide (Pto)",
                          "uuid": "fc9d518f-5b05-4b57-9590-fca04d3627d9",
                          "name": "Prothionamide (Pto)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fc9d518f-5b05-4b57-9590-fca04d3627d9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fc9d518f-5b05-4b57-9590-fca04d3627d9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Prothionamide",
                          "uuid": "fedd05cb-cc56-43b2-82c2-06bb63ad2492",
                          "name": "Prothionamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Prothionamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Ethionamide",
                        "uuid": "bb588667-7069-451e-8fd9-de1f831c111e",
                        "name": "Ethionamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Trecator",
                          "uuid": "58244e30-27a0-4656-a2d2-74dcc6794ba4",
                          "name": "Trecator",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/58244e30-27a0-4656-a2d2-74dcc6794ba4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/58244e30-27a0-4656-a2d2-74dcc6794ba4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethionamide",
                          "uuid": "bb588667-7069-451e-8fd9-de1f831c111e",
                          "name": "Ethionamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Trecator-SC",
                          "uuid": "1c25e7b9-6398-40e6-a5eb-a43975287747",
                          "name": "Trecator-SC",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1c25e7b9-6398-40e6-a5eb-a43975287747"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1c25e7b9-6398-40e6-a5eb-a43975287747?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethionamide (Eto)",
                          "uuid": "969739db-e01e-4064-b40a-53c7260c3ccf",
                          "name": "Ethionamide (Eto)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/969739db-e01e-4064-b40a-53c7260c3ccf"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/969739db-e01e-4064-b40a-53c7260c3ccf?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Ethionamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Cycloserine",
                        "uuid": "e324b248-ab6a-4d9b-a2a3-695391d2eb9f",
                        "name": "Cycloserine",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Cycloserine (Cs)",
                          "uuid": "c4ffc2cf-3ed8-4b30-b474-735a4a351d38",
                          "name": "Cycloserine (Cs)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c4ffc2cf-3ed8-4b30-b474-735a4a351d38"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c4ffc2cf-3ed8-4b30-b474-735a4a351d38?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Cycloserine",
                          "uuid": "e324b248-ab6a-4d9b-a2a3-695391d2eb9f",
                          "name": "Cycloserine",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Seromycin",
                          "uuid": "99029e46-3e26-4fff-bc1d-6a678588b0ca",
                          "name": "Seromycin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/99029e46-3e26-4fff-bc1d-6a678588b0ca"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/99029e46-3e26-4fff-bc1d-6a678588b0ca?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Cycloserine",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Terizidone",
                        "uuid": "2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9",
                        "name": "Terizidone",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Terizidone (Trd)",
                          "uuid": "70168bd2-d705-4e40-8a51-dde62ea121fd",
                          "name": "Terizidone (Trd)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/70168bd2-d705-4e40-8a51-dde62ea121fd"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/70168bd2-d705-4e40-8a51-dde62ea121fd?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Terizidone",
                          "uuid": "2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9",
                          "name": "Terizidone",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Terizidone",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "P-Aminosalicylic Acid",
                        "uuid": "6a7d9d09-a695-40c7-bb45-d2afca96d358",
                        "name": "P-Aminosalicylic Acid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "P-Aminosalicylic Acid",
                          "uuid": "6a7d9d09-a695-40c7-bb45-d2afca96d358",
                          "name": "P-Aminosalicylic Acid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Para-aminosalicylic acid (PAS)",
                          "uuid": "46703bed-f7f4-47be-a577-3843ad31260b",
                          "name": "Para-aminosalicylic acid (PAS)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/46703bed-f7f4-47be-a577-3843ad31260b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/46703bed-f7f4-47be-a577-3843ad31260b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "P-Aminosalicylic Acid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "P-Aminosalicylic Acid Monosodium Salt",
                        "uuid": "b72da764-2350-4b02-8d34-34dc95e4a72f",
                        "name": "P-Aminosalicylic Acid Monosodium Salt",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "P-Aminosalicylic Acid Monosodium Salt",
                          "uuid": "b72da764-2350-4b02-8d34-34dc95e4a72f",
                          "name": "P-Aminosalicylic Acid Monosodium Salt",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Para-aminosalicylic acid - sodium (PAS-Na)",
                          "uuid": "821a6e06-d968-4b97-ac3e-ef4277286a05",
                          "name": "Para-aminosalicylic acid - sodium (PAS-Na)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/821a6e06-d968-4b97-ac3e-ef4277286a05"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/821a6e06-d968-4b97-ac3e-ef4277286a05?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "P-Aminosalicylic Acid Monosodium Salt",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Bedaquiline",
                        "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                        "name": "Bedaquiline",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Bedaquiline (Bdq)",
                          "uuid": "b3a489f6-24d2-4bf6-b9b0-dc481311b869",
                          "name": "Bedaquiline (Bdq)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Bedaquiline",
                          "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                          "name": "Bedaquiline",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Bedaquiline",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Delamanid",
                        "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                        "name": "Delamanid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Delamanid",
                          "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                          "name": "Delamanid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Delamanid (Dlm)",
                          "uuid": "bbbf1e22-c518-4455-9141-933c078017a0",
                          "name": "Delamanid (Dlm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Delamanid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Linezolid",
                        "uuid": "088128a7-b040-45ab-8fb5-c2d2ee7d31c0",
                        "name": "Linezolid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Zyvox",
                          "uuid": "ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8",
                          "name": "Zyvox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Linezolid",
                          "uuid": "088128a7-b040-45ab-8fb5-c2d2ee7d31c0",
                          "name": "Linezolid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Linezolid (Lzd)",
                          "uuid": "ec892df1-909a-453a-b877-c3b13f0b7667",
                          "name": "Linezolid (Lzd)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ec892df1-909a-453a-b877-c3b13f0b7667"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ec892df1-909a-453a-b877-c3b13f0b7667?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Linezolid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Clofazimine",
                        "uuid": "3dbb380d-f8b2-4823-8e5d-a064b87e758f",
                        "name": "Clofazimine",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Clofazimine (Cfz)",
                          "uuid": "285a4925-3569-466c-b075-fa243b6b647e",
                          "name": "Clofazimine (Cfz)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/285a4925-3569-466c-b075-fa243b6b647e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/285a4925-3569-466c-b075-fa243b6b647e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Clofazimine",
                          "uuid": "3dbb380d-f8b2-4823-8e5d-a064b87e758f",
                          "name": "Clofazimine",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Lamprene",
                          "uuid": "1b76e80a-1867-4610-8d23-d24820d9f5aa",
                          "name": "Lamprene",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b76e80a-1867-4610-8d23-d24820d9f5aa"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b76e80a-1867-4610-8d23-d24820d9f5aa?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Clofazimine",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Cilastatin / Imipenem",
                        "uuid": "6c5d1eb3-df94-4e40-8dea-c1860fdfbedb",
                        "name": "Cilastatin / Imipenem",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Primaxin IM",
                          "uuid": "8dbc867f-6c73-4742-8587-0984ec2b09de",
                          "name": "Primaxin IM",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8dbc867f-6c73-4742-8587-0984ec2b09de"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8dbc867f-6c73-4742-8587-0984ec2b09de?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Primaxin IV",
                          "uuid": "69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed",
                          "name": "Primaxin IV",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Cilastatin / Imipenem",
                          "uuid": "6c5d1eb3-df94-4e40-8dea-c1860fdfbedb",
                          "name": "Cilastatin / Imipenem",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Imipenem/Cilastatin (Imp/Cln)",
                          "uuid": "2c2925f9-bf9c-4447-a124-a5ab3203010a",
                          "name": "Imipenem/Cilastatin (Imp/Cln)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2c2925f9-bf9c-4447-a124-a5ab3203010a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2c2925f9-bf9c-4447-a124-a5ab3203010a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Cilastatin / Imipenem",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Amoxicillin And Clavulanic Acid",
                        "uuid": "9cb77c02-073d-4621-9644-2e704ab499e8",
                        "name": "Amoxicillin And Clavulanic Acid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Amoxicillin/Clavulanate (Amx/Clv)",
                          "uuid": "68ca72f3-d212-423a-a057-a9722906e0fd",
                          "name": "Amoxicillin/Clavulanate (Amx/Clv)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/68ca72f3-d212-423a-a057-a9722906e0fd"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/68ca72f3-d212-423a-a057-a9722906e0fd?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmenting syrup",
                          "uuid": "c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d",
                          "name": "Augmenting syrup",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmentin Junior",
                          "uuid": "4dec1706-676d-4565-955a-f719485bb15c",
                          "name": "Augmentin Junior",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4dec1706-676d-4565-955a-f719485bb15c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4dec1706-676d-4565-955a-f719485bb15c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "AMOXICILLIN / CLAVULANATE",
                          "uuid": "f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c",
                          "name": "AMOXICILLIN / CLAVULANATE",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "AMOXICILLINE/CLAVULANATE",
                          "uuid": "330843df-9cd2-4ada-8d58-cf44e93297dc",
                          "name": "AMOXICILLINE/CLAVULANATE",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/330843df-9cd2-4ada-8d58-cf44e93297dc"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/330843df-9cd2-4ada-8d58-cf44e93297dc?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amoxicillin And Clavulanic Acid",
                          "uuid": "9cb77c02-073d-4621-9644-2e704ab499e8",
                          "name": "Amoxicillin And Clavulanic Acid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmentin",
                          "uuid": "37396d11-b006-425e-867b-7a9557957cfb",
                          "name": "Augmentin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37396d11-b006-425e-867b-7a9557957cfb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37396d11-b006-425e-867b-7a9557957cfb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Amoxicillin And Clavulanic Acid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Meropenem",
                        "uuid": "37e51a5c-4299-44a1-aa87-78f9639d4970",
                        "name": "Meropenem",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Meropenem",
                          "uuid": "37e51a5c-4299-44a1-aa87-78f9639d4970",
                          "name": "Meropenem",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Merrem",
                          "uuid": "8527f919-879e-49f9-9418-6a228d81f1d3",
                          "name": "Merrem",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8527f919-879e-49f9-9418-6a228d81f1d3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8527f919-879e-49f9-9418-6a228d81f1d3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Meropenem (Mpm)",
                          "uuid": "dc862de7-a036-438b-9fa8-61df7557d9f0",
                          "name": "Meropenem (Mpm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/dc862de7-a036-438b-9fa8-61df7557d9f0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/dc862de7-a036-438b-9fa8-61df7557d9f0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Meronem",
                          "uuid": "1f770135-3427-4366-a3af-5295096e783b",
                          "name": "Meronem",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1f770135-3427-4366-a3af-5295096e783b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1f770135-3427-4366-a3af-5295096e783b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Meropenem",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": {
                    "dropdown": true
                  },
                  "uniqueId": "observation_650",
                  "erroneousValue": null,
                  "value": {
                    "label": "Bedaquiline (Bdq)",
                    "value": "Bedaquiline (Bdq)",
                    "concept": {
                      "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": "Bedaquiline",
                      "shortName": "Bedaquiline (Bdq)",
                      "description": null,
                      "dataType": null,
                      "conceptClass": null,
                      "displayString": "Bedaquiline (Bdq)",
                      "names": [
                        {
                          "display": "Bedaquiline (Bdq)",
                          "uuid": "b3a489f6-24d2-4bf6-b9b0-dc481311b869",
                          "name": "Bedaquiline (Bdq)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Bedaquiline",
                          "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                          "name": "Bedaquiline",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ]
                    },
                    "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "name": "Bedaquiline (Bdq)"
                  },
                  "autocompleteValue": "Bedaquiline (Bdq)",
                  "disabled": false,
                  "_value": {
                    "label": "Bedaquiline (Bdq)",
                    "value": "Bedaquiline (Bdq)",
                    "concept": {
                      "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": "Bedaquiline",
                      "shortName": "Bedaquiline (Bdq)",
                      "description": null,
                      "dataType": null,
                      "conceptClass": null,
                      "displayString": "Bedaquiline (Bdq)",
                      "names": [
                        {
                          "display": "Bedaquiline (Bdq)",
                          "uuid": "b3a489f6-24d2-4bf6-b9b0-dc481311b869",
                          "name": "Bedaquiline (Bdq)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Bedaquiline",
                          "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                          "name": "Bedaquiline",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ]
                    },
                    "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "name": "Bedaquiline (Bdq)"
                  },
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "d6eb7fa5-f13f-4afb-8f34-cdb58867bcbe",
                    "name": "AE Form, Is this TB drug possibly related to AE",
                    "dataType": "Boolean"
                  },
                  "units": null,
                  "label": "TB drug: related?",
                  "possibleAnswers": [],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": {
                    "Baseline, Date of baseline": {
                      "required": true
                    },
                    "Baseline, Other Marital Status": {
                      "conciseText": true
                    },
                    "Baseline, Last DSTB Registration ID": {
                      "conciseText": true
                    },
                    "Baseline, Last DRTB Registration ID": {
                      "conciseText": true
                    },
                    "TI, Did the patient start treatment": {
                      "required": true
                    },
                    "TUBERCULOSIS DRUG TREATMENT START DATE": {
                      "required": true
                    },
                    "Consent scan copy": {
                      "allowAddMore": true
                    },
                    "Baseline, Past TB treatment table": {
                      "allowAddMore": true
                    },
                    "Baseline, List of drugs taken for more than a month": {
                      "multiSelect": true
                    },
                    "Baseline, Disease site": {
                      "multiSelect": true
                    },
                    "TI, Patients for whom the construction of a regimen with four likely effective second-line drugs is not possible": {
                      "multiSelect": true
                    },
                    "TI, Other patients who have high risk of unfavorable outcome but who do not fit the above categories": {
                      "multiSelect": true
                    },
                    "Estimated date of confinement": {
                      "allowFutureDates": true
                    },
                    "PRF, Estimated date of delivery": {
                      "allowFutureDates": true
                    },
                    "Baseline, Method of MDR-TB confirmation": {
                      "multiSelect": true
                    },
                    "Baseline, Past TB treatment drug regimen": {
                      "multiSelect": true
                    },
                    "Baseline, Most recent previous TB treatment registration number": {
                      "conciseText": true
                    },
                    "Baseline, Cancer type": {
                      "conciseText": true
                    },
                    "Baseline, Psychiatric illness type": {
                      "conciseText": true
                    },
                    "Baseline, Smear result": {
                      "conciseText": true
                    },
                    "Baseline, Culture result": {
                      "conciseText": true
                    },
                    "Baseline, Xpert MTB RIF result": {
                      "conciseText": true
                    },
                    "Baseline, DST results": {
                      "conciseText": true
                    },
                    "Baseline, Exact extrapulmonary site": {
                      "conciseText": true
                    },
                    "Baseline, Other drug taken for more than a month": {
                      "conciseText": true,
                      "allowAddMore": true
                    },
                    "Baseline, HIV program registration number": {
                      "conciseText": true
                    },
                    "Baseline, Drugs used in ARV treatment": {
                      "multiSelect": true
                    },
                    "Baseline, Other employment": {
                      "conciseText": true
                    },
                    "Baseline, Registration number of past TB treatment": {
                      "conciseText": true
                    },
                    "Baseline, Place treatment started": {
                      "conciseText": true
                    },
                    "Baseline, Type of heart disease": {
                      "conciseText": true
                    },
                    "Baseline, Other pre-existing disease": {
                      "allowAddMore": true
                    },
                    "Baseline, Other method of MDR-TB confirmation": {
                      "conciseText": true
                    },
                    "Followup Template": {
                      "allowAddMore": true
                    },
                    "Followup, Visit Date": {
                      "required": true
                    },
                    "Followup, Pregnancy form case ID number": {
                      "conciseText": true
                    },
                    "Followup, New serious AE reference number": {
                      "conciseText": true
                    },
                    "Followup, New AE reference number": {
                      "conciseText": true
                    },
                    "Followup, Brief Peripheral Neuropathy Screen": {
                      "isTabular": true
                    },
                    "Followup, Vibration Perception in Left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Ankle reflexes in left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Vibration Perception in Right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Ankle reflexes in right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Visual Acuity": {
                      "isTabular": true
                    },
                    "Followup, Pain Aching or Buring in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pins and Needles in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Numbness in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pain Aching or Buring in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pins and Needles in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Numbness in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Visual acuity, left eye": {
                      "disableAddNotes": true
                    },
                    "Visual acuity, right eye": {
                      "disableAddNotes": true
                    },
                    "EOT, Outcome": {
                      "required": true
                    },
                    "EOT, Reasons for treatment interrruption": {
                      "multiSelect": true
                    },
                    "EOT, Reasons for failure definition": {
                      "multiSelect": true
                    },
                    "EOT, Type of surgery related to death": {
                      "conciseText": true
                    },
                    "EOT, Non TB cause of death": {
                      "conciseText": true
                    },
                    "EOT, Transferred to where": {
                      "conciseText": true
                    },
                    "6m PTO, Reasons for no post treatment followup": {
                      "multiSelect": true
                    },
                    "6m PTO, Type of surgery related to post treatment death": {
                      "conciseText": true
                    },
                    "6m PTO, Non TB cause of post treatment death": {
                      "conciseText": true
                    },
                    "6m PTO, Other reasons for no post treatment followup": {
                      "conciseText": true
                    },
                    "6m PTO, Transferred to where post treatment": {
                      "conciseText": true
                    },
                    "6m PTO, Other reasons for no post treatment outcome": {
                      "conciseText": true
                    },
                    "AE Form, Date of AE report": {
                      "required": true
                    },
                    "Adverse Events Template": {
                      "allowAddMore": true
                    },
                    "AE Form, AE term comprehensive list": {
                      "autocomplete": true,
                      "required": true
                    },
                    "AE Form, Other AE term": {
                      "conciseText": true
                    },
                    "AE Form, Related Test Result": {
                      "allowAddMore": true
                    },
                    "AE Form, AE related test": {
                      "autocomplete": true
                    },
                    "AE Form, AE related test ID": {
                      "conciseText": true
                    },
                    "AE Form, AE severity review": {
                      "allowAddMore": true
                    },
                    "AE Form, TB drug treatment": {
                      "allowAddMore": true
                    },
                    "AE Form, Other causal factors related to AE": {
                      "multiSelect": true
                    },
                    "AE Form, Non TB drug of other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, Comorbidity of other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, Other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, TB drug name": {
                      "dropdown": true
                    },
                    "Serious Adverse Events Template": {
                      "allowAddMore": true
                    },
                    "SAE Form, Date of SAE report": {
                      "required": true
                    },
                    "SAE Form, TB drug treatment": {
                      "allowAddMore": true
                    },
                    "SAE Form, Other causal factors related to SAE": {
                      "multiSelect": true
                    },
                    "SAE Form, TB drug name": {
                      "dropdown": true
                    },
                    "SAE Form, Related tests (data from PV unit summary)": {
                      "allowAddMore": true
                    },
                    "SAE Form, Related test": {
                      "autocomplete": true
                    },
                    "SAE Form, SAE term comprehensive AE list": {
                      "autocomplete": true,
                      "required": true
                    },
                    "SAE Form, SAE severity review": {
                      "allowAddMore": true
                    },
                    "SAE Form, Non TB drug of other causal factors": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "SAE Form, Comorbidity of other causal factors": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "SAE Form, Other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "PRF, Partners initials": {
                      "conciseText": true
                    },
                    "PRF, Pregnancy report case ID": {
                      "required": false,
                      "conciseText": true
                    },
                    "PRF, TB drug name": {
                      "dropdown": true
                    },
                    "PRF, Non-TB drug name": {
                      "conciseText": true
                    },
                    "PRF, TB drug exposure": {
                      "allowAddMore": true
                    },
                    "PRF, Non-TB drug exposure": {
                      "allowAddMore": true
                    },
                    "PRF, Infant details": {
                      "allowAddMore": true
                    },
                    "HAN, Hospital admission date": {
                      "required": true
                    },
                    "HDS, Hospital admission date": {
                      "required": true
                    },
                    "HDS, Hospital discharge date": {
                      "required": true
                    },
                    "HDS, Principal AE/SAE ID number": {
                      "conciseText": true
                    },
                    "HDS, New AE/SAE ID number": {
                      "conciseText": true
                    },
                    "HDS, Other type of TB related surgery": {
                      "conciseText": true
                    },
                    "HDS, Type of TB related surgery": {
                      "multiSelect": true
                    },
                    "Lab, Month of scheduled visit": {
                      "conciseText": true
                    },
                    "Lab, Lab ID": {
                      "conciseText": true
                    },
                    "Lab, Sample ID": {
                      "conciseText": true
                    },
                    "Lab, Other test name": {
                      "conciseText": true
                    },
                    "Lab, Other test result": {
                      "conciseText": true
                    },
                    "Lab, Other test unit": {
                      "conciseText": true
                    },
                    "Specimen Collection Date": {
                      "required": true
                    },
                    "Xray Template": {
                      "allowAddMore": true
                    },
                    "Xray, Chest Xray Date": {
                      "required": true
                    },
                    "Xray, Other Radiological Tests": {
                      "allowAddMore": true
                    },
                    "Xray, Additional details": {
                      "isTabular": true
                    },
                    "Xray, Cavity left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Maximum cavity size left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Fibrosis left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Infiltrate left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Tuberculoma left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Disseminated left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Nodule left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Pleural effusion left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Lymphadenopathy left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Pneumothorax left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Cavity right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Maximum cavity size right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Fibrosis right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Infiltrate right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Tuberculoma right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Disseminated right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Nodule right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Pleural effusion right side": {
                      "disableAddNotes": true
                    },
                    "Xray, Lymphadenopathy right side": {
                      "disableAddNotes": true
                    },
                    "Xray, Pneumothorax right side": {
                      "disableAddNotes": true
                    },
                    "Audiometry, Audiometry template details": {
                      "allowAddMore": true
                    },
                    "Audiometry Template": {
                      "allowAddMore": true
                    },
                    "Audiometry, Month of scheduled visit": {
                      "conciseText": true
                    },
                    "Audiometry, Audiometry date": {
                      "required": true
                    },
                    "Audiometry, Audiometry details": {
                      "isTabular": true
                    },
                    "Audiometry, Left ear at 250Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 500Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 1000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 2000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 4000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 6000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 8000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 250Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 500Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 1000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 2000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 4000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 6000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 8000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Electrocardiogram Template": {
                      "allowAddMore": true
                    },
                    "EKG, Date of EKG": {
                      "required": true
                    },
                    "EKG, Other Rhythm": {
                      "conciseText": true
                    },
                    "Monthly Treatment Completeness Template": {
                      "allowAddMore": true
                    },
                    "MTC, Month and year of treatment period": {
                      "required": true,
                      "minYear": 2000,
                      "maxYear": 2020,
                      "allowFutureDates": true,
                      "displayMonthAndYear": true
                    },
                    "MTC, Other treatment delivery method": {
                      "conciseText": true
                    },
                    "MTC, Additional contributing reasons for less than 100% completeness": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing program related reasons": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing medical or treatment related reasons": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing patient related reasons": {
                      "multiSelect": true
                    },
                    "MTC, DOT rate details": {
                      "allowAddMore": true
                    },
                    "Performance Status Template": {
                      "allowAddMore": true
                    },
                    "Performance Status, Assessment date": {
                      "required": true
                    },
                    "6m PTO, 6 month post treatment outcome": {
                      "required": true
                    },
                    "ECOG Performance Status": {
                      "dropdown": true
                    },
                    "BACTERIOLOGY_SAMPLE_ID": {
                      "conciseText": true
                    },
                    "BACTERIOLOGY_SAMPLE_TYPE": {
                      "conciseText": true
                    },
                    "BACTERIOLOGY_SAMPLE_APPEARANCE": {
                      "conciseText": true
                    },
                    "Bacteriology, Sequencing": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Other drug name": {
                      "conciseText": true
                    },
                    "Bacteriology, Other culture medium": {
                      "conciseText": true
                    },
                    "Bacteriology, DST with MIC drug name": {
                      "conciseText": true
                    },
                    "Bacteriology, MIC technique/medium": {
                      "conciseText": true
                    },
                    "Bacteriology, Minimum inhibitory concentration": {
                      "conciseText": true
                    },
                    "Bacteriology, Rifampicin result details": {
                      "isTabular": true
                    },
                    "Bacteriology, Other drug details": {
                      "isTabular": true,
                      "allowAddMore": true
                    },
                    "Baseline, Visual Acuity": {
                      "isTabular": true
                    },
                    "Bacteriology, DST with MIC": {
                      "isTabular": false,
                      "allowAddMore": true
                    },
                    "Baseline, Brief Peripheral Neuropathy Screen": {
                      "isTabular": true
                    },
                    "Baseline, Pain Aching or Buring in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pins and Needles in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Numbness in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pain Aching or Buring in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pins and Needles in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Numbness in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Vibration Perception in Left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Ankle reflexes in left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Vibration Perception in Right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Ankle reflexes in right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Lab, Hemoglobin": {
                      "isTabular": true
                    },
                    "RETURN VISIT DATE": {
                      "allowFutureDates": true
                    },
                    "Lab, Hematocrit": {
                      "isTabular": true
                    },
                    "Lab, Platelet count": {
                      "isTabular": true
                    },
                    "Lab, RBC count": {
                      "isTabular": true
                    },
                    "Lab, WBC": {
                      "isTabular": true
                    },
                    "Lab, Absolute neutrophil count": {
                      "isTabular": true
                    },
                    "Lab, Neutrophils": {
                      "isTabular": true
                    },
                    "Lab, Potassium": {
                      "isTabular": true
                    },
                    "Lab, Magnesium": {
                      "isTabular": true
                    },
                    "Lab, Ionized Calcium": {
                      "isTabular": true
                    },
                    "Lab, Urea": {
                      "isTabular": true
                    },
                    "Lab, Creatinine": {
                      "isTabular": true
                    },
                    "Lab, Glucose": {
                      "isTabular": true
                    },
                    "Lab, Glucose (Fasting)": {
                      "isTabular": true
                    },
                    "Lab, HbA1c": {
                      "isTabular": true
                    },
                    "Lab, TSH": {
                      "isTabular": true
                    },
                    "Lab, Lipase": {
                      "isTabular": true
                    },
                    "Lab, AST (SGOT)": {
                      "isTabular": true
                    },
                    "Lab, ALT (SGPT)": {
                      "isTabular": true
                    },
                    "Lab, Total Bilirubin": {
                      "isTabular": true
                    },
                    "Lab, CD4 count": {
                      "isTabular": true
                    },
                    "Lab, Serum Albumin": {
                      "isTabular": true
                    },
                    "HEMATOCRIT": {
                      "disableAddNotes": true
                    },
                    "Platelets": {
                      "disableAddNotes": true
                    },
                    "RED BLOOD CELLS": {
                      "disableAddNotes": true
                    },
                    "WHITE BLOOD CELLS": {
                      "disableAddNotes": true
                    },
                    "ABSOLUTE NEUTROPHIL COUNT": {
                      "disableAddNotes": true
                    },
                    "Lab, Absolute neutrophil count other test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Neutrophils test result": {
                      "disableAddNotes": true
                    },
                    "SERUM POTASSIUM": {
                      "disableAddNotes": true
                    },
                    "Lab, Magnesium test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Ionized Calcium test result": {
                      "disableAddNotes": true
                    },
                    "BLOOD UREA NITROGEN": {
                      "disableAddNotes": true
                    },
                    "Serum creatinine (umol/L)": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUCOSE": {
                      "disableAddNotes": true
                    },
                    "Fasting blood glucose measurement (mg/dL)": {
                      "disableAddNotes": true
                    },
                    "glycosylated hemoglobin A measurement": {
                      "disableAddNotes": true
                    },
                    "Thyroid stimulating hormone test": {
                      "disableAddNotes": true
                    },
                    "Lab, Lipase test result": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUTAMIC-OXALOACETIC TRANSAMINASE": {
                      "disableAddNotes": true
                    },
                    "TOTAL BILIRUBIN": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUTAMIC-PYRUVIC TRANSAMINASE": {
                      "disableAddNotes": true
                    },
                    "CD4 COUNT": {
                      "disableAddNotes": true
                    },
                    "Lab, CD4 count other result": {
                      "disableAddNotes": true
                    },
                    "HIV VIRAL LOAD": {
                      "disableAddNotes": true
                    },
                    "SERUM ALBUMIN": {
                      "disableAddNotes": true
                    },
                    "Lab, Serum Albumin other": {
                      "disableAddNotes": true
                    },
                    "Lab, Other test": {
                      "allowAddMore": true
                    },
                    "Hemoglobin": {
                      "disableAddNotes": true
                    },
                    "Lab, Hemoglobin g/dl": {
                      "disableAddNotes": true
                    },
                    "Lab, RBC with other unit": {
                      "disableAddNotes": true
                    },
                    "Lab, WBC other unit": {
                      "disableAddNotes": true
                    },
                    "Lab, Neutrophils other test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Potassium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Magnesium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Ionized Calcium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Urea other": {
                      "disableAddNotes": true
                    },
                    "Lab, Creatinine other": {
                      "disableAddNotes": true
                    },
                    "Lab, Glucose other": {
                      "disableAddNotes": true
                    },
                    "Lab, Glucose (Fasting) other": {
                      "disableAddNotes": true
                    },
                    "Lab, Total Bilirubin other": {
                      "disableAddNotes": true
                    },
                    "Lab Results Hemotology Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Biochemistry Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Serology Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Pregnancy Template": {
                      "allowAddMore": true
                    },
                    "Lab Results Other Tests Template": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Smear microscopy test results": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Culture results details": {
                      "allowAddMore": true
                    },
                    "Bacteriology, DST result details": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Xpert test results": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Hain test/PCR results": {
                      "allowAddMore": true
                    },
                    "Baseline, Known Drug Allergies": {
                      "allowAddMore": true
                    }
                  },
                  "uniqueId": "observation_631",
                  "erroneousValue": null,
                  "value": false,
                  "isBoolean": true,
                  "uuid": null,
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "42503fbc-bbee-4159-b648-eb8acb828c63",
                    "name": "AE Form, Final action taken related to TB drug",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "TB drug : final action",
                  "possibleAnswers": [
                    {
                      "uuid": "6303f1d8-c91c-4cf2-873a-8b208f73842e",
                      "name": {
                        "display": "Dose maintained (no changes)",
                        "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                        "name": "Dose maintained (no changes)",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Dose maintained (no changes)",
                          "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                          "name": "Dose maintained (no changes)",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Dose maintained (no changes)",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "28d4d9ec-4efc-43d3-92eb-5e866bb64418",
                      "name": {
                        "display": "Dose reduced",
                        "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                        "name": "Dose reduced",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Dose reduced",
                          "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                          "name": "Dose reduced",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Dose reduced",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "e7be5b2e-5654-4268-a75c-a4dbafcf6e33",
                      "name": {
                        "display": "Drug permanently withdrawn",
                        "uuid": "5228f0d9-7568-4c70-889b-24da1bd92edf",
                        "name": "Drug permanently withdrawn",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Drug permanently withdrawn",
                          "uuid": "5228f0d9-7568-4c70-889b-24da1bd92edf",
                          "name": "Drug permanently withdrawn",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Drug permanently withdrawn",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "ca286b31-d129-4a6d-ae82-e6878b15ede9",
                      "name": {
                        "display": "Unknown",
                        "uuid": "8d4ff50f-b7b9-4bfa-a135-35104f7e15f4",
                        "name": "Unknown",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Unknown",
                          "uuid": "8d4ff50f-b7b9-4bfa-a135-35104f7e15f4",
                          "name": "Unknown",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Unknown",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_651",
                  "erroneousValue": null,
                  "value": {
                    "uuid": "28d4d9ec-4efc-43d3-92eb-5e866bb64418",
                    "name": {
                      "display": "Dose reduced",
                      "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                      "name": "Dose reduced",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Dose reduced",
                        "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                        "name": "Dose reduced",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Dose reduced",
                    "resourceVersion": "1.9"
                  },
                  "autocompleteValue": {
                    "display": "Dose reduced",
                    "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                    "name": "Dose reduced",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                      },
                      {
                        "rel": "full",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "disabled": false,
                  "_value": {
                    "uuid": "28d4d9ec-4efc-43d3-92eb-5e866bb64418",
                    "name": {
                      "display": "Dose reduced",
                      "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                      "name": "Dose reduced",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Dose reduced",
                        "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                        "name": "Dose reduced",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Dose reduced",
                    "resourceVersion": "1.9"
                  },
                  "voided": false
                }
              ],
              "isObservation": true,
              "conceptUIConfig": {
                "allowAddMore": true
              },
              "uniqueId": "observation_652",
              "erroneousValue": null,
              "voided": false
            },
            {
              "concept": {
                "uuid": "de05c9da-9ac4-415b-afb9-cf65f205ae90",
                "name": "AE Form, TB drug treatment",
                "dataType": "N/A"
              },
              "units": null,
              "label": "TB Drug Treatment",
              "possibleAnswers": [],
              "groupMembers": [
                {
                  "concept": {
                    "uuid": "aea612bc-d179-49dd-a9a4-7cb4ea025b46",
                    "name": "AE Form, TB drug name",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "TB drug",
                  "possibleAnswers": [
                    {
                      "uuid": "78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Isoniazid",
                        "uuid": "71d69017-e5c3-432a-9d9c-2d0d9722b80a",
                        "name": "Isoniazid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Nydrazid",
                          "uuid": "80bb5ae9-36bf-4603-859a-d26ddf17054b",
                          "name": "Nydrazid",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/80bb5ae9-36bf-4603-859a-d26ddf17054b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/80bb5ae9-36bf-4603-859a-d26ddf17054b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Isoniazid (H)",
                          "uuid": "a4d518cf-c774-40d8-8d15-3f5818257fb5",
                          "name": "Isoniazid (H)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a4d518cf-c774-40d8-8d15-3f5818257fb5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a4d518cf-c774-40d8-8d15-3f5818257fb5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Soniazio",
                          "uuid": "bf73653f-0387-4299-8b14-1258f3fc5760",
                          "name": "Soniazio",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bf73653f-0387-4299-8b14-1258f3fc5760"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bf73653f-0387-4299-8b14-1258f3fc5760?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Isoniazid",
                          "uuid": "71d69017-e5c3-432a-9d9c-2d0d9722b80a",
                          "name": "Isoniazid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/71d69017-e5c3-432a-9d9c-2d0d9722b80a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Tubizid",
                          "uuid": "3d7795c5-3498-4ea9-96a8-5aa22cb559a9",
                          "name": "Tubizid",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3d7795c5-3498-4ea9-96a8-5aa22cb559a9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78280AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3d7795c5-3498-4ea9-96a8-5aa22cb559a9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Isoniazid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Rifampicin",
                        "uuid": "22f68f6e-9274-40b7-b58b-44d676869615",
                        "name": "Rifampicin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Rifampicin (R)",
                          "uuid": "a6d9d3af-3e06-45cf-9a30-dd9d897a0178",
                          "name": "Rifampicin (R)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a6d9d3af-3e06-45cf-9a30-dd9d897a0178"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/a6d9d3af-3e06-45cf-9a30-dd9d897a0178?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifadin IV",
                          "uuid": "4ef47a03-081d-4d1b-981d-632c79c0bc1e",
                          "name": "Rifadin IV",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4ef47a03-081d-4d1b-981d-632c79c0bc1e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4ef47a03-081d-4d1b-981d-632c79c0bc1e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifadin",
                          "uuid": "da1270bc-6212-4a73-bb46-613a03e863b6",
                          "name": "Rifadin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/da1270bc-6212-4a73-bb46-613a03e863b6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/da1270bc-6212-4a73-bb46-613a03e863b6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "RIFAMPIN",
                          "uuid": "4800e000-7e49-4f7e-82ec-879ad47df93a",
                          "name": "RIFAMPIN",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4800e000-7e49-4f7e-82ec-879ad47df93a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4800e000-7e49-4f7e-82ec-879ad47df93a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rimactane",
                          "uuid": "ed03dc2a-8386-4954-8460-7043327f8911",
                          "name": "Rimactane",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ed03dc2a-8386-4954-8460-7043327f8911"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ed03dc2a-8386-4954-8460-7043327f8911?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Rifampicin",
                          "uuid": "22f68f6e-9274-40b7-b58b-44d676869615",
                          "name": "Rifampicin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/767AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/22f68f6e-9274-40b7-b58b-44d676869615?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Rifampicin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Ethambutol",
                        "uuid": "8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6",
                        "name": "Ethambutol",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Ethambutol (E)",
                          "uuid": "3cbb6a25-661e-4c8a-8e9a-69b13a04d442",
                          "name": "Ethambutol (E)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3cbb6a25-661e-4c8a-8e9a-69b13a04d442"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3cbb6a25-661e-4c8a-8e9a-69b13a04d442?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Myambutol",
                          "uuid": "6f8ca0a4-0479-48ae-9979-e12caab4b7eb",
                          "name": "Myambutol",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6f8ca0a4-0479-48ae-9979-e12caab4b7eb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6f8ca0a4-0479-48ae-9979-e12caab4b7eb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethambutol",
                          "uuid": "8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6",
                          "name": "Ethambutol",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75948AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8d393f3a-61a2-4bf8-9b4e-ad6a52b44bd6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Ethambutol",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Pyrazinamide",
                        "uuid": "09dd042f-e937-4f69-a761-99ff0ea9bbc5",
                        "name": "Pyrazinamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Pyrazinamide (Z)",
                          "uuid": "ad6f6133-37e8-4c74-8470-8fc02593e715",
                          "name": "Pyrazinamide (Z)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ad6f6133-37e8-4c74-8470-8fc02593e715"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ad6f6133-37e8-4c74-8470-8fc02593e715?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Pyrazinamide",
                          "uuid": "09dd042f-e937-4f69-a761-99ff0ea9bbc5",
                          "name": "Pyrazinamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82900AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/09dd042f-e937-4f69-a761-99ff0ea9bbc5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Pyrazinamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Streptomycin",
                        "uuid": "42e5c261-7ab1-4778-bcfa-fc14fd86e922",
                        "name": "Streptomycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Streptomycin",
                          "uuid": "42e5c261-7ab1-4778-bcfa-fc14fd86e922",
                          "name": "Streptomycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/42e5c261-7ab1-4778-bcfa-fc14fd86e922?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Streptomycin (S)",
                          "uuid": "4f196177-0c0a-4588-910a-ee62b4307bf8",
                          "name": "Streptomycin (S)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4f196177-0c0a-4588-910a-ee62b4307bf8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84360AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4f196177-0c0a-4588-910a-ee62b4307bf8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Streptomycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Amikacin",
                        "uuid": "aee4b93c-ae45-4633-bbe5-b371850f0359",
                        "name": "Amikacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Amikacin Sulfate Novaplus",
                          "uuid": "b3d86d6e-bd44-4941-b144-e9e8d67abb0a",
                          "name": "Amikacin Sulfate Novaplus",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3d86d6e-bd44-4941-b144-e9e8d67abb0a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3d86d6e-bd44-4941-b144-e9e8d67abb0a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikin",
                          "uuid": "db263b2e-56b4-4141-b0e6-458d3841525c",
                          "name": "Amikin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/db263b2e-56b4-4141-b0e6-458d3841525c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/db263b2e-56b4-4141-b0e6-458d3841525c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin (Am)",
                          "uuid": "f43e5a13-d91b-40a4-a28b-40cbfd788106",
                          "name": "Amikacin (Am)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f43e5a13-d91b-40a4-a28b-40cbfd788106"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f43e5a13-d91b-40a4-a28b-40cbfd788106?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikin Pediatric",
                          "uuid": "aef6e012-d570-42d9-b226-624d0109bb3b",
                          "name": "Amikin Pediatric",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aef6e012-d570-42d9-b226-624d0109bb3b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aef6e012-d570-42d9-b226-624d0109bb3b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin",
                          "uuid": "aee4b93c-ae45-4633-bbe5-b371850f0359",
                          "name": "Amikacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/aee4b93c-ae45-4633-bbe5-b371850f0359?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amikacin Sulfate Pediatric Novaplus",
                          "uuid": "1966da27-7c6e-4416-8b24-c6c7cd67cd54",
                          "name": "Amikacin Sulfate Pediatric Novaplus",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1966da27-7c6e-4416-8b24-c6c7cd67cd54"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/71060AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1966da27-7c6e-4416-8b24-c6c7cd67cd54?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Amikacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Kanamycin",
                        "uuid": "edfee569-0626-4fc9-9645-915d3a64540b",
                        "name": "Kanamycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Kanamycin (Km)",
                          "uuid": "afc1b4d5-e603-46fe-b394-04d821bad4d3",
                          "name": "Kanamycin (Km)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/afc1b4d5-e603-46fe-b394-04d821bad4d3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/afc1b4d5-e603-46fe-b394-04d821bad4d3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kannasyn",
                          "uuid": "9cd1f36b-77f6-4f1c-a5f5-679aa6468122",
                          "name": "Kannasyn",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cd1f36b-77f6-4f1c-a5f5-679aa6468122"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cd1f36b-77f6-4f1c-a5f5-679aa6468122?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kanamycin",
                          "uuid": "edfee569-0626-4fc9-9645-915d3a64540b",
                          "name": "Kanamycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/edfee569-0626-4fc9-9645-915d3a64540b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Kantrex",
                          "uuid": "98354a0c-fa1c-499d-9cf0-a85f541b7182",
                          "name": "Kantrex",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/98354a0c-fa1c-499d-9cf0-a85f541b7182"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78385AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/98354a0c-fa1c-499d-9cf0-a85f541b7182?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Kanamycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Capreomycin",
                        "uuid": "9e236b32-4f56-48b1-b095-47c0c6909e60",
                        "name": "Capreomycin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Capastat",
                          "uuid": "7d70be63-57af-4b45-816f-5f0f2acfabd7",
                          "name": "Capastat",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/7d70be63-57af-4b45-816f-5f0f2acfabd7"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/7d70be63-57af-4b45-816f-5f0f2acfabd7?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Capreomycin",
                          "uuid": "9e236b32-4f56-48b1-b095-47c0c6909e60",
                          "name": "Capreomycin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9e236b32-4f56-48b1-b095-47c0c6909e60?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Capreomycin (Cm)",
                          "uuid": "fafba30f-24e1-4bd7-97c5-55ecb5b244ef",
                          "name": "Capreomycin (Cm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fafba30f-24e1-4bd7-97c5-55ecb5b244ef"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/72794AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fafba30f-24e1-4bd7-97c5-55ecb5b244ef?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Capreomycin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Levofloxacin",
                        "uuid": "b889d57a-0f38-4088-acb7-8199856bff45",
                        "name": "Levofloxacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Levofloxacin",
                          "uuid": "b889d57a-0f38-4088-acb7-8199856bff45",
                          "name": "Levofloxacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b889d57a-0f38-4088-acb7-8199856bff45?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Levaquin",
                          "uuid": "1a933e81-9fcf-41b3-b4d8-1ea3318ceac5",
                          "name": "Levaquin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1a933e81-9fcf-41b3-b4d8-1ea3318ceac5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1a933e81-9fcf-41b3-b4d8-1ea3318ceac5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Quixin",
                          "uuid": "c9762e69-e1f3-49a7-8281-284b9bfcf9b5",
                          "name": "Quixin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9762e69-e1f3-49a7-8281-284b9bfcf9b5"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9762e69-e1f3-49a7-8281-284b9bfcf9b5?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Iquix",
                          "uuid": "66db03a4-bb16-472d-a1e1-159b767e0979",
                          "name": "Iquix",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/66db03a4-bb16-472d-a1e1-159b767e0979"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/66db03a4-bb16-472d-a1e1-159b767e0979?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Levofloxacin (Lfx)",
                          "uuid": "f22f4da1-5ea9-4b04-9983-85c26fd9b7ed",
                          "name": "Levofloxacin (Lfx)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f22f4da1-5ea9-4b04-9983-85c26fd9b7ed"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78788AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f22f4da1-5ea9-4b04-9983-85c26fd9b7ed?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Levofloxacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Moxifloxacin",
                        "uuid": "c7406f49-2a27-4d71-b0c2-db73930948ce",
                        "name": "Moxifloxacin",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Avelox",
                          "uuid": "1b59a77c-bba0-436a-82e7-db4160347191",
                          "name": "Avelox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b59a77c-bba0-436a-82e7-db4160347191"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b59a77c-bba0-436a-82e7-db4160347191?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Avelox I.V.",
                          "uuid": "ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6",
                          "name": "Avelox I.V.",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ecad27a6-4f5f-4b4a-bf3f-b45e08ea4fa6?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Vigamox",
                          "uuid": "3ec612e9-f7c6-4834-9e83-15904de6040c",
                          "name": "Vigamox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3ec612e9-f7c6-4834-9e83-15904de6040c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3ec612e9-f7c6-4834-9e83-15904de6040c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Moxifloxacin",
                          "uuid": "c7406f49-2a27-4d71-b0c2-db73930948ce",
                          "name": "Moxifloxacin",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c7406f49-2a27-4d71-b0c2-db73930948ce?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Moxifloxacin (Mfx)",
                          "uuid": "2fce87c4-e8d0-4693-a283-9f8343e96d2f",
                          "name": "Moxifloxacin (Mfx)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2fce87c4-e8d0-4693-a283-9f8343e96d2f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/80133AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2fce87c4-e8d0-4693-a283-9f8343e96d2f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Moxifloxacin",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Prothionamide",
                        "uuid": "fedd05cb-cc56-43b2-82c2-06bb63ad2492",
                        "name": "Prothionamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Prothionamide (Pto)",
                          "uuid": "fc9d518f-5b05-4b57-9590-fca04d3627d9",
                          "name": "Prothionamide (Pto)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fc9d518f-5b05-4b57-9590-fca04d3627d9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fc9d518f-5b05-4b57-9590-fca04d3627d9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Prothionamide",
                          "uuid": "fedd05cb-cc56-43b2-82c2-06bb63ad2492",
                          "name": "Prothionamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/82772AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/fedd05cb-cc56-43b2-82c2-06bb63ad2492?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Prothionamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Ethionamide",
                        "uuid": "bb588667-7069-451e-8fd9-de1f831c111e",
                        "name": "Ethionamide",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Trecator",
                          "uuid": "58244e30-27a0-4656-a2d2-74dcc6794ba4",
                          "name": "Trecator",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/58244e30-27a0-4656-a2d2-74dcc6794ba4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/58244e30-27a0-4656-a2d2-74dcc6794ba4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethionamide",
                          "uuid": "bb588667-7069-451e-8fd9-de1f831c111e",
                          "name": "Ethionamide",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bb588667-7069-451e-8fd9-de1f831c111e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Trecator-SC",
                          "uuid": "1c25e7b9-6398-40e6-a5eb-a43975287747",
                          "name": "Trecator-SC",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1c25e7b9-6398-40e6-a5eb-a43975287747"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1c25e7b9-6398-40e6-a5eb-a43975287747?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Ethionamide (Eto)",
                          "uuid": "969739db-e01e-4064-b40a-53c7260c3ccf",
                          "name": "Ethionamide (Eto)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/969739db-e01e-4064-b40a-53c7260c3ccf"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/75976AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/969739db-e01e-4064-b40a-53c7260c3ccf?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Ethionamide",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Cycloserine",
                        "uuid": "e324b248-ab6a-4d9b-a2a3-695391d2eb9f",
                        "name": "Cycloserine",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Cycloserine (Cs)",
                          "uuid": "c4ffc2cf-3ed8-4b30-b474-735a4a351d38",
                          "name": "Cycloserine (Cs)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c4ffc2cf-3ed8-4b30-b474-735a4a351d38"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c4ffc2cf-3ed8-4b30-b474-735a4a351d38?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Cycloserine",
                          "uuid": "e324b248-ab6a-4d9b-a2a3-695391d2eb9f",
                          "name": "Cycloserine",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e324b248-ab6a-4d9b-a2a3-695391d2eb9f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Seromycin",
                          "uuid": "99029e46-3e26-4fff-bc1d-6a678588b0ca",
                          "name": "Seromycin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/99029e46-3e26-4fff-bc1d-6a678588b0ca"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/74123AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/99029e46-3e26-4fff-bc1d-6a678588b0ca?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Cycloserine",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Terizidone",
                        "uuid": "2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9",
                        "name": "Terizidone",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Terizidone (Trd)",
                          "uuid": "70168bd2-d705-4e40-8a51-dde62ea121fd",
                          "name": "Terizidone (Trd)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/70168bd2-d705-4e40-8a51-dde62ea121fd"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/70168bd2-d705-4e40-8a51-dde62ea121fd?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Terizidone",
                          "uuid": "2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9",
                          "name": "Terizidone",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/84836AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2d07d1a6-6391-4b8e-aac8-ecdae4cedfa9?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Terizidone",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "P-Aminosalicylic Acid",
                        "uuid": "6a7d9d09-a695-40c7-bb45-d2afca96d358",
                        "name": "P-Aminosalicylic Acid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "P-Aminosalicylic Acid",
                          "uuid": "6a7d9d09-a695-40c7-bb45-d2afca96d358",
                          "name": "P-Aminosalicylic Acid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6a7d9d09-a695-40c7-bb45-d2afca96d358?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Para-aminosalicylic acid (PAS)",
                          "uuid": "46703bed-f7f4-47be-a577-3843ad31260b",
                          "name": "Para-aminosalicylic acid (PAS)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/46703bed-f7f4-47be-a577-3843ad31260b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81457AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/46703bed-f7f4-47be-a577-3843ad31260b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "P-Aminosalicylic Acid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "P-Aminosalicylic Acid Monosodium Salt",
                        "uuid": "b72da764-2350-4b02-8d34-34dc95e4a72f",
                        "name": "P-Aminosalicylic Acid Monosodium Salt",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "P-Aminosalicylic Acid Monosodium Salt",
                          "uuid": "b72da764-2350-4b02-8d34-34dc95e4a72f",
                          "name": "P-Aminosalicylic Acid Monosodium Salt",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b72da764-2350-4b02-8d34-34dc95e4a72f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Para-aminosalicylic acid - sodium (PAS-Na)",
                          "uuid": "821a6e06-d968-4b97-ac3e-ef4277286a05",
                          "name": "Para-aminosalicylic acid - sodium (PAS-Na)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/821a6e06-d968-4b97-ac3e-ef4277286a05"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/81458AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/821a6e06-d968-4b97-ac3e-ef4277286a05?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "P-Aminosalicylic Acid Monosodium Salt",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Bedaquiline",
                        "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                        "name": "Bedaquiline",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Bedaquiline (Bdq)",
                          "uuid": "b3a489f6-24d2-4bf6-b9b0-dc481311b869",
                          "name": "Bedaquiline (Bdq)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/b3a489f6-24d2-4bf6-b9b0-dc481311b869?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Bedaquiline",
                          "uuid": "9c2ab8f6-e56b-4421-b8c6-35a1ed7de704",
                          "name": "Bedaquiline",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163143AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9c2ab8f6-e56b-4421-b8c6-35a1ed7de704?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Bedaquiline",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Delamanid",
                        "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                        "name": "Delamanid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Delamanid",
                          "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                          "name": "Delamanid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Delamanid (Dlm)",
                          "uuid": "bbbf1e22-c518-4455-9141-933c078017a0",
                          "name": "Delamanid (Dlm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Delamanid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Linezolid",
                        "uuid": "088128a7-b040-45ab-8fb5-c2d2ee7d31c0",
                        "name": "Linezolid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Zyvox",
                          "uuid": "ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8",
                          "name": "Zyvox",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ef4a1cbd-8ad4-43e1-85ee-f5d3b97b06b8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Linezolid",
                          "uuid": "088128a7-b040-45ab-8fb5-c2d2ee7d31c0",
                          "name": "Linezolid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/088128a7-b040-45ab-8fb5-c2d2ee7d31c0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Linezolid (Lzd)",
                          "uuid": "ec892df1-909a-453a-b877-c3b13f0b7667",
                          "name": "Linezolid (Lzd)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ec892df1-909a-453a-b877-c3b13f0b7667"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/78879AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/ec892df1-909a-453a-b877-c3b13f0b7667?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Linezolid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Clofazimine",
                        "uuid": "3dbb380d-f8b2-4823-8e5d-a064b87e758f",
                        "name": "Clofazimine",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Clofazimine (Cfz)",
                          "uuid": "285a4925-3569-466c-b075-fa243b6b647e",
                          "name": "Clofazimine (Cfz)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/285a4925-3569-466c-b075-fa243b6b647e"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/285a4925-3569-466c-b075-fa243b6b647e?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Clofazimine",
                          "uuid": "3dbb380d-f8b2-4823-8e5d-a064b87e758f",
                          "name": "Clofazimine",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/3dbb380d-f8b2-4823-8e5d-a064b87e758f?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Lamprene",
                          "uuid": "1b76e80a-1867-4610-8d23-d24820d9f5aa",
                          "name": "Lamprene",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b76e80a-1867-4610-8d23-d24820d9f5aa"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/73581AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1b76e80a-1867-4610-8d23-d24820d9f5aa?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Clofazimine",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Cilastatin / Imipenem",
                        "uuid": "6c5d1eb3-df94-4e40-8dea-c1860fdfbedb",
                        "name": "Cilastatin / Imipenem",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Primaxin IM",
                          "uuid": "8dbc867f-6c73-4742-8587-0984ec2b09de",
                          "name": "Primaxin IM",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8dbc867f-6c73-4742-8587-0984ec2b09de"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8dbc867f-6c73-4742-8587-0984ec2b09de?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Primaxin IV",
                          "uuid": "69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed",
                          "name": "Primaxin IV",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/69b89df3-0fd8-4ecb-ac42-12d3d9fac0ed?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Cilastatin / Imipenem",
                          "uuid": "6c5d1eb3-df94-4e40-8dea-c1860fdfbedb",
                          "name": "Cilastatin / Imipenem",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/6c5d1eb3-df94-4e40-8dea-c1860fdfbedb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Imipenem/Cilastatin (Imp/Cln)",
                          "uuid": "2c2925f9-bf9c-4447-a124-a5ab3203010a",
                          "name": "Imipenem/Cilastatin (Imp/Cln)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2c2925f9-bf9c-4447-a124-a5ab3203010a"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/104315AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/2c2925f9-bf9c-4447-a124-a5ab3203010a?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Cilastatin / Imipenem",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Amoxicillin And Clavulanic Acid",
                        "uuid": "9cb77c02-073d-4621-9644-2e704ab499e8",
                        "name": "Amoxicillin And Clavulanic Acid",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Amoxicillin/Clavulanate (Amx/Clv)",
                          "uuid": "68ca72f3-d212-423a-a057-a9722906e0fd",
                          "name": "Amoxicillin/Clavulanate (Amx/Clv)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/68ca72f3-d212-423a-a057-a9722906e0fd"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/68ca72f3-d212-423a-a057-a9722906e0fd?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmenting syrup",
                          "uuid": "c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d",
                          "name": "Augmenting syrup",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/c9d575d3-fd86-4b26-8d3b-b0ebec1eba4d?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmentin Junior",
                          "uuid": "4dec1706-676d-4565-955a-f719485bb15c",
                          "name": "Augmentin Junior",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4dec1706-676d-4565-955a-f719485bb15c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/4dec1706-676d-4565-955a-f719485bb15c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "AMOXICILLIN / CLAVULANATE",
                          "uuid": "f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c",
                          "name": "AMOXICILLIN / CLAVULANATE",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/f356ab8f-99d1-4569-a0ac-ffe5ee5ee22c?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "AMOXICILLINE/CLAVULANATE",
                          "uuid": "330843df-9cd2-4ada-8d58-cf44e93297dc",
                          "name": "AMOXICILLINE/CLAVULANATE",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/330843df-9cd2-4ada-8d58-cf44e93297dc"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/330843df-9cd2-4ada-8d58-cf44e93297dc?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Amoxicillin And Clavulanic Acid",
                          "uuid": "9cb77c02-073d-4621-9644-2e704ab499e8",
                          "name": "Amoxicillin And Clavulanic Acid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/9cb77c02-073d-4621-9644-2e704ab499e8?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Augmentin",
                          "uuid": "37396d11-b006-425e-867b-7a9557957cfb",
                          "name": "Augmentin",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37396d11-b006-425e-867b-7a9557957cfb"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/450AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37396d11-b006-425e-867b-7a9557957cfb?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Amoxicillin And Clavulanic Acid",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": {
                        "display": "Meropenem",
                        "uuid": "37e51a5c-4299-44a1-aa87-78f9639d4970",
                        "name": "Meropenem",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Meropenem",
                          "uuid": "37e51a5c-4299-44a1-aa87-78f9639d4970",
                          "name": "Meropenem",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/37e51a5c-4299-44a1-aa87-78f9639d4970?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Merrem",
                          "uuid": "8527f919-879e-49f9-9418-6a228d81f1d3",
                          "name": "Merrem",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8527f919-879e-49f9-9418-6a228d81f1d3"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/8527f919-879e-49f9-9418-6a228d81f1d3?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Meropenem (Mpm)",
                          "uuid": "dc862de7-a036-438b-9fa8-61df7557d9f0",
                          "name": "Meropenem (Mpm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/dc862de7-a036-438b-9fa8-61df7557d9f0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/dc862de7-a036-438b-9fa8-61df7557d9f0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Meronem",
                          "uuid": "1f770135-3427-4366-a3af-5295096e783b",
                          "name": "Meronem",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": null,
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1f770135-3427-4366-a3af-5295096e783b"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/79611AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/1f770135-3427-4366-a3af-5295096e783b?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Meropenem",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": {
                    "dropdown": true
                  },
                  "uniqueId": "observation_647",
                  "erroneousValue": null,
                  "value": {
                    "label": "Delamanid (Dlm)",
                    "value": "Delamanid (Dlm)",
                    "concept": {
                      "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": "Delamanid",
                      "shortName": "Delamanid (Dlm)",
                      "description": null,
                      "dataType": null,
                      "conceptClass": null,
                      "displayString": "Delamanid (Dlm)",
                      "names": [
                        {
                          "display": "Delamanid",
                          "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                          "name": "Delamanid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Delamanid (Dlm)",
                          "uuid": "bbbf1e22-c518-4455-9141-933c078017a0",
                          "name": "Delamanid (Dlm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ]
                    },
                    "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "name": "Delamanid (Dlm)"
                  },
                  "autocompleteValue": "Delamanid (Dlm)",
                  "disabled": false,
                  "_value": {
                    "label": "Delamanid (Dlm)",
                    "value": "Delamanid (Dlm)",
                    "concept": {
                      "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                      "name": "Delamanid",
                      "shortName": "Delamanid (Dlm)",
                      "description": null,
                      "dataType": null,
                      "conceptClass": null,
                      "displayString": "Delamanid (Dlm)",
                      "names": [
                        {
                          "display": "Delamanid",
                          "uuid": "e09d6de4-1a28-4fa5-9e9c-7265f4d64699",
                          "name": "Delamanid",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/e09d6de4-1a28-4fa5-9e9c-7265f4d64699?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        },
                        {
                          "display": "Delamanid (Dlm)",
                          "uuid": "bbbf1e22-c518-4455-9141-933c078017a0",
                          "name": "Delamanid (Dlm)",
                          "locale": "en",
                          "localePreferred": false,
                          "conceptNameType": "SHORT",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/name/bbbf1e22-c518-4455-9141-933c078017a0?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ]
                    },
                    "uuid": "163144AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "name": "Delamanid (Dlm)"
                  },
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "d6eb7fa5-f13f-4afb-8f34-cdb58867bcbe",
                    "name": "AE Form, Is this TB drug possibly related to AE",
                    "dataType": "Boolean"
                  },
                  "units": null,
                  "label": "TB drug: related?",
                  "possibleAnswers": [],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": {
                    "Baseline, Date of baseline": {
                      "required": true
                    },
                    "Baseline, Other Marital Status": {
                      "conciseText": true
                    },
                    "Baseline, Last DSTB Registration ID": {
                      "conciseText": true
                    },
                    "Baseline, Last DRTB Registration ID": {
                      "conciseText": true
                    },
                    "TI, Did the patient start treatment": {
                      "required": true
                    },
                    "TUBERCULOSIS DRUG TREATMENT START DATE": {
                      "required": true
                    },
                    "Consent scan copy": {
                      "allowAddMore": true
                    },
                    "Baseline, Past TB treatment table": {
                      "allowAddMore": true
                    },
                    "Baseline, List of drugs taken for more than a month": {
                      "multiSelect": true
                    },
                    "Baseline, Disease site": {
                      "multiSelect": true
                    },
                    "TI, Patients for whom the construction of a regimen with four likely effective second-line drugs is not possible": {
                      "multiSelect": true
                    },
                    "TI, Other patients who have high risk of unfavorable outcome but who do not fit the above categories": {
                      "multiSelect": true
                    },
                    "Estimated date of confinement": {
                      "allowFutureDates": true
                    },
                    "PRF, Estimated date of delivery": {
                      "allowFutureDates": true
                    },
                    "Baseline, Method of MDR-TB confirmation": {
                      "multiSelect": true
                    },
                    "Baseline, Past TB treatment drug regimen": {
                      "multiSelect": true
                    },
                    "Baseline, Most recent previous TB treatment registration number": {
                      "conciseText": true
                    },
                    "Baseline, Cancer type": {
                      "conciseText": true
                    },
                    "Baseline, Psychiatric illness type": {
                      "conciseText": true
                    },
                    "Baseline, Smear result": {
                      "conciseText": true
                    },
                    "Baseline, Culture result": {
                      "conciseText": true
                    },
                    "Baseline, Xpert MTB RIF result": {
                      "conciseText": true
                    },
                    "Baseline, DST results": {
                      "conciseText": true
                    },
                    "Baseline, Exact extrapulmonary site": {
                      "conciseText": true
                    },
                    "Baseline, Other drug taken for more than a month": {
                      "conciseText": true,
                      "allowAddMore": true
                    },
                    "Baseline, HIV program registration number": {
                      "conciseText": true
                    },
                    "Baseline, Drugs used in ARV treatment": {
                      "multiSelect": true
                    },
                    "Baseline, Other employment": {
                      "conciseText": true
                    },
                    "Baseline, Registration number of past TB treatment": {
                      "conciseText": true
                    },
                    "Baseline, Place treatment started": {
                      "conciseText": true
                    },
                    "Baseline, Type of heart disease": {
                      "conciseText": true
                    },
                    "Baseline, Other pre-existing disease": {
                      "allowAddMore": true
                    },
                    "Baseline, Other method of MDR-TB confirmation": {
                      "conciseText": true
                    },
                    "Followup Template": {
                      "allowAddMore": true
                    },
                    "Followup, Visit Date": {
                      "required": true
                    },
                    "Followup, Pregnancy form case ID number": {
                      "conciseText": true
                    },
                    "Followup, New serious AE reference number": {
                      "conciseText": true
                    },
                    "Followup, New AE reference number": {
                      "conciseText": true
                    },
                    "Followup, Brief Peripheral Neuropathy Screen": {
                      "isTabular": true
                    },
                    "Followup, Vibration Perception in Left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Ankle reflexes in left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Vibration Perception in Right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Ankle reflexes in right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Visual Acuity": {
                      "isTabular": true
                    },
                    "Followup, Pain Aching or Buring in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pins and Needles in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Numbness in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pain Aching or Buring in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Pins and Needles in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Followup, Numbness in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Visual acuity, left eye": {
                      "disableAddNotes": true
                    },
                    "Visual acuity, right eye": {
                      "disableAddNotes": true
                    },
                    "EOT, Outcome": {
                      "required": true
                    },
                    "EOT, Reasons for treatment interrruption": {
                      "multiSelect": true
                    },
                    "EOT, Reasons for failure definition": {
                      "multiSelect": true
                    },
                    "EOT, Type of surgery related to death": {
                      "conciseText": true
                    },
                    "EOT, Non TB cause of death": {
                      "conciseText": true
                    },
                    "EOT, Transferred to where": {
                      "conciseText": true
                    },
                    "6m PTO, Reasons for no post treatment followup": {
                      "multiSelect": true
                    },
                    "6m PTO, Type of surgery related to post treatment death": {
                      "conciseText": true
                    },
                    "6m PTO, Non TB cause of post treatment death": {
                      "conciseText": true
                    },
                    "6m PTO, Other reasons for no post treatment followup": {
                      "conciseText": true
                    },
                    "6m PTO, Transferred to where post treatment": {
                      "conciseText": true
                    },
                    "6m PTO, Other reasons for no post treatment outcome": {
                      "conciseText": true
                    },
                    "AE Form, Date of AE report": {
                      "required": true
                    },
                    "Adverse Events Template": {
                      "allowAddMore": true
                    },
                    "AE Form, AE term comprehensive list": {
                      "autocomplete": true,
                      "required": true
                    },
                    "AE Form, Other AE term": {
                      "conciseText": true
                    },
                    "AE Form, Related Test Result": {
                      "allowAddMore": true
                    },
                    "AE Form, AE related test": {
                      "autocomplete": true
                    },
                    "AE Form, AE related test ID": {
                      "conciseText": true
                    },
                    "AE Form, AE severity review": {
                      "allowAddMore": true
                    },
                    "AE Form, TB drug treatment": {
                      "allowAddMore": true
                    },
                    "AE Form, Other causal factors related to AE": {
                      "multiSelect": true
                    },
                    "AE Form, Non TB drug of other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, Comorbidity of other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, Other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "AE Form, TB drug name": {
                      "dropdown": true
                    },
                    "Serious Adverse Events Template": {
                      "allowAddMore": true
                    },
                    "SAE Form, Date of SAE report": {
                      "required": true
                    },
                    "SAE Form, TB drug treatment": {
                      "allowAddMore": true
                    },
                    "SAE Form, Other causal factors related to SAE": {
                      "multiSelect": true
                    },
                    "SAE Form, TB drug name": {
                      "dropdown": true
                    },
                    "SAE Form, Related tests (data from PV unit summary)": {
                      "allowAddMore": true
                    },
                    "SAE Form, Related test": {
                      "autocomplete": true
                    },
                    "SAE Form, SAE term comprehensive AE list": {
                      "autocomplete": true,
                      "required": true
                    },
                    "SAE Form, SAE severity review": {
                      "allowAddMore": true
                    },
                    "SAE Form, Non TB drug of other causal factors": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "SAE Form, Comorbidity of other causal factors": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "SAE Form, Other causal factor": {
                      "allowAddMore": true,
                      "conciseText": true
                    },
                    "PRF, Partners initials": {
                      "conciseText": true
                    },
                    "PRF, Pregnancy report case ID": {
                      "required": false,
                      "conciseText": true
                    },
                    "PRF, TB drug name": {
                      "dropdown": true
                    },
                    "PRF, Non-TB drug name": {
                      "conciseText": true
                    },
                    "PRF, TB drug exposure": {
                      "allowAddMore": true
                    },
                    "PRF, Non-TB drug exposure": {
                      "allowAddMore": true
                    },
                    "PRF, Infant details": {
                      "allowAddMore": true
                    },
                    "HAN, Hospital admission date": {
                      "required": true
                    },
                    "HDS, Hospital admission date": {
                      "required": true
                    },
                    "HDS, Hospital discharge date": {
                      "required": true
                    },
                    "HDS, Principal AE/SAE ID number": {
                      "conciseText": true
                    },
                    "HDS, New AE/SAE ID number": {
                      "conciseText": true
                    },
                    "HDS, Other type of TB related surgery": {
                      "conciseText": true
                    },
                    "HDS, Type of TB related surgery": {
                      "multiSelect": true
                    },
                    "Lab, Month of scheduled visit": {
                      "conciseText": true
                    },
                    "Lab, Lab ID": {
                      "conciseText": true
                    },
                    "Lab, Sample ID": {
                      "conciseText": true
                    },
                    "Lab, Other test name": {
                      "conciseText": true
                    },
                    "Lab, Other test result": {
                      "conciseText": true
                    },
                    "Lab, Other test unit": {
                      "conciseText": true
                    },
                    "Specimen Collection Date": {
                      "required": true
                    },
                    "Xray Template": {
                      "allowAddMore": true
                    },
                    "Xray, Chest Xray Date": {
                      "required": true
                    },
                    "Xray, Other Radiological Tests": {
                      "allowAddMore": true
                    },
                    "Xray, Additional details": {
                      "isTabular": true
                    },
                    "Xray, Cavity left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Maximum cavity size left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Fibrosis left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Infiltrate left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Tuberculoma left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Disseminated left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Nodule left side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Pleural effusion left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Lymphadenopathy left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Pneumothorax left side": {
                      "disableAddNotes": true
                    },
                    "Xray, Cavity right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Maximum cavity size right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Fibrosis right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Infiltrate right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Tuberculoma right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Disseminated right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Nodule right side": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Xray, Pleural effusion right side": {
                      "disableAddNotes": true
                    },
                    "Xray, Lymphadenopathy right side": {
                      "disableAddNotes": true
                    },
                    "Xray, Pneumothorax right side": {
                      "disableAddNotes": true
                    },
                    "Audiometry, Audiometry template details": {
                      "allowAddMore": true
                    },
                    "Audiometry Template": {
                      "allowAddMore": true
                    },
                    "Audiometry, Month of scheduled visit": {
                      "conciseText": true
                    },
                    "Audiometry, Audiometry date": {
                      "required": true
                    },
                    "Audiometry, Audiometry details": {
                      "isTabular": true
                    },
                    "Audiometry, Left ear at 250Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 500Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 1000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 2000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 4000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 6000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Left ear at 8000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 250Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 500Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 1000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 2000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 4000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 6000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Audiometry, Right ear at 8000Hz": {
                      "disableAddNotes": true,
                      "dropdown": true
                    },
                    "Electrocardiogram Template": {
                      "allowAddMore": true
                    },
                    "EKG, Date of EKG": {
                      "required": true
                    },
                    "EKG, Other Rhythm": {
                      "conciseText": true
                    },
                    "Monthly Treatment Completeness Template": {
                      "allowAddMore": true
                    },
                    "MTC, Month and year of treatment period": {
                      "required": true,
                      "minYear": 2000,
                      "maxYear": 2020,
                      "allowFutureDates": true,
                      "displayMonthAndYear": true
                    },
                    "MTC, Other treatment delivery method": {
                      "conciseText": true
                    },
                    "MTC, Additional contributing reasons for less than 100% completeness": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing program related reasons": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing medical or treatment related reasons": {
                      "multiSelect": true
                    },
                    "MTC, Additional contributing patient related reasons": {
                      "multiSelect": true
                    },
                    "MTC, DOT rate details": {
                      "allowAddMore": true
                    },
                    "Performance Status Template": {
                      "allowAddMore": true
                    },
                    "Performance Status, Assessment date": {
                      "required": true
                    },
                    "6m PTO, 6 month post treatment outcome": {
                      "required": true
                    },
                    "ECOG Performance Status": {
                      "dropdown": true
                    },
                    "BACTERIOLOGY_SAMPLE_ID": {
                      "conciseText": true
                    },
                    "BACTERIOLOGY_SAMPLE_TYPE": {
                      "conciseText": true
                    },
                    "BACTERIOLOGY_SAMPLE_APPEARANCE": {
                      "conciseText": true
                    },
                    "Bacteriology, Sequencing": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Other drug name": {
                      "conciseText": true
                    },
                    "Bacteriology, Other culture medium": {
                      "conciseText": true
                    },
                    "Bacteriology, DST with MIC drug name": {
                      "conciseText": true
                    },
                    "Bacteriology, MIC technique/medium": {
                      "conciseText": true
                    },
                    "Bacteriology, Minimum inhibitory concentration": {
                      "conciseText": true
                    },
                    "Bacteriology, Rifampicin result details": {
                      "isTabular": true
                    },
                    "Bacteriology, Other drug details": {
                      "isTabular": true,
                      "allowAddMore": true
                    },
                    "Baseline, Visual Acuity": {
                      "isTabular": true
                    },
                    "Bacteriology, DST with MIC": {
                      "isTabular": false,
                      "allowAddMore": true
                    },
                    "Baseline, Brief Peripheral Neuropathy Screen": {
                      "isTabular": true
                    },
                    "Baseline, Pain Aching or Buring in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pins and Needles in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Numbness in Left Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pain Aching or Buring in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Pins and Needles in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Numbness in Right Feet and Leg": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Vibration Perception in Left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Ankle reflexes in left": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Vibration Perception in Right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Baseline, Ankle reflexes in right": {
                      "dropdown": true,
                      "disableAddNotes": true
                    },
                    "Lab, Hemoglobin": {
                      "isTabular": true
                    },
                    "RETURN VISIT DATE": {
                      "allowFutureDates": true
                    },
                    "Lab, Hematocrit": {
                      "isTabular": true
                    },
                    "Lab, Platelet count": {
                      "isTabular": true
                    },
                    "Lab, RBC count": {
                      "isTabular": true
                    },
                    "Lab, WBC": {
                      "isTabular": true
                    },
                    "Lab, Absolute neutrophil count": {
                      "isTabular": true
                    },
                    "Lab, Neutrophils": {
                      "isTabular": true
                    },
                    "Lab, Potassium": {
                      "isTabular": true
                    },
                    "Lab, Magnesium": {
                      "isTabular": true
                    },
                    "Lab, Ionized Calcium": {
                      "isTabular": true
                    },
                    "Lab, Urea": {
                      "isTabular": true
                    },
                    "Lab, Creatinine": {
                      "isTabular": true
                    },
                    "Lab, Glucose": {
                      "isTabular": true
                    },
                    "Lab, Glucose (Fasting)": {
                      "isTabular": true
                    },
                    "Lab, HbA1c": {
                      "isTabular": true
                    },
                    "Lab, TSH": {
                      "isTabular": true
                    },
                    "Lab, Lipase": {
                      "isTabular": true
                    },
                    "Lab, AST (SGOT)": {
                      "isTabular": true
                    },
                    "Lab, ALT (SGPT)": {
                      "isTabular": true
                    },
                    "Lab, Total Bilirubin": {
                      "isTabular": true
                    },
                    "Lab, CD4 count": {
                      "isTabular": true
                    },
                    "Lab, Serum Albumin": {
                      "isTabular": true
                    },
                    "HEMATOCRIT": {
                      "disableAddNotes": true
                    },
                    "Platelets": {
                      "disableAddNotes": true
                    },
                    "RED BLOOD CELLS": {
                      "disableAddNotes": true
                    },
                    "WHITE BLOOD CELLS": {
                      "disableAddNotes": true
                    },
                    "ABSOLUTE NEUTROPHIL COUNT": {
                      "disableAddNotes": true
                    },
                    "Lab, Absolute neutrophil count other test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Neutrophils test result": {
                      "disableAddNotes": true
                    },
                    "SERUM POTASSIUM": {
                      "disableAddNotes": true
                    },
                    "Lab, Magnesium test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Ionized Calcium test result": {
                      "disableAddNotes": true
                    },
                    "BLOOD UREA NITROGEN": {
                      "disableAddNotes": true
                    },
                    "Serum creatinine (umol/L)": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUCOSE": {
                      "disableAddNotes": true
                    },
                    "Fasting blood glucose measurement (mg/dL)": {
                      "disableAddNotes": true
                    },
                    "glycosylated hemoglobin A measurement": {
                      "disableAddNotes": true
                    },
                    "Thyroid stimulating hormone test": {
                      "disableAddNotes": true
                    },
                    "Lab, Lipase test result": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUTAMIC-OXALOACETIC TRANSAMINASE": {
                      "disableAddNotes": true
                    },
                    "TOTAL BILIRUBIN": {
                      "disableAddNotes": true
                    },
                    "SERUM GLUTAMIC-PYRUVIC TRANSAMINASE": {
                      "disableAddNotes": true
                    },
                    "CD4 COUNT": {
                      "disableAddNotes": true
                    },
                    "Lab, CD4 count other result": {
                      "disableAddNotes": true
                    },
                    "HIV VIRAL LOAD": {
                      "disableAddNotes": true
                    },
                    "SERUM ALBUMIN": {
                      "disableAddNotes": true
                    },
                    "Lab, Serum Albumin other": {
                      "disableAddNotes": true
                    },
                    "Lab, Other test": {
                      "allowAddMore": true
                    },
                    "Hemoglobin": {
                      "disableAddNotes": true
                    },
                    "Lab, Hemoglobin g/dl": {
                      "disableAddNotes": true
                    },
                    "Lab, RBC with other unit": {
                      "disableAddNotes": true
                    },
                    "Lab, WBC other unit": {
                      "disableAddNotes": true
                    },
                    "Lab, Neutrophils other test result": {
                      "disableAddNotes": true
                    },
                    "Lab, Potassium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Magnesium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Ionized Calcium other": {
                      "disableAddNotes": true
                    },
                    "Lab, Urea other": {
                      "disableAddNotes": true
                    },
                    "Lab, Creatinine other": {
                      "disableAddNotes": true
                    },
                    "Lab, Glucose other": {
                      "disableAddNotes": true
                    },
                    "Lab, Glucose (Fasting) other": {
                      "disableAddNotes": true
                    },
                    "Lab, Total Bilirubin other": {
                      "disableAddNotes": true
                    },
                    "Lab Results Hemotology Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Biochemistry Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Serology Template": {
                      "allowAddMore": true,
                      "hideAbnormalButton": true
                    },
                    "Lab Results Pregnancy Template": {
                      "allowAddMore": true
                    },
                    "Lab Results Other Tests Template": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Smear microscopy test results": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Culture results details": {
                      "allowAddMore": true
                    },
                    "Bacteriology, DST result details": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Xpert test results": {
                      "allowAddMore": true
                    },
                    "Bacteriology, Hain test/PCR results": {
                      "allowAddMore": true
                    },
                    "Baseline, Known Drug Allergies": {
                      "allowAddMore": true
                    }
                  },
                  "uniqueId": "observation_631",
                  "erroneousValue": null,
                  "value": true,
                  "isBoolean": true,
                  "uuid": null,
                  "voided": false
                },
                {
                  "concept": {
                    "uuid": "42503fbc-bbee-4159-b648-eb8acb828c63",
                    "name": "AE Form, Final action taken related to TB drug",
                    "dataType": "Coded"
                  },
                  "units": null,
                  "label": "TB drug : final action",
                  "possibleAnswers": [
                    {
                      "uuid": "6303f1d8-c91c-4cf2-873a-8b208f73842e",
                      "name": {
                        "display": "Dose maintained (no changes)",
                        "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                        "name": "Dose maintained (no changes)",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Dose maintained (no changes)",
                          "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                          "name": "Dose maintained (no changes)",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Dose maintained (no changes)",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "28d4d9ec-4efc-43d3-92eb-5e866bb64418",
                      "name": {
                        "display": "Dose reduced",
                        "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                        "name": "Dose reduced",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Dose reduced",
                          "uuid": "26e66a9b-18bb-4da4-b667-5bcb2355a6fe",
                          "name": "Dose reduced",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/28d4d9ec-4efc-43d3-92eb-5e866bb64418/name/26e66a9b-18bb-4da4-b667-5bcb2355a6fe?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Dose reduced",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "e7be5b2e-5654-4268-a75c-a4dbafcf6e33",
                      "name": {
                        "display": "Drug permanently withdrawn",
                        "uuid": "5228f0d9-7568-4c70-889b-24da1bd92edf",
                        "name": "Drug permanently withdrawn",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Drug permanently withdrawn",
                          "uuid": "5228f0d9-7568-4c70-889b-24da1bd92edf",
                          "name": "Drug permanently withdrawn",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/e7be5b2e-5654-4268-a75c-a4dbafcf6e33/name/5228f0d9-7568-4c70-889b-24da1bd92edf?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Drug permanently withdrawn",
                      "resourceVersion": "1.9"
                    },
                    {
                      "uuid": "ca286b31-d129-4a6d-ae82-e6878b15ede9",
                      "name": {
                        "display": "Unknown",
                        "uuid": "8d4ff50f-b7b9-4bfa-a135-35104f7e15f4",
                        "name": "Unknown",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      },
                      "names": [
                        {
                          "display": "Unknown",
                          "uuid": "8d4ff50f-b7b9-4bfa-a135-35104f7e15f4",
                          "name": "Unknown",
                          "locale": "en",
                          "localePreferred": true,
                          "conceptNameType": "FULLY_SPECIFIED",
                          "links": [
                            {
                              "rel": "self",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4"
                            },
                            {
                              "rel": "full",
                              "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/ca286b31-d129-4a6d-ae82-e6878b15ede9/name/8d4ff50f-b7b9-4bfa-a135-35104f7e15f4?v=full"
                            }
                          ],
                          "resourceVersion": "1.9"
                        }
                      ],
                      "displayString": "Unknown",
                      "resourceVersion": "1.9"
                    }
                  ],
                  "groupMembers": [],
                  "isObservation": true,
                  "conceptUIConfig": [],
                  "uniqueId": "observation_648",
                  "erroneousValue": null,
                  "value": {
                    "uuid": "6303f1d8-c91c-4cf2-873a-8b208f73842e",
                    "name": {
                      "display": "Dose maintained (no changes)",
                      "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                      "name": "Dose maintained (no changes)",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Dose maintained (no changes)",
                        "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                        "name": "Dose maintained (no changes)",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Dose maintained (no changes)",
                    "resourceVersion": "1.9"
                  },
                  "autocompleteValue": {
                    "display": "Dose maintained (no changes)",
                    "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                    "name": "Dose maintained (no changes)",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                      },
                      {
                        "rel": "full",
                        "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "disabled": false,
                  "_value": {
                    "uuid": "6303f1d8-c91c-4cf2-873a-8b208f73842e",
                    "name": {
                      "display": "Dose maintained (no changes)",
                      "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                      "name": "Dose maintained (no changes)",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                        },
                        {
                          "rel": "full",
                          "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    },
                    "names": [
                      {
                        "display": "Dose maintained (no changes)",
                        "uuid": "216950a6-d466-4980-816b-7a225b16eca4",
                        "name": "Dose maintained (no changes)",
                        "locale": "en",
                        "localePreferred": true,
                        "conceptNameType": "FULLY_SPECIFIED",
                        "links": [
                          {
                            "rel": "self",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4"
                          },
                          {
                            "rel": "full",
                            "uri": "http://172.18.2.35/openmrs/ws/rest/v1/concept/6303f1d8-c91c-4cf2-873a-8b208f73842e/name/216950a6-d466-4980-816b-7a225b16eca4?v=full"
                          }
                        ],
                        "resourceVersion": "1.9"
                      }
                    ],
                    "displayString": "Dose maintained (no changes)",
                    "resourceVersion": "1.9"
                  },
                  "voided": false
                }
              ],
              "isObservation": true,
              "conceptUIConfig": {
                "allowAddMore": true
              },
              "uniqueId": "observation_649",
              "erroneousValue": null,
              "voided": false
            }
          ],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_639",
          "erroneousValue": null,
          "voided": false
        }
      ],
      "comment": null,
      "isObservation": true,
      "conceptUIConfig": {
        "allowAddMore": true
      },
      "uniqueId": "observation_640",
      "erroneousValue": null,
      "conceptSetName": "Adverse Events Template",
      "voided": false
    }
  ],
  "encounterTypeUuid": "22dffad3-1a3c-4fc2-8207-a48086675e02"
}
