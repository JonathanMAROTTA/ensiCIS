const baseUrl = Cypress.env("JUICESHOP_URL");
const endpoints = Cypress.env("endpoints");
const selectors = Cypress.env("selectors");

describe("Improper Input Validation", () => {
  beforeEach(() => {
    cy.initializeUI();
  });

  it("Soumettre un avis avec une note de zéro étoile en manipulant la requête réseau", () => {
    // Fill form
    cy.visit(`${baseUrl}${endpoints.ui.contact}`);
    cy.get(selectors.contact.comment).type(
      "Ceci est un avis de test avec zéro étoile."
    );
    cy.fillContactRatingValue(5);
    cy.fillContactCaptcha();

    // Intercept the request
    cy.intercept("POST", `${baseUrl}${endpoints.api.feedback}`, (req) => {
      req.body.rating = 0;
    }).as("postFeedback");
    cy.get(selectors.contact.submit).click({ force: true });

    // Check the response
    cy.wait("@postFeedback").then((interception) => {
      expect(interception.response.statusCode).to.eq(201);
      expect(interception.request.body.rating).to.eq(0);
    });
  });

  it("Créer un utilisateur sans email ni mot de passe", () => {
    // Fill form
    cy.visit(`${baseUrl}${endpoints.ui.register}`);
    cy.fillRegisterForm(
      "placeholder@mail.com",
      "placeholder",
      "What",
      "placeholder"
    );

    // Intercept the request
    cy.intercept("POST", `${baseUrl}${endpoints.api.register}`).as(
      "registerUser"
    );
    cy.get(selectors.register.submit).click();

    // Check the response
    cy.wait("@registerUser").then((interception) => {
      const originalRequest = interception.request.body;
      delete originalRequest.email;
      delete originalRequest.password;

      // Remake
      cy.request({
        method: "POST",
        url: `${baseUrl}${endpoints.api.register}`,
        body: originalRequest,
      }).then((response) => {
        expect(response.status).to.eq(201);
        cy.log("Utilisateur créé sans email ni mot de passe :", response.body);
      });
    });
  });
});
