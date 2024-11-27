const baseUrl = Cypress.env("JUICESHOP_URL");
const endpoints = Cypress.env("endpoints");
const selectors = Cypress.env("selectors");

describe("Unauthorized URL access", () => {
  context("Access by API request", () => {
    it("Access to metrics page", () => {
      cy.request(`${baseUrl}${endpoints.ui.unauthorized.metrics}`).then(
        (response) => {
          expect(response.status).to.eq(200);
          const expectedContent =
            'process_virtual_memory_bytes{app="juiceshop"}';
          expect(response.body).to.include(expectedContent);
          cy.writeFile("cypress/results/files/metrics", response.body);
        }
      );
    });

    it("Access to ftp page", () => {
      cy.request(`${baseUrl}${endpoints.ui.unauthorized.ftp}`).then(
        (response) => {
          expect(response.status).to.eq(200);
          const expectedContent = "acquisitions.md";
          expect(response.body).to.include(expectedContent);
          cy.writeFile("cypress/results/files/ftp", response.body);
        }
      );
    });

    it("Access to security policy", () => {
      cy.request(`${baseUrl}${endpoints.ui.unauthorized.securityPolicy}`).then(
        (response) => {
          expect(response.status).to.eq(200);
          const expectedContent =
            "https://keybase.io/bkimminich/pgp_keys.asc?fingerprint=19c01cb7157e4645e9e2c863062a85a8cbfbdcda";
          expect(response.body).to.include(expectedContent);
          cy.writeFile("cypress/results/files/security-policy", response.body);
        }
      );
    });
  });

  context("Access by UI request", () => {
    it("Access to score board page", () => {
      cy.visit(`${baseUrl}${endpoints.ui.unauthorized.scoreBoard}`);
      cy.get(selectors.scoreBoard.anyGroup).should("exist");
    });

    it("Access to web3 sandbox", () => {
      cy.visit(`${baseUrl}${endpoints.ui.unauthorized.web3Sandbox}`);
      cy.get(selectors.webSandbox.webIDE).should("exist");
    });
  });
});
