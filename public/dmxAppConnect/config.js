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
  }
});
