{
	"contents": {
		"dd160714-c8a2-44a1-95d0-5d8ded9aa943": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "travelandexpenseapproval",
			"subject": "Travel and Expense Approval for ${context.employeeName}",
			"businessKey": "${context.requestId}",
			"name": "TravelAndExpenseApproval",
			"documentation": "Travel and Expense Approval Process",
			"lastIds": "0bc68de7-d9c6-4091-928b-1284b0756c58",
			"events": {
				"7e47ad08-9ead-4a48-98d1-dcfa93d8048f": {
					"name": "Start"
				},
				"e7a9eef3-3e79-4bf0-8cf0-3ea2e51e140d": {
					"name": "End"
				}
			},
			"activities": {
				"b6d253f9-dc06-4e03-8769-7a6c2073a949": {
					"name": "Travel Expense Approval Task"
				}
			},
			"sequenceFlows": {
				"2437dba1-dcae-4f52-8ba8-d719c8c9f8c1": {
					"name": "SequenceFlow1"
				},
				"9e725794-aa1d-49fb-8d03-4e0dbe0700ec": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"ba711a24-589f-4af0-96ce-3ae393e7d57b": {}
			}
		},
		"7e47ad08-9ead-4a48-98d1-dcfa93d8048f": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start",
			"sampleContextRefs": {
				"ad757ef7-c90e-4b24-bbb6-d90cdb5fc8d8": {}
			}
		},
		"e7a9eef3-3e79-4bf0-8cf0-3ea2e51e140d": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"b6d253f9-dc06-4e03-8769-7a6c2073a949": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Travel and Expense Approval for ${context.employeeName}",
			"description": "Approval of Travel and Expense, for ${context.employeeName} for a value of ${context.expenseValue} for trip ${context.tripDetails}.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P000057",
			"formReference": "/forms/TravelAndExpenseApproval/TravelExpenseApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "travelexpenseapproval"
			}, {
				"key": "formRevision",
				"value": "dev"
			}],
			"customAttributes": [{
				"id": "tripDetails",
				"label": "Trip Details",
				"type": "string",
				"value": "${context.tripDetails}"
			}, {
				"id": "expenseValue",
				"label": "Expense Value",
				"type": "string",
				"value": "${context.expenseValue}"
			}, {
				"id": "employeeName",
				"label": "Employee Name",
				"type": "string",
				"value": "${context.employeeName}"
			}, {
				"id": "employeeId",
				"label": "Employee Id",
				"type": "string",
				"value": "${context.employeeId}"
			}, {
				"id": "requestId",
				"label": "Request Id",
				"type": "string",
				"value": "${context.requestId}"
			}],
			"id": "usertask1",
			"name": "Travel Expense Approval Task",
			"dueDateRef": "7d6d88cf-6efd-45c0-8774-13eb45645bd9"
		},
		"2437dba1-dcae-4f52-8ba8-d719c8c9f8c1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "7e47ad08-9ead-4a48-98d1-dcfa93d8048f",
			"targetRef": "b6d253f9-dc06-4e03-8769-7a6c2073a949"
		},
		"9e725794-aa1d-49fb-8d03-4e0dbe0700ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b6d253f9-dc06-4e03-8769-7a6c2073a949",
			"targetRef": "e7a9eef3-3e79-4bf0-8cf0-3ea2e51e140d"
		},
		"ba711a24-589f-4af0-96ce-3ae393e7d57b": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"ba8fffc6-c0ba-468d-80ef-e19877984887": {},
				"35dd42be-184a-4770-82c2-cc2f36166367": {},
				"11335aad-8a16-42c2-9938-d0d4f1f5465e": {},
				"dd74eae7-75e1-4c26-b993-0a1460eaa375": {},
				"9cfb45ce-1782-4a7a-92a8-d1ec8843951f": {}
			}
		},
		"ad757ef7-c90e-4b24-bbb6-d90cdb5fc8d8": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/TravelAndExpenseApproval/TravelAndExpenseInitalContext.json",
			"id": "default-start-context"
		},
		"ba8fffc6-c0ba-468d-80ef-e19877984887": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "7e47ad08-9ead-4a48-98d1-dcfa93d8048f"
		},
		"35dd42be-184a-4770-82c2-cc2f36166367": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 560,
			"y": 346,
			"width": 35,
			"height": 35,
			"object": "e7a9eef3-3e79-4bf0-8cf0-3ea2e51e140d"
		},
		"11335aad-8a16-42c2-9938-d0d4f1f5465e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 214.3707275390625,116 214.3707275390625,239.75 346.241455078125,239.75",
			"sourceSymbol": "ba8fffc6-c0ba-468d-80ef-e19877984887",
			"targetSymbol": "dd74eae7-75e1-4c26-b993-0a1460eaa375",
			"object": "2437dba1-dcae-4f52-8ba8-d719c8c9f8c1"
		},
		"dd74eae7-75e1-4c26-b993-0a1460eaa375": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 296.241455078125,
			"y": 209.75,
			"width": 100,
			"height": 60,
			"object": "b6d253f9-dc06-4e03-8769-7a6c2073a949"
		},
		"9cfb45ce-1782-4a7a-92a8-d1ec8843951f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "346.241455078125,239.75 478.3707275390625,239.75 478.3707275390625,363.5 577.5,363.5",
			"sourceSymbol": "dd74eae7-75e1-4c26-b993-0a1460eaa375",
			"targetSymbol": "35dd42be-184a-4770-82c2-cc2f36166367",
			"object": "9e725794-aa1d-49fb-8d03-4e0dbe0700ec"
		},
		"0bc68de7-d9c6-4091-928b-1284b0756c58": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"7d6d88cf-6efd-45c0-8774-13eb45645bd9": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT5H",
			"id": "timereventdefinition1"
		}
	}
}