const baseUrl = Cypress.env("JUICESHOP_URL");

describe("Tests des commandes d'authentification et d'inscription", () => {
  const adminEmail = "admin@juice-sh.op";
  const adminPassword = "admin123";
  const clientEmail = "mc.safesearch@juice-sh.op";
  const clientPassword = "Mr. N00dles";

  context("Tests des commandes API", () => {
    it("Devrait connecter un utilisateur et vérifier l'authentification via l'API", () => {
      cy.loginAPI(clientEmail, clientPassword);
      cy.verifyLoginByAPI(clientEmail);
    });

    it("Devrait connecter un administrateur et vérifier l'authentification via l'API", () => {
      cy.loginAPI_asAdmin();
      cy.verifyLoginByAPI(adminEmail);
    });

    it("Devrait inscrire et vérifier un nouvel utilisateur via l'API", () => {
      const email = `test${Date.now()}@example.com`;
      const password = "Test1234!";
      const questionId = 1;
      const answer = "Ma réponse";

      cy.registerAPI(email, password, questionId, answer);
      cy.verifyRegisterByAPI(email, password);
    });

    it("Devrait déconnecter un utilisateur via l'API", () => {
      cy.loginAPI_asClient();
      cy.logoutAPI();
      cy.request({
        url: `${baseUrl}/rest/user/whoami`,
      }).then((response) => {
        expect(response.status).to.eq(200);
        expect(response.body).to.have.property("user");
        expect(response.body.user).to.be.empty;
      });
    });
  });

  context("Tests des commandes UI", () => {
    beforeEach(() => {
      cy.initializeUI();
    });

    it("Devrait connecter un utilisateur et vérifier l'authentification via l'interface utilisateur", () => {
      cy.loginUI(clientEmail, clientPassword);
      cy.verifyLoginByUI(clientEmail);
    });

    it("Devrait connecter un administrateur et vérifier l'authentification via l'interface utilisateur", () => {
      cy.loginUI_asAdmin();
      cy.verifyLoginByUI(adminEmail);
    });

    it("Devrait inscrire et vérifier un nouvel utilisateur via l'interface utilisateur", () => {
      const email = `test${Date.now()}@example.com`;
      const password = "Test1234!";
      const question = "pet";
      const answer = "NOOOOOODLES";

      cy.registerUI(email, password, question, answer);
      cy.verifyRegisterByUI(email, password);
    });

    it("Devrait déconnecter un utilisateur via l'interface utilisateur", () => {
      cy.loginUI_asClient();
      cy.logoutUI();
      cy.get("#navbarAccount").should("exist").click();
      cy.get("#navbarLoginButton").should("be.visible");
    });
  });
});
