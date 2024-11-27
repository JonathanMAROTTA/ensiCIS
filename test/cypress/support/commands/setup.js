const baseUrl = Cypress.env("JUICESHOP_URL");
const selectors = Cypress.env("selectors");

let isUIInitialized;
beforeEach(() => {
  isUIInitialized = false;
});

Cypress.Commands.add("initializeUI", () => {
  if (isUIInitialized) {
    cy.log("UI déjà initialisée. Ignoré.");
    return;
  }

  cy.log("Initialisation de l'interface utilisateur...");
  cy.visit(`${baseUrl}/`);
  cy.get(selectors.popups.welcome, { timeout: 5000 }).click({ force: true });
  cy.get(selectors.popups.cookies, { timeout: 5000 }).click({ force: true });

  isUIInitialized = true;
});
