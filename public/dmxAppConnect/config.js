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
          "name": "$index",
          "type": "number"
        },
        {
          "name": "$key",
          "type": "text"
        },
        {
          "name": "$value",
          "type": "object"
        },
        {
          "type": "text",
          "name": "key"
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
          "name": "email"
        },
        {
          "type": "date",
          "name": "joinDate"
        },
        {
          "type": "text",
          "name": "imageName"
        },
        {
          "type": "text",
          "name": "name"
        }
      ],
      "outputType": "array"
    },
    "arr1": {
      "meta": null,
      "outputType": "text"
    }
  }
});
