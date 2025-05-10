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
    }
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
  }
});
