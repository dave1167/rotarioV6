dmx.config({
  "login": {
    "sessionStorage": [
      {
        "type": "text",
        "name": "tenantId"
      },
      {
        "type": "number",
        "name": "userId"
      },
      {
        "type": "number",
        "name": "rotaId"
      }
    ]
  },
  "CreateUser": {
    "createUserForm": {
      "first_name": {
        "type": "text"
      },
      "last_name": {
        "type": "text"
      },
      "username": {
        "type": "text"
      },
      "email": {
        "type": "text"
      },
      "password": {
        "type": "text"
      }
    },
    "checkUsername": {
      "exists": {
        "type": "boolean"
      }
    },
    "password_check": {
      "score": {
        "type": "number"
      },
      "length": {
        "type": "boolean"
      },
      "hasNumber": {
        "type": "boolean"
      },
      "hasSpecial": {
        "type": "boolean"
      },
      "hasUpper": {
        "type": "boolean"
      },
      "hasLower": {
        "type": "boolean"
      }
    },
    "checkEmail": {
      "exists": {
        "type": "boolean"
      }
    }
  },
  "user_list": {
    "query": [
      {
        "type": "text",
        "name": "sort"
      },
      {
        "type": "text",
        "name": "dir"
      }
    ],
    "data_view1": {
      "meta": [
        {
          "name": "varFName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varLName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varEmail",
          "type": "text",
          "sub": []
        },
        {
          "name": "varJoinDate",
          "type": "text",
          "sub": []
        },
        {
          "name": "varRole",
          "type": "text",
          "sub": []
        },
        {
          "name": "varImage",
          "type": "text",
          "sub": []
        }
      ],
      "outputType": "array"
    },
    "arr1": {
      "meta": [
        {
          "name": "varFName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varLName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varEmail",
          "type": "text",
          "sub": []
        },
        {
          "name": "varJoinDate",
          "type": "text",
          "sub": []
        },
        {
          "name": "varRole",
          "type": "text",
          "sub": []
        },
        {
          "name": "varImage",
          "type": "text",
          "sub": []
        },
        {
          "name": "daveArr",
          "type": "text",
          "sub": []
        }
      ],
      "outputType": "array"
    },
    "dsUsers": [
      {
        "name": "FirstName",
        "type": "text"
      },
      {
        "name": "LastName",
        "type": "text"
      },
      {
        "name": "varFName",
        "type": "text"
      },
      {
        "name": "varLName",
        "type": "text"
      },
      {
        "name": "Email",
        "type": "text"
      },
      {
        "name": "JoinDate",
        "type": "text"
      },
      {
        "name": "Role",
        "type": "text"
      },
      {
        "name": "Image",
        "type": "text"
      },
      {
        "name": "id",
        "type": "text"
      }
    ],
    "localdb_users": [
      {
        "name": "FirstName",
        "type": "text"
      },
      {
        "name": "LastName",
        "type": "text"
      },
      {
        "name": "Email",
        "type": "text"
      },
      {
        "name": "JoinDate",
        "type": "text"
      },
      {
        "name": "Role",
        "type": "text"
      },
      {
        "name": "Image",
        "type": "text"
      }
    ],
    "usersDB": [
      {
        "name": "id",
        "type": "number",
        "primary": true,
        "autoIncrement": true
      },
      {
        "name": "FirstName",
        "type": "text",
        "index": true
      },
      {
        "name": "LastName",
        "type": "text",
        "index": true
      },
      {
        "name": "Email",
        "type": "text",
        "index": true,
        "unique": true
      },
      {
        "name": "JoinDate",
        "type": "text"
      },
      {
        "name": "Role",
        "type": "text",
        "index": true
      },
      {
        "name": "Image",
        "type": "text"
      }
    ],
    "datastore1": [
      {
        "type": "text",
        "name": "varFName"
      }
    ],
    "dbUser": [
      {
        "type": "text",
        "name": "varFName"
      },
      {
        "type": "text",
        "name": "varLName"
      },
      {
        "type": "text",
        "name": "varEmail"
      },
      {
        "type": "text",
        "name": "varJoinDate"
      }
    ],
    "dvUsers": {
      "meta": [],
      "outputType": "boolean"
    },
    "dvNonActive": {
      "meta": [
        {
          "type": "text",
          "name": "fName"
        },
        {
          "type": "text",
          "name": "lName"
        },
        {
          "type": "date",
          "name": "joinDate"
        },
        {
          "type": "text",
          "name": "key"
        },
        {
          "type": "text",
          "name": "roleName"
        },
        {
          "type": "text",
          "name": "imageName"
        },
        {
          "type": "text",
          "name": "email"
        },
        {
          "type": "number",
          "name": "userId"
        },
        {
          "type": "boolean",
          "name": "verified"
        },
        {
          "type": "boolean",
          "name": "active"
        }
      ],
      "outputType": "array"
    }
  },
  "encrypt": {
    "sessionStorage": [
      {
        "type": "text",
        "name": "encrypt"
      }
    ]
  },
  "dashboard": {
    "data_view1": {
      "meta": [
        {
          "name": "tntId",
          "type": "number",
          "sub": []
        },
        {
          "name": "roleId",
          "type": "number",
          "sub": []
        },
        {
          "name": "userId",
          "type": "number",
          "sub": []
        },
        {
          "name": "rotaId",
          "type": "number",
          "sub": []
        },
        {
          "name": "qryHeadTen",
          "type": "object",
          "sub": [
            {
              "type": "text",
              "name": "tenantDesc"
            }
          ]
        },
        {
          "name": "qryHeadRota",
          "type": "object",
          "sub": [
            {
              "type": "number",
              "name": "tentantId"
            },
            {
              "type": "text",
              "name": "rotaDesc"
            }
          ]
        }
      ],
      "outputType": "object"
    },
    "var1": {
      "meta": null,
      "outputType": "number"
    }
  },
  "test": {
    "query": [
      {
        "type": "text",
        "name": "sort"
      },
      {
        "type": "text",
        "name": "dir"
      }
    ],
    "data_view1": {
      "meta": [
        {
          "name": "varId",
          "type": "text",
          "sub": []
        },
        {
          "name": "varFName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varLName",
          "type": "text",
          "sub": []
        },
        {
          "name": "varEmail",
          "type": "text",
          "sub": []
        },
        {
          "name": "varJoinDate",
          "type": "text",
          "sub": []
        },
        {
          "name": "varRole",
          "type": "text",
          "sub": []
        },
        {
          "name": "varImage",
          "type": "text",
          "sub": []
        }
      ],
      "outputType": "array"
    },
    "sessionStorage": [
      {
        "type": "text",
        "name": "evId"
      }
    ]
  },
  "user_registration": {
    "cookies": [
      {
        "type": "number",
        "name": "fstTime"
      }
    ]
  },
  "login2": {
    "cookies": [
      {
        "type": "number",
        "name": "fstTmPrfl"
      }
    ]
  },
  "event_list_admin": {
    "repeat1": {
      "meta": [
        {
          "type": "number",
          "name": "eventId"
        },
        {
          "type": "text",
          "name": "eventName"
        },
        {
          "type": "date",
          "name": "eventDate"
        },
        {
          "type": "number",
          "name": "modifiedBy"
        },
        {
          "type": "number",
          "name": "numvols"
        },
        {
          "type": "number",
          "name": "weighting"
        },
        {
          "type": "number",
          "name": "tenantId"
        },
        {
          "type": "number",
          "name": "rotaId"
        }
      ],
      "outputType": "array"
    },
    "sessionStorage": [
      {
        "type": "number",
        "name": "evId"
      },
      {
        "type": "number",
        "name": "statusId"
      }
    ],
    "data_detail1": {
      "meta": [
        {
          "type": "number",
          "name": "eventId"
        },
        {
          "type": "text",
          "name": "eventName"
        },
        {
          "type": "text",
          "name": "location"
        },
        {
          "type": "text",
          "name": "venueDesc"
        },
        {
          "type": "date",
          "name": "eventDate"
        },
        {
          "type": "time",
          "name": "eventStrtTime"
        },
        {
          "type": "number",
          "name": "numvols"
        },
        {
          "type": "number",
          "name": "weighting"
        },
        {
          "type": "number",
          "name": "volArrival"
        },
        {
          "type": "number",
          "name": "venue"
        },
        {
          "type": "boolean",
          "name": "published"
        },
        {
          "type": "date",
          "name": "publishDate"
        }
      ],
      "outputType": "object"
    },
    "data_view1": {
      "meta": [],
      "outputType": "array"
    },
    "dvEvents1": {
      "meta": [
        {
          "name": "varImage",
          "type": "text",
          "sub": []
        },
        {
          "name": "decFname",
          "type": "text",
          "sub": []
        },
        {
          "name": "regDate",
          "type": "text",
          "sub": []
        },
        {
          "name": "decLname",
          "type": "text",
          "sub": []
        },
        {
          "name": "status",
          "type": "text",
          "sub": []
        }
      ],
      "outputType": "array"
    },
    "data_detail2": {
      "meta": [
        {
          "type": "number",
          "name": "eventId"
        },
        {
          "type": "text",
          "name": "eventName"
        },
        {
          "type": "date",
          "name": "eventDate"
        },
        {
          "type": "number",
          "name": "modifiedBy"
        },
        {
          "type": "number",
          "name": "numvols"
        },
        {
          "type": "number",
          "name": "weighting"
        },
        {
          "type": "number",
          "name": "tenantId"
        },
        {
          "type": "number",
          "name": "rotaId"
        },
        {
          "type": "text",
          "name": "location"
        },
        {
          "type": "text",
          "name": "venueDesc"
        },
        {
          "type": "time",
          "name": "eventStrtTime"
        },
        {
          "type": "boolean",
          "name": "published"
        }
      ],
      "outputType": "array"
    }
  },
  "edit_event": {
    "sessionStorage": [
      {
        "type": "number",
        "name": "evId"
      }
    ]
  },
  "event_list2": {
    "repeat1": {
      "meta": [
        {
          "type": "text",
          "name": "eventName"
        },
        {
          "type": "date",
          "name": "eventDate"
        },
        {
          "type": "time",
          "name": "eventStrtTime"
        },
        {
          "type": "number",
          "name": "modifiedBy"
        },
        {
          "type": "datetime",
          "name": "modifiedDate"
        },
        {
          "type": "number",
          "name": "numvols"
        },
        {
          "type": "number",
          "name": "weighting"
        },
        {
          "type": "number",
          "name": "tenantId"
        },
        {
          "type": "number",
          "name": "rotaId"
        },
        {
          "type": "number",
          "name": "location"
        },
        {
          "type": "number",
          "name": "venue"
        },
        {
          "type": "boolean",
          "name": "published"
        },
        {
          "type": "number",
          "name": "volArrival"
        },
        {
          "type": "date",
          "name": "publishDate"
        }
      ],
      "outputType": "array"
    },
    "data_detail1": {
      "meta": [
        {
          "type": "number",
          "name": "eventId"
        },
        {
          "type": "text",
          "name": "eventName"
        },
        {
          "type": "date",
          "name": "eventDate"
        },
        {
          "type": "time",
          "name": "eventStrtTime"
        },
        {
          "type": "number",
          "name": "modifiedBy"
        },
        {
          "type": "datetime",
          "name": "modifiedDate"
        },
        {
          "type": "number",
          "name": "numvols"
        },
        {
          "type": "number",
          "name": "weighting"
        },
        {
          "type": "number",
          "name": "tenantId"
        },
        {
          "type": "number",
          "name": "rotaId"
        },
        {
          "type": "number",
          "name": "location"
        },
        {
          "type": "number",
          "name": "venue"
        },
        {
          "type": "boolean",
          "name": "published"
        },
        {
          "type": "number",
          "name": "volArrival"
        },
        {
          "type": "date",
          "name": "publishDate"
        },
        {
          "type": "text",
          "name": "venueDesc"
        }
      ],
      "outputType": "array"
    },
    "repeat2": {
      "meta": null,
      "outputType": "text"
    },
    "flowSaveChanges": {
      "meta": [
        {
          "name": "repeat",
          "type": "array"
        }
      ],
      "local": [
        {
          "sub": [
            {
              "type": "text",
              "metaData": {
                "alertMessage": {
                  "meta": null,
                  "outputType": "text"
                }
              }
            }
          ],
          "name": "repeat",
          "type": "array",
          "metaData": {}
        }
      ]
    },
    "flow1": {
      "meta": [
        {
          "sub": [
            {
              "name": "eventId",
              "type": "number"
            },
            {
              "name": "userId",
              "type": "number"
            },
            {
              "name": "fName",
              "type": "text"
            },
            {
              "name": "lName",
              "type": "text"
            },
            {
              "name": "status",
              "type": "text"
            },
            {
              "name": "key",
              "type": "text"
            },
            {
              "name": "desc",
              "type": "text"
            },
            {
              "name": "registeredDate",
              "type": "date"
            },
            {
              "name": "imageName",
              "type": "text"
            },
            {
              "name": "evVolId",
              "type": "number"
            }
          ],
          "name": "repeat",
          "type": "array"
        }
      ],
      "local": [
        {
          "type": "text",
          "metaData": {}
        },
        {
          "name": "repeat",
          "type": "array",
          "metaData": {
            "repeatExpression": {
              "meta": [
                {
                  "type": "number",
                  "name": "eventId"
                },
                {
                  "type": "number",
                  "name": "userId"
                },
                {
                  "type": "text",
                  "name": "fName"
                },
                {
                  "type": "text",
                  "name": "lName"
                },
                {
                  "type": "text",
                  "name": "status"
                },
                {
                  "type": "text",
                  "name": "key"
                },
                {
                  "type": "text",
                  "name": "desc"
                },
                {
                  "type": "date",
                  "name": "registeredDate"
                },
                {
                  "type": "text",
                  "name": "imageName"
                },
                {
                  "type": "number",
                  "name": "evVolId"
                }
              ],
              "outputType": "array"
            }
          }
        }
      ]
    },
    "selectedOptions": {
      "meta": null,
      "outputType": "array"
    },
    "localStorage": [
      {
        "type": "key_array",
        "name": "stKeyArr"
      },
      {
        "type": "array",
        "name": "new"
      }
    ]
  }
});
