const baseUrl = Cypress.env("JUICESHOP_URL");
const endpoints = Cypress.env("endpoints");

Cypress.Commands.add("requestWhoAmI", (token) => {
  cy.setCookie("token", token);
  cy.request({
    method: "GET",
    url: `${baseUrl}${endpoints.api.whoami}`,
    failOnStatusCode: false,
  }).then((whoamiResponse) => {
    cy.log("WhoAmI response : ", whoamiResponse);
    return cy.wrap(whoamiResponse);
  });
});

Cypress.Commands.add("requestLogin", (email, password) => {
  cy.request({
    method: "POST",
    url: `${baseUrl}${endpoints.api.login}`,
    body: { email, password },
    failOnStatusCode: false,
  }).then((loginResponse) => {
    cy.log("Login response : ", loginResponse);
    return cy.wrap(loginResponse);
  });
});

Cypress.Commands.add("requestRegister", (email, password, question, answer) => {
  cy.request({
    method: "POST",
    url: `${baseUrl}${endpoints.api.register}`,
    body: {
      email: email,
      password: password,
      passwordRepeat: password,
      securityQuestion: {
        id: question,
      },
      securityAnswer: answer,
    },
    failOnStatusCode: false,
  }).then((registerResponse) => {
    cy.log("Register response : ", registerResponse);
    return cy.wrap(registerResponse);
  });
});
