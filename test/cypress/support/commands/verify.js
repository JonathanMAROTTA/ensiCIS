const baseUrl = Cypress.env("JUICESHOP_URL");
const selectors = Cypress.env("selectors");

Cypress.Commands.add("verifyLoginByUI", (email) => {
  cy.initializeUI();
  cy.visit(`${baseUrl}/`);
  cy.get(selectors.navbar.account).click();
  cy.get(selectors.navbar.profile).click();
  cy.get(selectors.profile.email).should("have.value", email);
});

Cypress.Commands.add("verifyLoginByAPI", (email) => {
  const token = window.localStorage.getItem("token");
  expect(token).to.not.be.null;

  cy.requestWhoAmI(token).then((response) => {
    expect(response.status).to.eq(200);
    expect(response.body).to.have.property("user");
    expect(response.body.user).to.have.property("email");
    expect(response.body.user.email).to.eq(email);
  });
});

Cypress.Commands.add("verifyRegisterByUI", (email, password) => {
  cy.initializeUI();
  cy.loginUI(email, password);
  cy.wait(2000);
  cy.verifyLoginByUI(email);
  cy.logoutUI();
});

Cypress.Commands.add("verifyRegisterByAPI", (email, password) => {
  cy.loginAPI(email, password);
  cy.verifyLoginByAPI(email);
  cy.logoutAPI();
});
