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
    }
  }
});
