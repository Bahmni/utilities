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
        "uuid": "dc4178cf-7f96-4378-b1fc-e39f31d80811",
        "name": "Treatment Initiation Template",
        "dataType": "N/A"
      },
      "units": null,
      "label": "Treatment Initiation",
      "possibleAnswers": [],
      "groupMembers": [
        {
          "concept": {
            "uuid": "d670fc9b-83cd-4e7f-ad41-0b5656c0f870",
            "name": "TI, Treatment initiation details",
            "dataType": "N/A"
          },
          "units": null,
          "label": "Treatment Initiation",
          "possibleAnswers": [],
          "groupMembers": [
            {
              "concept": {
                "uuid": "6ed59490-264a-447c-acf7-e06db4129c3c",
                "name": "TI, Did the patient start treatment",
                "dataType": "Boolean"
              },
              "units": null,
              "label": "Start treatment?",
              "possibleAnswers": [],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "uniqueId": "observation_39",
              "erroneousValue": null,
              "value": true,
              "isBoolean": true,
              "disabled": false,
              "error": false,
              "voided": false
            },
            {
              "concept": {
                "uuid": "1113AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                "name": "TUBERCULOSIS DRUG TREATMENT START DATE",
                "dataType": "Date"
              },
              "units": null,
              "label": "Treatment start date",
              "possibleAnswers": [],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": {
                "required": true
              },
              "uniqueId": "observation_40",
              "erroneousValue": null,
              "value": "2016-06-15",
              "autocompleteValue": "2016-06-15",
              "disabled": false,
              "_value": "2016-06-15",
              "voided": false
            },
            {
              "concept": {
                "uuid": "c35e626a-f9eb-401c-a7a6-e8a74bbb8837",
                "name": "TI, Treatment facility at start",
                "dataType": "Coded"
              },
              "units": null,
              "label": "Treatment facility at start",
              "possibleAnswers": [
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
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
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
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Other",
                  "resourceVersion": "1.9"
                }
              ],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": [],
              "uniqueId": "observation_41",
              "erroneousValue": null,
              "value": {
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
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
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
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "Other",
                "resourceVersion": "1.9"
              },
              "autocompleteValue": {
                "display": "Other",
                "uuid": "143bcaa3-ea44-4baf-9a5d-336b95d50c1b",
                "name": "Other",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                  },
                  {
                    "rel": "full",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "disabled": false,
              "_value": {
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
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
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
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/b31c6dab-b80f-413c-946d-29fa3f79fa3d/name/143bcaa3-ea44-4baf-9a5d-336b95d50c1b?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "Other",
                "resourceVersion": "1.9"
              },
              "voided": false
            },
            {
              "concept": {
                "uuid": "1fd668d4-a9ed-44df-ae9a-0bbe04516aef",
                "name": "TI, Type of treatment regimen",
                "dataType": "Coded"
              },
              "units": null,
              "label": "Type of regimen",
              "possibleAnswers": [
                {
                  "uuid": "504e1a94-e371-4656-af71-0747fc6f1f35",
                  "name": {
                    "display": "Not defined",
                    "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                    "name": "Not defined",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "Not defined",
                      "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                      "name": "Not defined",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Not defined",
                  "resourceVersion": "1.9"
                },
                {
                  "uuid": "5cc18104-2dcf-4923-9170-81a6f47d0820",
                  "name": {
                    "display": "Only 1st line drugs",
                    "uuid": "d3d9ad80-f538-4f56-957c-a5d475c7d538",
                    "name": "Only 1st line drugs",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/5cc18104-2dcf-4923-9170-81a6f47d0820/name/d3d9ad80-f538-4f56-957c-a5d475c7d538"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/5cc18104-2dcf-4923-9170-81a6f47d0820/name/d3d9ad80-f538-4f56-957c-a5d475c7d538?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "Only 1st line drugs",
                      "uuid": "d3d9ad80-f538-4f56-957c-a5d475c7d538",
                      "name": "Only 1st line drugs",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/5cc18104-2dcf-4923-9170-81a6f47d0820/name/d3d9ad80-f538-4f56-957c-a5d475c7d538"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/5cc18104-2dcf-4923-9170-81a6f47d0820/name/d3d9ad80-f538-4f56-957c-a5d475c7d538?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Only 1st line drugs",
                  "resourceVersion": "1.9"
                },
                {
                  "uuid": "881d083f-c30e-418c-b451-a59e12715898",
                  "name": {
                    "display": "Regimen including 2nd line drugs",
                    "uuid": "b8c597a5-4d34-42f0-9006-12944e6856d9",
                    "name": "Regimen including 2nd line drugs",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/881d083f-c30e-418c-b451-a59e12715898/name/b8c597a5-4d34-42f0-9006-12944e6856d9"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/881d083f-c30e-418c-b451-a59e12715898/name/b8c597a5-4d34-42f0-9006-12944e6856d9?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "Regimen including 2nd line drugs",
                      "uuid": "b8c597a5-4d34-42f0-9006-12944e6856d9",
                      "name": "Regimen including 2nd line drugs",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/881d083f-c30e-418c-b451-a59e12715898/name/b8c597a5-4d34-42f0-9006-12944e6856d9"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/881d083f-c30e-418c-b451-a59e12715898/name/b8c597a5-4d34-42f0-9006-12944e6856d9?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Regimen including 2nd line drugs",
                  "resourceVersion": "1.9"
                }
              ],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": [],
              "uniqueId": "observation_42",
              "erroneousValue": null,
              "value": {
                "uuid": "504e1a94-e371-4656-af71-0747fc6f1f35",
                "name": {
                  "display": "Not defined",
                  "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                  "name": "Not defined",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                "names": [
                  {
                    "display": "Not defined",
                    "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                    "name": "Not defined",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "Not defined",
                "resourceVersion": "1.9"
              },
              "autocompleteValue": {
                "display": "Not defined",
                "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                "name": "Not defined",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                  },
                  {
                    "rel": "full",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "disabled": false,
              "error": false,
              "_value": {
                "uuid": "504e1a94-e371-4656-af71-0747fc6f1f35",
                "name": {
                  "display": "Not defined",
                  "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                  "name": "Not defined",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                "names": [
                  {
                    "display": "Not defined",
                    "uuid": "ef48d116-0f15-4924-98d7-dc2fd5e04e3c",
                    "name": "Not defined",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/504e1a94-e371-4656-af71-0747fc6f1f35/name/ef48d116-0f15-4924-98d7-dc2fd5e04e3c?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "Not defined",
                "resourceVersion": "1.9"
              },
              "voided": false
            },
            {
              "concept": {
                "uuid": "9408be14-a7af-42cd-b241-61f0bf66657f",
                "name": "TI, Reason for next assessment",
                "dataType": "Coded"
              },
              "units": null,
              "label": "Reason for next visit",
              "possibleAnswers": [
                {
                  "uuid": "a169d2db-f8f1-4fa8-a415-593a443b53bf",
                  "name": {
                    "display": "2 week assessment",
                    "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                    "name": "2 week assessment",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "2 week assessment",
                      "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                      "name": "2 week assessment",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "2 week assessment",
                  "resourceVersion": "1.9"
                },
                {
                  "uuid": "af95de08-c15a-45ca-be33-581065103f3d",
                  "name": {
                    "display": "Planned monthly assessment",
                    "uuid": "43b471cd-af01-459b-8d15-940e88b2c776",
                    "name": "Planned monthly assessment",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/af95de08-c15a-45ca-be33-581065103f3d/name/43b471cd-af01-459b-8d15-940e88b2c776"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/af95de08-c15a-45ca-be33-581065103f3d/name/43b471cd-af01-459b-8d15-940e88b2c776?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "Planned monthly assessment",
                      "uuid": "43b471cd-af01-459b-8d15-940e88b2c776",
                      "name": "Planned monthly assessment",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/af95de08-c15a-45ca-be33-581065103f3d/name/43b471cd-af01-459b-8d15-940e88b2c776"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/af95de08-c15a-45ca-be33-581065103f3d/name/43b471cd-af01-459b-8d15-940e88b2c776?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Planned monthly assessment",
                  "resourceVersion": "1.9"
                },
                {
                  "uuid": "d8f48e06-25b8-4029-bb94-65c720090cb5",
                  "name": {
                    "display": "Other assessment",
                    "uuid": "d52426cf-57af-44ae-a023-547df87cfedb",
                    "name": "Other assessment",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/d8f48e06-25b8-4029-bb94-65c720090cb5/name/d52426cf-57af-44ae-a023-547df87cfedb"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/d8f48e06-25b8-4029-bb94-65c720090cb5/name/d52426cf-57af-44ae-a023-547df87cfedb?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  },
                  "names": [
                    {
                      "display": "Other assessment",
                      "uuid": "d52426cf-57af-44ae-a023-547df87cfedb",
                      "name": "Other assessment",
                      "locale": "en",
                      "localePreferred": true,
                      "conceptNameType": "FULLY_SPECIFIED",
                      "links": [
                        {
                          "rel": "self",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/d8f48e06-25b8-4029-bb94-65c720090cb5/name/d52426cf-57af-44ae-a023-547df87cfedb"
                        },
                        {
                          "rel": "full",
                          "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/d8f48e06-25b8-4029-bb94-65c720090cb5/name/d52426cf-57af-44ae-a023-547df87cfedb?v=full"
                        }
                      ],
                      "resourceVersion": "1.9"
                    }
                  ],
                  "displayString": "Other assessment",
                  "resourceVersion": "1.9"
                }
              ],
              "groupMembers": [],
              "comment": null,
              "isObservation": true,
              "conceptUIConfig": [],
              "uniqueId": "observation_48",
              "erroneousValue": null,
              "value": {
                "uuid": "a169d2db-f8f1-4fa8-a415-593a443b53bf",
                "name": {
                  "display": "2 week assessment",
                  "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                  "name": "2 week assessment",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                "names": [
                  {
                    "display": "2 week assessment",
                    "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                    "name": "2 week assessment",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "2 week assessment",
                "resourceVersion": "1.9"
              },
              "autocompleteValue": {
                "display": "2 week assessment",
                "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                "name": "2 week assessment",
                "locale": "en",
                "localePreferred": true,
                "conceptNameType": "FULLY_SPECIFIED",
                "links": [
                  {
                    "rel": "self",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                  },
                  {
                    "rel": "full",
                    "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                  }
                ],
                "resourceVersion": "1.9"
              },
              "disabled": false,
              "_value": {
                "uuid": "a169d2db-f8f1-4fa8-a415-593a443b53bf",
                "name": {
                  "display": "2 week assessment",
                  "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                  "name": "2 week assessment",
                  "locale": "en",
                  "localePreferred": true,
                  "conceptNameType": "FULLY_SPECIFIED",
                  "links": [
                    {
                      "rel": "self",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                    },
                    {
                      "rel": "full",
                      "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                    }
                  ],
                  "resourceVersion": "1.9"
                },
                "names": [
                  {
                    "display": "2 week assessment",
                    "uuid": "cd68ac2b-403b-4dfd-8eff-4707cb52d3bc",
                    "name": "2 week assessment",
                    "locale": "en",
                    "localePreferred": true,
                    "conceptNameType": "FULLY_SPECIFIED",
                    "links": [
                      {
                        "rel": "self",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc"
                      },
                      {
                        "rel": "full",
                        "uri": "http://192.168.33.10/openmrs/ws/rest/v1/concept/a169d2db-f8f1-4fa8-a415-593a443b53bf/name/cd68ac2b-403b-4dfd-8eff-4707cb52d3bc?v=full"
                      }
                    ],
                    "resourceVersion": "1.9"
                  }
                ],
                "displayString": "2 week assessment",
                "resourceVersion": "1.9"
              },
              "voided": false
            }
          ],
          "comment": null,
          "isObservation": true,
          "conceptUIConfig": [],
          "uniqueId": "observation_50",
          "erroneousValue": null,
          "voided": false
        }
      ],
      "comment": null,
      "isObservation": true,
      "conceptUIConfig": [],
      "uniqueId": "observation_51",
      "erroneousValue": null,
      "conceptSetName": "Treatment Initiation Template",
      "voided": false
    }
  ],
  "encounterTypeUuid": "22dffad3-1a3c-4fc2-8207-a48086675e02"
}
