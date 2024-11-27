const baseUrl = Cypress.env("JUICESHOP_URL");
const selectors = Cypress.env("selectors");
const endpoints = Cypress.env("endpoints");

/*
 * Commandes pour l'API
 */

Cypress.Commands.add("loginAPI", (email, password) => {
  cy.requestLogin(email, password).then((response) => {
    expect(response.status).to.eq(200);
    expect(response.body).to.have.property("authentication");
    expect(response.body.authentication).to.have.property("token");

    window.localStorage.setItem("token", response.body.authentication.token);
  });
});
Cypress.Commands.add("loginAPI_asAdmin", () => {
  cy.loginAPI("admin@juice-sh.op", "admin123");
});
Cypress.Commands.add("loginAPI_asClient", () => {
  cy.loginAPI("mc.safesearch@juice-sh.op", "Mr. N00dles");
});

Cypress.Commands.add("registerAPI", (email, password, question, answer) => {
  cy.requestRegister(email, password, question, answer).then((response) => {
    expect(response.status).to.eq(201);
  });
});

Cypress.Commands.add("logoutAPI", () => {
  window.localStorage.removeItem("token");
});

/*
 * Commandes pour l'interface utilisateur
 */

Cypress.Commands.add("loginUI", (email, password) => {
  cy.initializeUI();
  cy.visit(`${baseUrl}${endpoints.ui.login}`);
  cy.fillLoginForm(email, password);
  cy.get(selectors.login.submit).click();
});

Cypress.Commands.add("loginUI_asAdmin", () => {
  cy.loginUI("admin@juice-sh.op", "admin123");
});
Cypress.Commands.add("loginUI_asClient", () => {
  cy.loginUI("mc.safesearch@juice-sh.op", "Mr. N00dles");
});

Cypress.Commands.add("registerUI", (email, password, question, answer) => {
  cy.initializeUI();
  cy.visit(`${baseUrl}${endpoints.ui.register}`);
  cy.fillRegisterForm(email, password, question, answer);
  cy.get(selectors.register.submit).click();
});

Cypress.Commands.add("logoutUI", () => {
  cy.initializeUI();
  cy.visit(`${baseUrl}${endpoints.ui.home}`);
  cy.get(selectors.navbar.account).click();
  cy.get(selectors.navbar.logout).click();
});
